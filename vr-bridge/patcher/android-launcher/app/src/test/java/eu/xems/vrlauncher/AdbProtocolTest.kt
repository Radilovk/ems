package eu.xems.vrlauncher

import java.math.BigInteger
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.Signature
import java.security.interfaces.RSAPublicKey
import java.util.Base64
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class AdbProtocolTest {

    @Test fun headerRoundTrip() {
        val m = AdbProtocol.open(1, "tcpip:5555")
        val h = AdbProtocol.header(m)
        assertEquals(24, h.size)
        assertEquals("OPEN", AdbProtocol.name(m.command))
        val p = AdbProtocol.parseHeader(h)!!
        assertEquals(listOf(AdbProtocol.OPEN, 1, 0, 11), p.toList())
        h[20] = 0
        assertNull(AdbProtocol.parseHeader(h))
    }

    @Test fun base64MatchesJdk() {
        for (n in 0..7) {
            val d = ByteArray(n) { (it * 37 + 5).toByte() }
            assertEquals(Base64.getEncoder().encodeToString(d), AdbProtocol.base64(d))
        }
    }

    /** The signature is plain PKCS#1 v1.5 over SHA-1 DigestInfo(token) — what adbd's RSA_verify checks. */
    @Test fun signsTokenAsSha1Digest() {
        val k = AdbProtocol.newKey()
        val token = ByteArray(20) { it.toByte() }
        val sig = AdbProtocol.sign(k, token)
        val prefix = byteArrayOf(0x30, 0x21, 0x30, 0x09, 0x06, 0x05, 0x2b, 0x0e, 0x03, 0x02, 0x1a, 0x05, 0x00, 0x04, 0x14)
        val v = Signature.getInstance("NONEwithRSA").apply { initVerify(k.public); update(prefix + token) }
        assertTrue(v.verify(sig))
        val (p, q) = AdbProtocol.encodeKey(k)
        assertArrayEquals(sig, AdbProtocol.sign(AdbProtocol.decodeKey(p, q), token))
    }

    @Test fun publicKeyInAdbFormat() {
        val k = AdbProtocol.newKey()
        val pub = k.public as RSAPublicKey
        val text = String(AdbProtocol.publicKeyPayload(pub))
        assertTrue(text.endsWith(" xems@tablet\u0000"))
        val raw = ByteBuffer.wrap(Base64.getDecoder().decode(text.substringBefore(' '))).order(ByteOrder.LITTLE_ENDIAN)
        assertEquals(64, raw.getInt())
        val n0inv = raw.getInt()
        val words = IntArray(64) { raw.getInt() }
        val n = words.reversed().fold(BigInteger.ZERO) { a, w -> a.shiftLeft(32).or(BigInteger.valueOf(w.toLong() and 0xFFFFFFFFL)) }
        assertEquals(pub.modulus, n)
        assertEquals(0, (n0inv * words[0]) + 1)          // n0inv = -1/n mod 2^32
        repeat(64) { raw.getInt() }
        assertEquals(65537, raw.getInt())
    }

    @Test fun tcpipReply() {
        assertTrue(AdbProtocol.tcpipOk("restarting in TCP mode port: 5555\n"))
    }
}
