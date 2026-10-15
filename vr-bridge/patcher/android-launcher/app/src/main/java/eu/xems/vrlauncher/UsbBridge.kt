package eu.xems.vrlauncher

import android.content.Context
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import java.io.DataInputStream
import java.io.IOException
import java.io.OutputStream
import java.net.InetAddress
import java.net.ServerSocket
import java.net.Socket

/**
 * Headset on the cable → Termux's adb reaches it as `127.0.0.1:15555`, no Wi-Fi at all: adb over TCP and over USB
 * are the same messages, so this only relays them (TCP ⇄ USB bulk). Termux's adb does its own handshake with the
 * key the headset already allowed (the app's, via ADB_VENDOR_KEYS). One client at a time: a new adb connection
 * replaces the previous one (adb's server keeps its socket open for good, so a leftover of a dead server must
 * never block the next one); ends with [stop] or when the cable comes out.
 */
class UsbBridge(private val context: Context, private val device: UsbDevice) : Runnable {

    @Volatile private var server: ServerSocket? = null
    /** The relay listens (false once it ended or could not take its port). */
    @Volatile var alive = true
        private set
    @Volatile private var current: Socket? = null
    private val usbLock = Any()

    fun start() = Thread(this, "xems-usb-bridge").start()

    fun stop() {
        alive = false
        runCatching { server?.close() }
        runCatching { current?.close() }
    }

    override fun run() {
        var s: ServerSocket? = null
        for (attempt in 1..10) {                    // the previous relay's port may take a moment to come free
            s = try {
                ServerSocket().apply { reuseAddress = true; bind(java.net.InetSocketAddress(InetAddress.getByName(HOST), PORT), 8) }
            } catch (e: IOException) {
                null
            }
            if (s != null) break
            Thread.sleep(300)
        }
        if (s == null) {
            alive = false
            return
        }
        server = s
        while (!s.isClosed) {
            val c = try { s.accept() } catch (e: IOException) { break }
            runCatching { current?.close() }        // the previous adb connection ends; its relay lets go of USB
            current = c
            Thread(Client(c), "xems-usb-bridge-client").start()
        }
        runCatching { s.close() }
        alive = false
    }

    /** One adb connection; waits for the previous one to release the USB interface. */
    private inner class Client(private val sock: Socket) : Runnable {
        override fun run() {
            synchronized(usbLock) {
                if (sock.isClosed) return
                serve(sock)
            }
        }
    }

    /** Relays one Termux adb connection; false = the headset can no longer be opened. */
    private fun serve(sock: Socket): Boolean {
        val usb = context.getSystemService(UsbManager::class.java)
        val iface = UsbAdb.adbInterface(device)
        var conn = if (iface != null) usb.openDevice(device) else null
        // The previous relay's last read may still hold the interface for up to a second.
        var tries = 0
        while (iface != null && conn != null && !conn.claimInterface(iface, true) && ++tries < 6) Thread.sleep(500)
        if (iface == null || conn == null || tries >= 6) {
            conn?.close()
            runCatching { sock.close() }
            return false
        }
        var back: Thread? = null
        try {
            sock.tcpNoDelay = true
            val io = UsbAdb.Io(conn, iface)
            back = Thread(ToTcp(context, device.deviceId, io, sock), "xems-usb-bridge-in")
            back.start()
            val inp = DataInputStream(sock.getInputStream())
            val header = ByteArray(AdbProtocol.HEADER)
            while (true) {
                inp.readFully(header)
                val h = AdbProtocol.parseHeader(header) ?: break
                if (h[3] < 0 || h[3] > AdbProtocol.MAX_RELAY) break
                val payload = ByteArray(h[3])
                inp.readFully(payload)
                io.sendRaw(header.copyOf(), payload)
            }
        } catch (e: IOException) {
            // Termux's adb hung up or the cable came out.
        } finally {
            runCatching { sock.close() }
            back?.join(3_000)                       // its read must be over before the interface goes back
            conn.releaseInterface(iface)
            conn.close()
        }
        return UsbAdb.findQuest(context)?.deviceId == device.deviceId
    }

    /** Headset → Termux. Ends when the socket closes (the other direction closes it) or USB fails. */
    private class ToTcp(
        private val context: Context, private val id: Int, private val io: UsbAdb.Io, private val sock: Socket,
    ) : Runnable {
        override fun run() {
            try {
                val out: OutputStream = sock.getOutputStream()
                while (!sock.isClosed) {
                    val m = io.receive(1_000)
                    if (m == null) {
                        // A timeout and a pulled cable look the same to bulkTransfer: ask whether it is still there.
                        if (UsbAdb.findQuest(context)?.deviceId != id) break
                        continue
                    }
                    out.write(AdbProtocol.header(m))
                    if (m.payload.isNotEmpty()) out.write(m.payload)
                    out.flush()
                }
            } catch (e: Exception) {
                // fall through: close so the reading side ends too
            }
            runCatching { sock.close() }
        }
    }

    companion object {
        const val HOST = "127.0.0.1"
        /** Outside adb's emulator scan range (5555–5585), so Termux's adb never probes it by itself. */
        const val PORT = 15555
        const val SERIAL = "$HOST:$PORT"
    }
}
