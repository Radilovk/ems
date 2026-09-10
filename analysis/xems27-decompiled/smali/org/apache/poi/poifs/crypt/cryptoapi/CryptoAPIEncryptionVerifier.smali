.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
.source "CryptoAPIEncryptionVerifier.java"


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "keyBits"    # I
    .param p4, "blockSize"    # I
    .param p5, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 36
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V
    .locals 0
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "header"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    .line 30
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected setEncryptedVerifier([B)V
    .locals 0
    .param p1, "encryptedVerifier"    # [B

    .line 44
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 45
    return-void
.end method

.method protected setEncryptedVerifierHash([B)V
    .locals 0
    .param p1, "encryptedVerifierHash"    # [B

    .line 48
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V

    .line 49
    return-void
.end method

.method protected setSalt([B)V
    .locals 0
    .param p1, "salt"    # [B

    .line 40
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    .line 41
    return-void
.end method
