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
 * key the headset already allowed (the app's, via ADB_VENDOR_KEYS). One client at a time; ends with [stop] or
 * when the cable comes out.
 */
class UsbBridge(private val context: Context, private val device: UsbDevice) : Runnable {

    @Volatile private var server: ServerSocket? = null

    fun start() = Thread(this, "xems-usb-bridge").start()

    fun stop() {
        runCatching { server?.close() }
    }

    override fun run() {
        val s = try {
            ServerSocket(PORT, 1, InetAddress.getByName(HOST))
        } catch (e: IOException) {
            return
        }
        server = s
        while (!s.isClosed) {
            val c = try { s.accept() } catch (e: IOException) { break }
            if (!serve(c)) break                    // cable gone → no point waiting for the next client
        }
        runCatching { s.close() }
    }

    /** Relays one Termux adb connection; false = the headset can no longer be opened. */
    private fun serve(sock: Socket): Boolean {
        val usb = context.getSystemService(UsbManager::class.java)
        val iface = UsbAdb.adbInterface(device)
        val conn = if (iface != null) usb.openDevice(device) else null
        if (iface == null || conn == null || !conn.claimInterface(iface, true)) {
            conn?.close()
            runCatching { sock.close() }
            return false
        }
        try {
            sock.tcpNoDelay = true
            val io = UsbAdb.Io(conn, iface)
            val back = Thread(ToTcp(context, device.deviceId, io, sock), "xems-usb-bridge-in")
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
