.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.super Ljava/lang/Object;
.source "EncryptionVerifier.java"


# instance fields
.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private encryptedKey:[B

.field private encryptedVerifier:[B

.field private encryptedVerifierHash:[B

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private salt:[B

.field private spinCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    return-object v0
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public getCipherMode()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    return v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    return-object v0
.end method

.method public getEncryptedVerifier()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    return-object v0
.end method

.method public getEncryptedVerifierHash()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    return-object v0
.end method

.method public getSpinCount()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    return v0
.end method

.method public getVerifier()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    return-object v0
.end method

.method public getVerifierHash()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    return-object v0
.end method

.method protected setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0
    .param p1, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 127
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 128
    return-void
.end method

.method protected setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 0
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 123
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 124
    return-void
.end method

.method protected setEncryptedKey([B)V
    .locals 0
    .param p1, "encryptedKey"    # [B

    .line 115
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    .line 116
    return-void
.end method

.method protected setEncryptedVerifier([B)V
    .locals 0
    .param p1, "encryptedVerifier"    # [B

    .line 107
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    .line 108
    return-void
.end method

.method protected setEncryptedVerifierHash([B)V
    .locals 0
    .param p1, "encryptedVerifierHash"    # [B

    .line 111
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    .line 112
    return-void
.end method

.method protected setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0
    .param p1, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 131
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 132
    return-void
.end method

.method protected setSalt([B)V
    .locals 0
    .param p1, "salt"    # [B

    .line 103
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    .line 104
    return-void
.end method

.method protected setSpinCount(I)V
    .locals 0
    .param p1, "spinCount"    # I

    .line 119
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    .line 120
    return-void
.end method
