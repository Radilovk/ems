.class public final Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
.super Ljava/lang/Object;
.source "Biff8DecryptingStream.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/BiffHeaderInput;
.implements Lorg/apache/poi/util/LittleEndianInput;


# instance fields
.field private final _cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

.field private final _le:Lorg/apache/poi/util/LittleEndianInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "initialOffset"    # I
    .param p3, "key"    # Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    instance-of v0, p3, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;

    check-cast p3, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    .end local p3    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    invoke-direct {v0, p2, p3}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;-><init>(ILorg/apache/poi/hssf/record/crypto/Biff8RC4Key;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    .line 45
    :goto_0
    instance-of v0, p1, Lorg/apache/poi/util/LittleEndianInput;

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Lorg/apache/poi/util/LittleEndianInput;

    .end local p1    # "in":Ljava/io/InputStream;
    iput-object p1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    .line 52
    :goto_1
    return-void

    .line 39
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p3    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    :cond_0
    instance-of v0, p3, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;

    check-cast p3, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    .end local p3    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    invoke-direct {v0, p2, p3}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;-><init>(ILorg/apache/poi/hssf/record/crypto/Biff8XORKey;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    goto :goto_0

    .line 42
    .restart local p3    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Crypto API not supported yet."

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    .end local p3    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    :cond_2
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xorByte(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readDataSize()I
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 73
    .local v0, "dataSize":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->skipTwoBytes()V

    .line 74
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    invoke-interface {v1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->setNextRecordSize(I)V

    .line 75
    return v0
.end method

.method public readDouble()D
    .locals 6

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readLong()J

    move-result-wide v2

    .line 80
    .local v2, "valueLongBits":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 81
    .local v0, "result":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Did not expect to read NaN"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_0
    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readFully([BII)V

    .line 89
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInput;->readFully([BII)V

    .line 93
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xor([BII)V

    .line 94
    return-void
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xorInt(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xorLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readRecordSID()I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 63
    .local v0, "sid":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->skipTwoBytes()V

    .line 64
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    invoke-interface {v1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->startRecord(I)V

    .line 65
    return v0
.end method

.method public readShort()S
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xorShort(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public readUByte()I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xorByte(I)I

    move-result v0

    return v0
.end method

.method public readUShort()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_cipher:Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->_le:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;->xorShort(I)I

    move-result v0

    return v0
.end method
