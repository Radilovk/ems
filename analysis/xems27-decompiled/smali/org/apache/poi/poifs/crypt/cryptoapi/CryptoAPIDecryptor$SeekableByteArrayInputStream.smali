.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "CryptoAPIDecryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekableByteArrayInputStream"
.end annotation


# instance fields
.field cipher:Ljavax/crypto/Cipher;

.field oneByte:[B

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V
    .locals 2
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 98
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 100
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 6

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v1

    .line 76
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/crypto/Cipher;->update([BII[B)I
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    nop

    .line 82
    :try_start_3
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    aget-byte v1, v1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 79
    .end local p0    # "this":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljavax/crypto/ShortBufferException;
    :try_start_4
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .end local v0    # "ch":I
    .end local v1    # "e":Ljavax/crypto/ShortBufferException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v0, "readLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v1

    .line 89
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    move-object v2, p1

    move v3, p2

    move v4, v0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    nop

    .line 93
    monitor-exit p0

    return v0

    .line 90
    .end local p0    # "this":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljavax/crypto/ShortBufferException;
    :try_start_2
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v0    # "readLen":I
    .end local v1    # "e":Ljavax/crypto/ShortBufferException;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public seek(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 61
    iget v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->count:I

    if-gt p1, v0, :cond_0

    .line 65
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->pos:I

    .line 66
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->mark:I

    .line 67
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setBlock(I)V
    .locals 2
    .param p1, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 71
    return-void
.end method
