.class public Lorg/apache/poi/hssf/record/crypto/Biff8XOR;
.super Ljava/lang/Object;
.source "Biff8XOR.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;


# instance fields
.field private _buffer:Ljava/nio/ByteBuffer;

.field private _dataLength:I

.field private final _initialOffset:I

.field private final _key:Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

.field private _shouldSkipEncryptionOnCurrentRecord:Z

.field private _xorArrayIndex:I


# direct methods
.method public constructor <init>(ILorg/apache/poi/hssf/record/crypto/Biff8XORKey;)V
    .locals 2
    .param p1, "initialOffset"    # I
    .param p2, "key"    # Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    .line 36
    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_xorArrayIndex:I

    .line 39
    iput-object p2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_key:Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    .line 40
    iput p1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_initialOffset:I

    .line 42
    return-void
.end method

.method private static isNeverEncryptedRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .line 69
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static rotateLeft(BI)B
    .locals 3
    .param p0, "bits"    # B
    .param p1, "shift"    # I

    .line 127
    and-int/lit16 v0, p0, 0xff

    shl-int/2addr v0, p1

    and-int/lit16 v1, p0, 0xff

    rsub-int/lit8 v2, p1, 0x8

    ushr-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public setNextRecordSize(I)V
    .locals 2
    .param p1, "recordSize"    # I

    .line 59
    iget v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_initialOffset:I

    iget v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_xorArrayIndex:I

    .line 60
    return-void
.end method

.method public skipTwoBytes()V
    .locals 1

    .line 95
    iget v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    .line 96
    return-void
.end method

.method public startRecord(I)V
    .locals 1
    .param p1, "currentSid"    # I

    .line 45
    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->isNeverEncryptedRecord(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_shouldSkipEncryptionOnCurrentRecord:Z

    .line 46
    return-void
.end method

.method public xor([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I

    .line 105
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    .line 107
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_key:Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    iget-object v0, v0, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;->_secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 116
    .local v0, "xorArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 117
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    .line 118
    .local v2, "value":B
    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->rotateLeft(BI)B

    move-result v2

    .line 119
    iget v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_xorArrayIndex:I

    aget-byte v4, v0, v3

    xor-int/2addr v4, v2

    int-to-byte v2, v4

    .line 120
    add-int v4, p2, v1

    aput-byte v2, p1, v4

    .line 121
    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x10

    iput v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_xorArrayIndex:I

    .line 122
    iget v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_dataLength:I

    .line 116
    .end local v2    # "value":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public xorByte(I)I
    .locals 3
    .param p1, "rawVal"    # I

    .line 131
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->xor([BII)V

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public xorInt(I)I
    .locals 3
    .param p1, "rawVal"    # I

    .line 143
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 144
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->xor([BII)V

    .line 145
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public xorLong(J)J
    .locals 3
    .param p1, "rawVal"    # J

    .line 149
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->xor([BII)V

    .line 151
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public xorShort(I)I
    .locals 3
    .param p1, "rawVal"    # I

    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 138
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->xor([BII)V

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8XOR;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
