package eu.xems.vrlauncher

import java.math.BigInteger
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.KeyPair
import java.security.KeyPairGenerator
import java.security.KeyFactory
import java.security.Signature
import java.security.interfaces.RSAPublicKey
import java.security.spec.PKCS8EncodedKeySpec
import java.security.spec.X509EncodedKeySpec

/**
 * The few pieces of the adb wire protocol needed to say `tcpip:5555` over a USB cable (pure, no Android).
 * Message = 24-byte little-endian header (command, arg0, arg1, length, checksum, magic) + payload.
 * Auth: the headset sends a 20-byte token, we sign it with our RSA key; an unknown key is sent as
 * RSAPUBLICKEY and the headset asks *Allow USB debugging* (remembered with "Always allow").
 */
object AdbProtocol {
    const val CNXN = 0x4e584e43
    const val AUTH = 0x48545541
    const val OPEN = 0x4e45504f
    const val OKAY = 0x59414b4f
    const val CLSE = 0x45534c43
    const val WRTE = 0x45545257

    const val AUTH_TOKEN = 1
    const val AUTH_SIGNATURE = 2
    const val AUTH_RSAPUBLICKEY = 3

    const val VERSION = 0x01000001        // checksum optional for both sides
    const val MAX_DATA = 256 * 1024
    const val HEADER = 24

    class Message(val command: Int, val arg0: Int, val arg1: Int, val payload: ByteArray = ByteArray(0)) {
        override fun toString() = "${name(command)}($arg0, $arg1, ${payload.size} B)"
    }

    fun name(command: Int): String =
        String(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(command).array(), Charsets.US_ASCII)

    fun header(m: Message): ByteArray = ByteBuffer.allocate(HEADER).order(ByteOrder.LITTLE_ENDIAN)
        .putInt(m.command).putInt(m.arg0).putInt(m.arg1).putInt(m.payload.size)
        .putInt(m.payload.fold(0) { s, b -> s + (b.toInt() and 0xFF) })
        .putInt(m.command.inv())
        .array()

    /** Header → (command, arg0, arg1, payload length); null when the magic does not match. */
    fun parseHeader(h: ByteArray): IntArray? {
        if (h.size < HEADER) return null
        val b = ByteBuffer.wrap(h).order(ByteOrder.LITTLE_ENDIAN)
        val cmd = b.getInt(0)
        if (b.getInt(20) != cmd.inv()) return null
        return intArrayOf(cmd, b.getInt(4), b.getInt(8), b.getInt(12))
    }

    fun connect() = Message(CNXN, VERSION, MAX_DATA, "host::xems-vr\u0000".toByteArray())
    fun open(localId: Int, service: String) = Message(OPEN, localId, 0, (service + "\u0000").toByteArray())
    fun okay(localId: Int, remoteId: Int) = Message(OKAY, localId, remoteId)

    // ---------------------------------------------------------------- key

    /** SHA-1 DigestInfo prefix: adb signs the raw token as if it were a SHA-1 digest. */
    private val SHA1_PREFIX = byteArrayOf(
        0x30, 0x21, 0x30, 0x09, 0x06, 0x05, 0x2b, 0x0e, 0x03, 0x02, 0x1a, 0x05, 0x00, 0x04, 0x14,
    )

    fun newKey(): KeyPair = KeyPairGenerator.getInstance("RSA").apply { initialize(2048) }.generateKeyPair()

    fun encodeKey(k: KeyPair): Pair<ByteArray, ByteArray> = k.private.encoded to k.public.encoded

    fun decodeKey(priv: ByteArray, pub: ByteArray): KeyPair {
        val f = KeyFactory.getInstance("RSA")
        return KeyPair(f.generatePublic(X509EncodedKeySpec(pub)), f.generatePrivate(PKCS8EncodedKeySpec(priv)))
    }

    fun sign(k: KeyPair, token: ByteArray): ByteArray = Signature.getInstance("NONEwithRSA").run {
        initSign(k.private)
        update(SHA1_PREFIX)
        update(token)
        sign()
    }

    /** adb's own public key format (mincrypt RSAPublicKey, little-endian words), base64 + " name\0". */
    fun publicKeyPayload(pub: RSAPublicKey, name: String = "xems@tablet"): ByteArray {
        val words = 2048 / 32
        val n = pub.modulus
        val r32 = BigInteger.ONE.shiftLeft(32)
        val n0inv = n.mod(r32).modInverse(r32).negate().mod(r32)
        val rr = BigInteger.ONE.shiftLeft(4096).mod(n)
        val b = ByteBuffer.allocate(4 + 4 + words * 4 * 2 + 4).order(ByteOrder.LITTLE_ENDIAN)
        b.putInt(words).putInt(n0inv.toInt())
        putWords(b, n, words)
        putWords(b, rr, words)
        b.putInt(pub.publicExponent.toInt())
        return (base64(b.array()) + " " + name + "\u0000").toByteArray()
    }

    private fun putWords(b: ByteBuffer, v: BigInteger, words: Int) {
        var x = v
        val mask = BigInteger.valueOf(0xFFFFFFFFL)
        repeat(words) {
            b.putInt(x.and(mask).toInt())
            x = x.shiftRight(32)
        }
    }

    /** java.util.Base64 is API 26+, android.util.Base64 is not on the unit-test classpath. */
    fun base64(d: ByteArray): String {
        val abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
        val sb = StringBuilder()
        var i = 0
        while (i < d.size) {
            val n = minOf(3, d.size - i)
            var v = 0
            for (j in 0 until 3) v = (v shl 8) or (if (j < n) d[i + j].toInt() and 0xFF else 0)
            for (j in 0 until 4) sb.append(if (j <= n) abc[(v shr (18 - 6 * j)) and 63] else '=')
            i += 3
        }
        return sb.toString()
    }

    /** Text the `tcpip:` service answers with; success = "restarting in TCP mode port: 5555". */
    fun tcpipOk(reply: String) = reply.contains("restarting in TCP mode", ignoreCase = true)
}
