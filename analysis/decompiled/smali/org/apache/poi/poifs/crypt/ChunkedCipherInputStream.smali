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
    .locals 4
    .param p1, "stream"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # J
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "stream":Lorg/apache/poi/util/LittleEndianInput;
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    iput v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_lastIndex:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 45
    iput-wide p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_size:J

    .line 46
    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    .line 47
    add-int/lit8 v0, p4, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    .line 48
    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_cipher:Ljavax/crypto/Cipher;

    .line 51
    return-void
.end method

.method private nextChunk()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shr-long/2addr v2, v4

    long-to-int v1, v2

    .line 130
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    .line 132
    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_lastIndex:I

    if-eq v2, v1, :cond_0

    .line 133
    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_lastIndex:I

    sub-int v2, v1, v2

    iget v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    invoke-super {p0, v2, v3}, Lorg/apache/poi/util/LittleEndianInputStream;->skip(J)J

    .line 136
    :cond_0
    invoke-super {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->available()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v0, v2, [B

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

    .prologue
    .line 110
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_size:J

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
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

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
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

    .prologue
    const/4 v2, 0x1

    .line 57
    new-array v0, v2, [B

    .line 58
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([B)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 59
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 60
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "total":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v5

    if-gtz v5, :cond_4

    const/4 v4, -0x1

    move v5, v4

    .line 94
    :goto_0
    return v5

    .line 84
    .end local v3    # "total":I
    .local v0, "avail":I
    .local v1, "count":I
    .local v4, "total":I
    :cond_0
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 85
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v8, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    int-to-long v8, v8

    and-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    add-int/2addr p2, v1

    .line 87
    sub-int/2addr p3, v1

    .line 88
    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 89
    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    int-to-long v8, v5

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 90
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    .line 91
    :cond_1
    add-int v3, v4, v1

    .end local v4    # "total":I
    .restart local v3    # "total":I
    move v4, v3

    .line 71
    .end local v0    # "avail":I
    .end local v1    # "count":I
    .end local v3    # "total":I
    .restart local v4    # "total":I
    :goto_1
    if-lez p3, :cond_3

    .line 72
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    if-nez v5, :cond_2

    .line 74
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->nextChunk()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    iget v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    int-to-long v6, v5

    iget-wide v8, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    iget v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    int-to-long v10, v5

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v1, v6

    .line 80
    .restart local v1    # "count":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v0

    .line 81
    .restart local v0    # "avail":I
    if-nez v0, :cond_0

    move v3, v4

    .end local v4    # "total":I
    .restart local v3    # "total":I
    move v5, v4

    .line 82
    goto :goto_0

    .line 75
    .end local v0    # "avail":I
    .end local v1    # "count":I
    .end local v3    # "total":I
    .restart local v4    # "total":I
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Lorg/apache/poi/EncryptedDocumentException;

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    move v3, v4

    .end local v4    # "total":I
    .restart local v3    # "total":I
    move v5, v4

    .line 94
    goto :goto_0

    :cond_4
    move v4, v3

    .end local v3    # "total":I
    .restart local v4    # "total":I
    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    .prologue
    .line 99
    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 100
    .local v2, "start":J
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 102
    .local v0, "skip":J
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    add-long/2addr v4, v0

    xor-long/2addr v4, v2

    iget v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkMask:I

    xor-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 103
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_chunk:[B

    .line 104
    :cond_0
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->_pos:J

    .line 105
    return-wide v0
.end method
