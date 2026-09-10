.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
.source "CryptoAPIEncryptionHeader.java"


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "keyBits"    # I
    .param p4, "blockSize"    # I
    .param p5, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 39
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 34
    return-void
.end method


# virtual methods
.method public setKeySize(I)V
    .locals 5
    .param p1, "keyBits"    # I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "found":Z
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v1, "arr$":[I
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 47
    .local v4, "size":I
    if-ne v4, p1, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 46
    .end local v4    # "size":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "arr$":[I
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 55
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setKeySize(I)V

    .line 56
    const/16 v1, 0x28

    if-le p1, v1, :cond_2

    .line 57
    const-string v1, "Microsoft Enhanced Cryptographic Provider v1.0"

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->setCspName(Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_2
    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget-object v1, v1, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 61
    :goto_2
    return-void

    .line 53
    :cond_3
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid keysize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for cipher algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
