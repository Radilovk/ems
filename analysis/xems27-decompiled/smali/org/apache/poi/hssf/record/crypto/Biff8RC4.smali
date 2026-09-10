.class final Lorg/apache/poi/hssf/record/crypto/Biff8RC4;
.super Ljava/lang/Object;
.source "Biff8RC4.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/crypto/Biff8Cipher;


# static fields
.field private static final RC4_REKEYING_INTERVAL:I = 0x400


# instance fields
.field private _buffer:Ljava/nio/ByteBuffer;

.field private _currentKeyIndex:I

.field private final _key:Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

.field private _nextRC4BlockStart:I

.field private _rc4:Ljavax/crypto/Cipher;

.field private _shouldSkipEncryptionOnCurrentRecord:Z

.field private _streamPos:I


# direct methods
.method public constructor <init>(ILorg/apache/poi/hssf/record/crypto/Biff8RC4Key;)V
    .locals 4
    .param p1, "initialOffset"    # I
    .param p2, "key"    # Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    .line 54
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 58
    iput-object p2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_key:Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    .line 59
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_rc4:Ljavax/crypto/Cipher;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    .line 61
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->rekeyForNextBlock()V

    .line 62
    iput p1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    .line 63
    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_shouldSkipEncryptionOnCurrentRecord:Z

    .line 65
    new-array v1, p1, [B

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->encryptBytes([BII)V

    .line 66
    return-void

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialOffset ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not supported yet"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private encryptBytes([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "bytesToRead"    # I

    .line 76
    if-nez p3, :cond_0

    return-void

    .line 78
    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_1

    .line 80
    new-array v0, p3, [B

    .line 81
    .local v0, "dataCpy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    move-object p1, v0

    .line 83
    const/4 p2, 0x0

    .line 87
    .end local v0    # "dataCpy":[B
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_rc4:Ljavax/crypto/Cipher;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "input buffer too small"

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isNeverEncryptedRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .line 103
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private rekeyForNextBlock()V
    .locals 3

    .line 70
    iget v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    div-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_currentKeyIndex:I

    .line 71
    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_key:Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_rc4:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->initCipherForBlock(Ljavax/crypto/Cipher;I)V

    .line 72
    iget v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_currentKeyIndex:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_nextRC4BlockStart:I

    .line 73
    return-void
.end method


# virtual methods
.method public setNextRecordSize(I)V
    .locals 0
    .param p1, "recordSize"    # I

    .line 194
    return-void
.end method

.method public skipTwoBytes()V
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->xor([BII)V

    .line 130
    return-void
.end method

.method public startRecord(I)V
    .locals 1
    .param p1, "currentSid"    # I

    .line 94
    invoke-static {p1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->isNeverEncryptedRecord(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_shouldSkipEncryptionOnCurrentRecord:Z

    .line 95
    return-void
.end method

.method public xor([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I

    .line 134
    iget v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_nextRC4BlockStart:I

    iget v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    sub-int/2addr v0, v1

    .line 135
    .local v0, "nLeftInBlock":I
    if-gt p3, v0, :cond_0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->encryptBytes([BII)V

    .line 138
    iget v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    .line 139
    return-void

    .line 142
    :cond_0
    move v1, p2

    .line 143
    .local v1, "offset":I
    move v2, p3

    .line 146
    .local v2, "len":I
    if-le v2, v0, :cond_2

    .line 147
    if-lez v0, :cond_1

    .line 148
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->encryptBytes([BII)V

    .line 149
    iget v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    .line 150
    add-int/2addr v1, v0

    .line 151
    sub-int/2addr v2, v0

    .line 153
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->rekeyForNextBlock()V

    .line 156
    :cond_2
    :goto_0
    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    .line 157
    invoke-direct {p0, p1, v1, v3}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->encryptBytes([BII)V

    .line 158
    iget v4, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    .line 159
    add-int/lit16 v1, v1, 0x400

    .line 160
    add-int/lit16 v2, v2, -0x400

    .line 161
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->rekeyForNextBlock()V

    goto :goto_0

    .line 164
    :cond_3
    invoke-direct {p0, p1, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->encryptBytes([BII)V

    .line 165
    iget v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_streamPos:I

    .line 166
    return-void
.end method

.method public xorByte(I)I
    .locals 3
    .param p1, "rawVal"    # I

    .line 169
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->xor([BII)V

    .line 171
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public xorInt(I)I
    .locals 3
    .param p1, "rawVal"    # I

    .line 181
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->xor([BII)V

    .line 183
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public xorLong(J)J
    .locals 3
    .param p1, "rawVal"    # J

    .line 187
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->xor([BII)V

    .line 189
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public xorShort(I)I
    .locals 3
    .param p1, "rawVal"    # I

    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->xor([BII)V

    .line 177
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8RC4;->_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
