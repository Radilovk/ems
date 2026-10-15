package eu.xems.vrlauncher

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.fail
import org.junit.Test
import java.io.IOException

/** A fake USB IN pipe with real URB semantics: a read ends when its buffer is full or a short packet arrives. */
private class FakeBulk(val maxPacket: Int = 512) : UsbAdb.Bulk {
    private val packets = ArrayDeque<ByteArray>()
    val written = ArrayList<ByteArray>()

    /** The device writes one transfer: split into packets, the last one short unless it is an exact multiple. */
    fun deviceWrites(data: ByteArray) {
        var off = 0
        while (off < data.size) { val n = minOf(maxPacket, data.size - off); packets.add(data.copyOfRange(off, off + n)); off += n }
    }
    fun deviceSends(m: AdbProtocol.Message) {
        deviceWrites(AdbProtocol.header(m))
        if (m.payload.isNotEmpty()) deviceWrites(m.payload)
    }
    fun pending() = packets.sumOf { it.size }

    override fun read(buf: ByteArray, len: Int, timeoutMs: Int): Int {
        var got = 0
        while (got < len) {
            val p = packets.firstOrNull() ?: return if (got == 0) -1 else -1   // nothing more: the URB times out
            if (got + p.size > len) return -1                                  // overflow (babble)
            System.arraycopy(p, 0, buf, got, p.size); got += p.size; packets.removeFirst()
            if (p.size < maxPacket) break                                      // short packet ends the transfer
        }
        return got
    }

    override fun write(data: ByteArray, off: Int, len: Int, timeoutMs: Int): Int { written.add(data.copyOfRange(off, off + len)); return len }
}

/**
 * adbd's side of the OUT pipe (daemon/usb.cpp, FunctionFS): it reads in 16 KiB blocks, a block ends when full or at a
 * short packet (a zero-length one too); a header block must be exactly 24 bytes, a payload block may not run past
 * the payload ("received too many bytes" → the connection is dropped).
 */
private class FakeAdbd(val maxPacket: Int = 512) {
    private val blocks = ArrayList<Int>()          // sizes of the reads as adbd sees them
    private var cur = 0
    fun hostWrites(n: Int) {
        if (n == 0) { blocks.add(cur); cur = 0; return }       // ZLP ends the read
        var left = n
        while (left > 0) {
            val p = minOf(maxPacket, left)
            cur += p; left -= p
            if (p < maxPacket || cur == 16384) { blocks.add(cur); cur = 0 }
        }
    }
    /** The messages adbd would accept: true when every message parsed in step. */
    fun parses(payloads: List<Int>): Boolean {
        val it = blocks.filter { it > 0 }.iterator()
        for (len in payloads) {
            if (!it.hasNext() || it.next() != 24) return false
            var left = len
            while (left > 0) {
                if (!it.hasNext()) return false
                val b = it.next()
                if (b > left) return false
                left -= b
            }
        }
        return !it.hasNext() && cur == 0
    }
}

class AdbIoTest {
    @Test fun hostWritesEndEveryMessageWhereAdbdExpectsIt() {
        val sizes = listOf(4096, 65536, 512, 0, 3000, 16384, 16384 + 512, 1, 1048576, 7680)
        val bulk = FakeBulk()
        val io = UsbAdb.Io(bulk)
        sizes.forEach { io.send(AdbProtocol.Message(AdbProtocol.WRTE, 1, 2, ByteArray(it))) }
        val adbd = FakeAdbd()
        bulk.written.forEach { adbd.hostWrites(it.size) }
        assertEquals(true, adbd.parses(sizes))
    }

    @Test fun withoutTheZeroLengthPacketAdbdWouldRunIntoTheNextHeader() {
        val adbd = FakeAdbd()
        adbd.hostWrites(24); adbd.hostWrites(4096); adbd.hostWrites(24)   // no ZLP after the 4096 bytes
        assertEquals(false, adbd.parses(listOf(4096, 0)))
    }

    private fun msg(cmd: Int, size: Int, seed: Int = 7) =
        AdbProtocol.Message(cmd, 1, 2, ByteArray(size) { (it * 31 + seed).toByte() })

    @Test fun payloadsThatAreMultiplesOfThePacketSizeDoNotEatTheNextHeader() {
        val bulk = FakeBulk()
        // 4096 and 65536 are what install streams are made of; 512 is the smallest such case; 0 is an OKAY.
        val sent = listOf(msg(AdbProtocol.WRTE, 4096), msg(AdbProtocol.WRTE, 65536), msg(AdbProtocol.WRTE, 512),
            AdbProtocol.Message(AdbProtocol.OKAY, 1, 2), msg(AdbProtocol.WRTE, 3000), msg(AdbProtocol.WRTE, 16384),
            msg(AdbProtocol.WRTE, 16384 + 512), msg(AdbProtocol.WRTE, 1))
        sent.forEach { bulk.deviceSends(it) }
        val io = UsbAdb.Io(bulk)
        for (want in sent) {
            val got = io.receive(1000)!!
            assertEquals(want.command, got.command)
            assertArrayEquals(want.payload, got.payload)
        }
        assertEquals(0, bulk.pending())
        assertNull(io.receive(1000))                                           // idle: a timeout, not an error
    }

    @Test fun aBigStreamKeepsInStep() {
        val bulk = FakeBulk()
        val io = UsbAdb.Io(bulk)
        for (i in 0 until 200) {
            val m = msg(AdbProtocol.WRTE, 65536, i)
            bulk.deviceSends(m)
            assertArrayEquals(m.payload, io.receive(1000)!!.payload)
        }
    }

    @Test fun oldWayOfReadingWouldHaveDesynced() {
        // Documents the bug: one 16 KiB read of a 4096-byte payload does not stop at its end.
        val bulk = FakeBulk()
        bulk.deviceSends(msg(AdbProtocol.WRTE, 4096)); bulk.deviceSends(AdbProtocol.Message(AdbProtocol.OKAY, 1, 2))
        val buf = ByteArray(16384)
        bulk.read(buf, 24, 1000)
        val n = bulk.read(buf, buf.size, 1000)
        assertEquals(4096 + 24, n)                                             // ate the following header too
    }

    @Test fun writesAreChunkedAndSplitIntoHeaderAndPayload() {
        val bulk = FakeBulk()
        UsbAdb.Io(bulk).send(msg(AdbProtocol.WRTE, 40000))
        assertEquals(24, bulk.written[0].size)
        assertEquals(40000, bulk.written.drop(1).sumOf { it.size })
        assertEquals(true, bulk.written.all { it.size <= 16384 })
    }

    @Test fun aBrokenStreamIsAnErrorNotAHang() {
        val bulk = FakeBulk()
        bulk.deviceWrites(ByteArray(24) { 1 })                                 // not an adb header
        try { UsbAdb.Io(bulk).receive(1000); fail("expected IOException") } catch (e: IOException) { /* ok */ }
    }
}
