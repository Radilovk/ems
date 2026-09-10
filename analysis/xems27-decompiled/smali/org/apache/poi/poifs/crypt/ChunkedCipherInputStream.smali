.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.super Lorg/apache/poi/util/LittleEndianInputStream;
.source "ChunkedCipherInputStream.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _chunk:[B

.field private _cipher:Ljavax/crypto/Cipher;

.field private _lastIndex:I

.field private _pos:J

.field private _size:J

.field private final chunkBits:I

.field private final chunkMask:I

.field private final chunkSize:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;JI)V
    .locals 3
    .param p1, "stream"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # J
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 44
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_lastIndex:I

    .line 37
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 45
    iput-wide p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_size:J

    .line 46
    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    .line 47
    add-int/lit8 v1, p4, -0x1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_cipher:Ljavax/crypto/Cipher;

    .line 51
    return-void
.end method

.method private nextChunk()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shr-long/2addr v0, v2

    long-to-int v1, v0

    .line 130
    .local v1, "index":I
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    .line 132
    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_lastIndex:I

    if-eq v0, v1, :cond_0

    .line 133
    sub-int v0, v1, v0

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shl-int/2addr v0, v2

    int-to-long v2, v0

    invoke-super {p0, v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->skip(J)J

    .line 136
    :cond_0
    invoke-super {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->available()I

    move-result v0

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 137
    .local v0, "block":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-super {p0, v0, v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->read([BII)I

    .line 138
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_lastIndex:I

    .line 139
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public available()I
    .locals 4

    .line 110
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_size:J

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method protected abstract initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 120
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local p0    # "this":Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 58
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 59
    const/4 v0, 0x0

    aget-byte v0, v1, v0

    return v0

    .line 60
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "total":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 71
    :cond_0
    :goto_0
    if-lez p3, :cond_4

    .line 72
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    if-nez v1, :cond_1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->nextChunk()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 79
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    int-to-long v1, v1

    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    int-to-long v5, v5

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v2, v1

    .line 80
    .local v2, "count":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v1

    .line 81
    .local v1, "avail":I
    if-nez v1, :cond_2

    .line 82
    return v0

    .line 84
    :cond_2
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    int-to-long v6, v6

    and-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v3, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    add-int/2addr p2, v2

    .line 87
    sub-int/2addr p3, v2

    .line 88
    iget-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 89
    iget v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 90
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    .line 91
    :cond_3
    add-int/2addr v0, v2

    .line 92
    .end local v1    # "avail":I
    .end local v2    # "count":I
    goto :goto_0

    .line 94
    :cond_4
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local p0    # "this":Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 100
    .local v0, "start":J
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 102
    .local v2, "skip":J
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    add-long/2addr v4, v2

    xor-long/2addr v4, v0

    iget v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    not-int v6, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 103
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    .line 104
    :cond_0
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 105
    return-wide v2
.end method
