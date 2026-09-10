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

    .prologue
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

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 34
    return-void
.end method


# virtual methods
.method public setKeySize(I)V
    .locals 8
    .param p1, "keyBits"    # I

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "found":Z
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v5

    iget-object v0, v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 47
    .local v4, "size":I
    if-ne v4, p1, :cond_1

    .line 48
    const/4 v1, 0x1

    .line 52
    .end local v4    # "size":I
    :cond_0
    if-nez v1, :cond_2

    .line 53
    new-instance v5, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid keysize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for cipher algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 46
    .restart local v4    # "size":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "size":I
    :cond_2
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setKeySize(I)V

    .line 56
    const/16 v5, 0x28

    if-le p1, v5, :cond_3

    .line 57
    const-string v5, "Microsoft Enhanced Cryptographic Provider v1.0"

    invoke-virtual {p0, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 61
    :goto_1
    return-void

    .line 59
    :cond_3
    sget-object v5, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget-object v5, v5, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->setCspName(Ljava/lang/String;)V

    goto :goto_1
.end method
