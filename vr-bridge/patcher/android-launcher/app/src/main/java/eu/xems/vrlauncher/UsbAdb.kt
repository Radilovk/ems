package eu.xems.vrlauncher

import android.content.Context
import android.hardware.usb.UsbConstants
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbDeviceConnection
import android.hardware.usb.UsbEndpoint
import android.hardware.usb.UsbInterface
import android.hardware.usb.UsbManager
import android.hardware.usb.UsbRequest
import android.os.Build
import android.util.Base64
import java.io.IOException
import java.nio.ByteBuffer
import java.util.concurrent.TimeoutException
import java.security.KeyPair
import java.security.interfaces.RSAPublicKey

/**
 * Headset on the tablet's USB-C (OTG) → `adb tcpip 5555` without a PC, so the Wi-Fi search works again after a
 * headset reboot. Blocking: call from a worker thread. The key lives in the app's prefs; the first time the
 * headset asks *Allow USB debugging* for it ("Always allow" → never again).
 */
class UsbAdb(private val context: Context) {

    enum class Outcome { OK, NOT_ALLOWED, FAILED }
    class Result(val outcome: Outcome, val detail: String)

    /** Allow over the cable; then `adb tcpip [port]` when given (null = stay on the cable, see [UsbBridge]). */
    fun run(device: UsbDevice, port: Int? = null): Result {
        val usb = context.getSystemService(UsbManager::class.java)
        val iface = adbInterface(device) ?: return Result(Outcome.FAILED, "no adb interface")
        val conn = usb.openDevice(device) ?: return Result(Outcome.FAILED, "openDevice refused")
        try {
            if (!conn.claimInterface(iface, true)) return Result(Outcome.FAILED, "claimInterface refused")
            val io = Io(conn, iface)
            handshake(io)?.let { return it }
            return if (port == null) Result(Outcome.OK, "usb") else tcpip(io, port)
        } catch (e: IOException) {
            return Result(Outcome.FAILED, e.message ?: "usb io")
        } finally {
            conn.releaseInterface(iface)
            conn.close()
        }
    }

    /** null = connected; else why not. */
    private fun handshake(io: Io): Result? {
        val key = key(context)
        io.send(AdbProtocol.connect())
        var signed = false
        val until = System.currentTimeMillis() + ALLOW_WAIT_MS
        while (System.currentTimeMillis() < until) {
            val m = io.receive(2_000) ?: continue
            when {
                m.command == AdbProtocol.CNXN -> return null
                m.command == AdbProtocol.AUTH && m.arg0 == AdbProtocol.AUTH_TOKEN && !signed -> {
                    signed = true
                    io.send(AdbProtocol.Message(AdbProtocol.AUTH, AdbProtocol.AUTH_SIGNATURE, 0, AdbProtocol.sign(key, m.payload)))
                }
                m.command == AdbProtocol.AUTH && m.arg0 == AdbProtocol.AUTH_TOKEN -> {
                    // Our key is new to the headset → it shows "Allow USB debugging"; wait for the tap.
                    io.send(AdbProtocol.Message(AdbProtocol.AUTH, AdbProtocol.AUTH_RSAPUBLICKEY, 0,
                        AdbProtocol.publicKeyPayload(key.public as RSAPublicKey)))
                }
            }
        }
        return Result(Outcome.NOT_ALLOWED, "no answer to Allow USB debugging")
    }

    private fun tcpip(io: Io, port: Int): Result {
        val local = 1
        io.send(AdbProtocol.open(local, "tcpip:$port"))
        val reply = StringBuilder()
        val until = System.currentTimeMillis() + 5_000
        while (System.currentTimeMillis() < until) {
            val m = io.receive(1_000) ?: continue
            when (m.command) {
                AdbProtocol.WRTE -> {
                    reply.append(String(m.payload))
                    io.send(AdbProtocol.okay(local, m.arg0))
                    if (AdbProtocol.tcpipOk(reply.toString())) return Result(Outcome.OK, reply.toString().trim())
                }
                AdbProtocol.CLSE -> break
            }
        }
        // adbd may restart before the text arrives; an empty reply after CLSE is still a success.
        val text = reply.toString().trim()
        return if (text.isEmpty() || AdbProtocol.tcpipOk(text)) Result(Outcome.OK, text) else Result(Outcome.FAILED, text)
    }

    /** One USB bulk pipe pair. A read returns when `len` bytes arrived or a short packet ended the transfer. */
    interface Bulk {
        /** Bytes read into buf[0, len), or -1 on timeout / error. */
        fun read(buf: ByteArray, len: Int, timeoutMs: Int): Int
        /** Bytes written from data[off, off+len), or -1 on timeout / error; len 0 sends a zero-length packet. */
        fun write(data: ByteArray, off: Int, len: Int, timeoutMs: Int): Int
        /** The OUT endpoint's packet size (512 on USB 2, 1024 on USB 3). */
        val outPacket: Int get() = 512
    }

    /**
     * Reads go through a queued [UsbRequest] (API 26+): a read that times out stays queued and is picked up by the
     * next call, as adb's own host keeps its URBs queued. A timed-out bulkTransfer cancels its URB instead, and a
     * packet arriving at that moment is lost — during an install the headset mostly sends tiny OKAYs, one lost
     * OKAY and the host waits for it for good.
     */
    class UsbBulk(private val conn: UsbDeviceConnection, iface: UsbInterface) : Bulk {
        private val out: UsbEndpoint
        private val inp: UsbEndpoint
        private var req: UsbRequest? = null          // the queued read, kept across timeouts
        private var reqBuf: ByteBuffer? = null
        private var reqLen = 0

        init {
            val eps = (0 until iface.endpointCount).map { iface.getEndpoint(it) }
                .filter { it.type == UsbConstants.USB_ENDPOINT_XFER_BULK }
            out = eps.firstOrNull { it.direction == UsbConstants.USB_DIR_OUT } ?: throw IOException("no bulk out")
            inp = eps.firstOrNull { it.direction == UsbConstants.USB_DIR_IN } ?: throw IOException("no bulk in")
        }

        override val outPacket: Int get() = out.maxPacketSize.takeIf { it > 0 } ?: 512

        override fun read(buf: ByteArray, len: Int, timeoutMs: Int): Int {
            if (Build.VERSION.SDK_INT < 26) return conn.bulkTransfer(inp, buf, 0, len, timeoutMs)
            if (req != null && reqLen != len) {             // (never in practice: a timeout is retried with the same length)
                req?.cancel(); req?.close(); req = null
            }
            if (req == null) {
                val r = UsbRequest()
                if (!r.initialize(conn, inp)) { r.close(); return -1 }
                val b = ByteBuffer.allocate(len)
                if (!r.queue(b)) { r.close(); return -1 }
                req = r; reqBuf = b; reqLen = len
            }
            val done = try {
                if (timeoutMs <= 0) conn.requestWait() else conn.requestWait(timeoutMs.toLong())
            } catch (e: TimeoutException) {
                return -1                                     // still queued: nothing is lost
            } ?: return -1.also { drop() }
            if (done !== req) return -1.also { drop() }
            val b = reqBuf!!
            val n = b.position()
            System.arraycopy(b.array(), 0, buf, 0, n)
            done.close()
            req = null; reqBuf = null
            return n
        }

        private fun drop() {
            runCatching { req?.cancel(); req?.close() }
            req = null; reqBuf = null
        }

        override fun write(data: ByteArray, off: Int, len: Int, timeoutMs: Int) = conn.bulkTransfer(out, data, off, len, timeoutMs)
    }

    /**
     * adb messages over [Bulk]. Reads are EXACT, like libusb-based adb hosts: 24 bytes for the header, then exactly
     * the announced payload. A USB read only ends when its buffer is full or a short packet arrives, so a read
     * with a bigger buffer than the payload — when the payload is a multiple of 512 bytes, as most 64 KiB install
     * chunks are — never sees a short packet and swallows the next message's header: the stream is out of step and
     * adb drops the device ("device offline") in the middle of a big install.
     */
    class Io(private val bulk: Bulk) {
        constructor(conn: UsbDeviceConnection, iface: UsbInterface) : this(UsbBulk(conn, iface))

        private val head = ByteArray(AdbProtocol.HEADER)
        private val chunk = ByteArray(CHUNK)

        fun send(m: AdbProtocol.Message) = sendRaw(AdbProtocol.header(m), m.payload)

        /** Header as it came (e.g. from Termux's adb over the bridge) + payload, each its own transfer. */
        fun sendRaw(header: ByteArray, payload: ByteArray) {
            write(header)
            if (payload.isNotEmpty()) write(payload)
        }

        /**
         * One adb message part as one USB transfer (in ≤ 16 KiB requests), ended by a zero-length packet when its size
         * is a multiple of the packet size — exactly as adb's own hosts do (usb_linux / libusb "zero_mask"). adbd
         * reads in 16 KiB blocks and a block only ends when full or at a short packet: without the ZLP a 4096- or
         * 65 536-byte WRTE (what installs are made of) runs on into the next header, adbd stops with "received too many
         * bytes" and the install hangs with no word.
         */
        private fun write(data: ByteArray) {
            var off = 0
            while (off < data.size) {
                val n = bulk.write(data, off, minOf(CHUNK, data.size - off), WRITE_TIMEOUT_MS)
                if (n <= 0) throw IOException("usb write")
                off += n
            }
            if (data.isNotEmpty() && data.size % bulk.outPacket == 0) {
                if (bulk.write(data, 0, 0, WRITE_TIMEOUT_MS) < 0) throw IOException("usb zlp")
            }
        }

        /** null = nothing arrived within [timeoutMs]; a message is read whole or the stream is declared broken. */
        fun receive(timeoutMs: Int): AdbProtocol.Message? {
            val n = bulk.read(head, AdbProtocol.HEADER, timeoutMs)
            if (n <= 0) return null
            if (n != AdbProtocol.HEADER) throw IOException("short header $n")
            val h = AdbProtocol.parseHeader(head) ?: throw IOException("bad header")
            val len = h[3]
            if (len < 0 || len > AdbProtocol.MAX_RELAY) throw IOException("bad length $len")
            val payload = ByteArray(len)
            var got = 0
            while (got < len) {
                val want = minOf(CHUNK, len - got)
                val r = bulk.read(chunk, want, PAYLOAD_TIMEOUT_MS)
                if (r <= 0 || r > want) throw IOException("usb read")
                System.arraycopy(chunk, 0, payload, got, r)
                got += r
            }
            return AdbProtocol.Message(h[0], h[1], h[2], payload)
        }
    }

    companion object {
        const val META_VENDOR = 0x2833

        /** The app's adb key (made once, in its prefs): the one the headset is asked to allow over the cable. */
        fun key(context: Context): KeyPair {
            val prefs = context.getSharedPreferences("adb_key", Context.MODE_PRIVATE)
            val priv = prefs.getString("priv", null)
            val pub = prefs.getString("pub", null)
            if (priv != null && pub != null) {
                runCatching { return AdbProtocol.decodeKey(Base64.decode(priv, 0), Base64.decode(pub, 0)) }
            }
            val k = AdbProtocol.newKey()
            val (p, q) = AdbProtocol.encodeKey(k)
            prefs.edit().putString("priv", Base64.encodeToString(p, Base64.NO_WRAP))
                .putString("pub", Base64.encodeToString(q, Base64.NO_WRAP)).apply()
            return k
        }

        /**
         * The same key for Termux's adb (private key as base64 PKCS#8 DER, public key in adb's own line format), so
         * the Wi-Fi connection is the identity the headset already allowed over the cable — no second "Allow" that
         * Horizon OS may never show for a Wi-Fi connection.
         */
        fun termuxKey(context: Context): Pair<String, String> {
            val k = key(context)
            return AdbProtocol.base64(k.private.encoded) to
                String(AdbProtocol.publicKeyPayload(k.public as RSAPublicKey)).trimEnd('\u0000')
        }
        private const val ALLOW_WAIT_MS = 60_000L
        /** adbd stops reading while it writes a big install to flash — a short timeout would drop the whole relay. */
        private const val WRITE_TIMEOUT_MS = 60_000
        private const val PAYLOAD_TIMEOUT_MS = 10_000
        /** usbfs moves at most 16 KiB per request. */
        private const val CHUNK = 16 * 1024

        fun adbInterface(d: UsbDevice): UsbInterface? = (0 until d.interfaceCount).map { d.getInterface(it) }
            .firstOrNull { it.interfaceClass == 0xFF && it.interfaceSubclass == 0x42 && it.interfaceProtocol == 0x01 }

        /** The plugged-in headset (Meta vendor id + an adb interface = developer mode on), or null. */
        fun findQuest(context: Context): UsbDevice? = context.getSystemService(UsbManager::class.java)
            ?.deviceList?.values?.firstOrNull { it.vendorId == META_VENDOR && adbInterface(it) != null }
    }
}
