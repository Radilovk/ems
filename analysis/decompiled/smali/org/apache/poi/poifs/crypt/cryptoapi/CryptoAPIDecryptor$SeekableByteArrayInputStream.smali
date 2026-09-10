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

    .prologue
    const/4 v1, 0x0

    .line 97
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    .line 98
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 100
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 74
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 75
    .local v0, "ch":I
    if-ne v0, v2, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return v2

    .line 76
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    const/4 v3, 0x0

    int-to-byte v4, v0

    aput-byte v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/crypto/Cipher;->update([BII[B)I
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->oneByte:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljavax/crypto/ShortBufferException;
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v2, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v0    # "ch":I
    .end local v1    # "e":Ljavax/crypto/ShortBufferException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, -0x1

    .line 86
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 87
    .local v3, "readLen":I
    if-ne v3, v0, :cond_0

    move v3, v0

    .line 93
    .end local v3    # "readLen":I
    :goto_0
    monitor-exit p0

    return v3

    .line 89
    .restart local v3    # "readLen":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v6

    .line 91
    .local v6, "e":Ljavax/crypto/ShortBufferException;
    :try_start_2
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, v6}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .end local v3    # "readLen":I
    .end local v6    # "e":Ljavax/crypto/ShortBufferException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seek(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->count:I

    if-le p1, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 65
    :cond_0
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->pos:I

    .line 66
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->mark:I

    .line 67
    return-void
.end method

.method public setBlock(I)V
    .locals 2
    .param p1, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 71
    return-void
.end method
