.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "BinaryRC4EncryptionVerifier.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    .line 29
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSpinCount(I)V

    .line 30
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 32
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedKey([B)V

    .line 33
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 4
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    .line 37
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 38
    .local v1, "salt":[B
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 39
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSalt([B)V

    .line 40
    new-array v2, v0, [B

    .line 41
    .local v2, "encryptedVerifier":[B
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 42
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifier([B)V

    .line 43
    new-array v0, v0, [B

    .line 44
    .local v0, "encryptedVerifierHash":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 45
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 46
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSpinCount(I)V

    .line 47
    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 48
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 49
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedKey([B)V

    .line 50
    sget-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected setEncryptedVerifier([B)V
    .locals 0
    .param p1, "encryptedVerifier"    # [B

    .line 62
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    .line 63
    return-void
.end method

.method protected setEncryptedVerifierHash([B)V
    .locals 0
    .param p1, "encryptedVerifierHash"    # [B

    .line 66
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 67
    return-void
.end method

.method protected setSalt([B)V
    .locals 2
    .param p1, "salt"    # [B

    .line 54
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 58
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "invalid verifier salt"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 3
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 70
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->getSalt()[B

    move-result-object v0

    .line 71
    .local v0, "salt":[B
    nop

    .line 72
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v1

    .line 74
    .local v1, "encryptedVerifier":[B
    nop

    .line 75
    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 76
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v2

    .line 77
    .local v2, "encryptedVerifierHash":[B
    nop

    .line 78
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 79
    return-void
.end method
