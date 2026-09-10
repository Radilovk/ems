.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "CryptoAPIEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CipherByteArrayOutputStream"
.end annotation


# instance fields
.field cipher:Ljavax/crypto/Cipher;

.field oneByte:[B

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 v0, 0x0

    aput-byte v0, p1, v0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->oneByte:[B

    .line 220
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 221
    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public setBlock(I)V
    .locals 2
    .param p1, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 233
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "count"    # I

    .line 228
    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->count:I

    .line 229
    return-void
.end method

.method public write(I)V
    .locals 9
    .param p1, "b"    # I

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->oneByte:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 238
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->oneByte:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->oneByte:[B

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 239
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->oneByte:[B

    invoke-super {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 243
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 248
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
