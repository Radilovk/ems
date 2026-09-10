.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "StandardEncryptionVerifier.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SPIN_COUNT:I = 0xc350


# instance fields
.field private final verifierHashSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "keyBits"    # I
    .param p4, "blockSize"    # I
    .param p5, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 65
    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 66
    const v0, 0xc350

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSpinCount(I)V

    .line 67
    iget v0, p2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->verifierHashSize:I

    .line 68
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V
    .locals 6
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "header"    # Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    .prologue
    const/16 v4, 0x10

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    .line 35
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v3

    .line 37
    .local v3, "saltSize":I
    if-eq v3, v4, :cond_0

    .line 38
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Salt size != 16 !?"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_0
    new-array v2, v4, [B

    .line 42
    .local v2, "salt":[B
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 43
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    .line 45
    new-array v0, v4, [B

    .line 46
    .local v0, "encryptedVerifier":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 47
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 49
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->verifierHashSize:I

    .line 51
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    new-array v1, v4, [B

    .line 52
    .local v1, "encryptedVerifierHash":[B
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 53
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 55
    const v4, 0xc350

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSpinCount(I)V

    .line 56
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 57
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 58
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedKey([B)V

    .line 59
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getHashAlgorithmEx()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected getVerifierHashSize()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->verifierHashSize:I

    return v0
.end method

.method protected setEncryptedVerifier([B)V
    .locals 0
    .param p1, "encryptedVerifier"    # [B

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    .line 81
    return-void
.end method

.method protected setEncryptedVerifierHash([B)V
    .locals 0
    .param p1, "encryptedVerifierHash"    # [B

    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 86
    return-void
.end method

.method protected setSalt([B)V
    .locals 2
    .param p1, "salt"    # [B

    .prologue
    .line 72
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 73
    :cond_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "invalid verifier salt"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    .line 76
    return-void
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 5
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .prologue
    const/16 v4, 0x10

    .line 90
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getSalt()[B

    move-result-object v2

    .line 91
    .local v2, "salt":[B
    sget-boolean v3, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    array-length v3, v2

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 92
    :cond_0
    array-length v3, v2

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 93
    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v0

    .line 97
    .local v0, "encryptedVerifier":[B
    sget-boolean v3, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, v0

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 98
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 102
    const/16 v3, 0x14

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 110
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v1

    .line 111
    .local v1, "encryptedVerifierHash":[B
    sget-boolean v3, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    array-length v3, v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 112
    :cond_2
    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 113
    return-void
.end method
