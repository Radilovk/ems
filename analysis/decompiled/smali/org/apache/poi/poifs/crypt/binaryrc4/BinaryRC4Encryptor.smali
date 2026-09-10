.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "BinaryRC4Encryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
    }
.end annotation


# instance fields
.field private final builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    return-object v0
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x10

    const/4 v2, 0x0

    .line 71
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 72
    .local v7, "r":Ljava/util/Random;
    new-array v5, v0, [B

    .line 73
    .local v5, "salt":[B
    new-array v4, v0, [B

    .line 74
    .local v4, "verifier":[B
    invoke-virtual {v7, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 75
    invoke-virtual {v7, v4}, Ljava/util/Random;->nextBytes([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v6, v2

    .line 76
    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 77
    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keySpec"    # [B
    .param p3, "keySalt"    # [B
    .param p4, "verifier"    # [B
    .param p5, "verifierSalt"    # [B
    .param p6, "integritySalt"    # [B

    .prologue
    .line 82
    iget-object v10, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    move-result-object v9

    .line 83
    .local v9, "ver":Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSalt([B)V

    .line 84
    invoke-static {p1, v9}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 85
    .local v8, "skey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, v8}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 87
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    iget-object v12, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v8, v13}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 88
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/16 v10, 0x10

    new-array v4, v10, [B

    .line 89
    .local v4, "encryptedVerifier":[B
    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v10, v11, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 90
    invoke-virtual {v9, v4}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifier([B)V

    .line 91
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v7

    .line 93
    .local v7, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 94
    .local v6, "hashAlg":Ljava/security/MessageDigest;
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 95
    .local v1, "calcVerifierHash":[B
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 96
    .local v5, "encryptedVerifierHash":[B
    invoke-virtual {v9, v5}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 97
    .end local v1    # "calcVerifierHash":[B
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "encryptedVerifier":[B
    .end local v5    # "encryptedVerifierHash":[B
    .end local v6    # "hashAlg":Ljava/security/MessageDigest;
    .end local v7    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v10, Lorg/apache/poi/EncryptedDocumentException;

    const-string v11, "Password confirmation failed"

    invoke-direct {v10, v11, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 5
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 114
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    .line 115
    .local v2, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object v1

    .line 116
    .local v1, "header":Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    move-result-object v3

    .line 117
    .local v3, "verifier":Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;)V

    .line 125
    .local v0, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v4, "EncryptionInfo"

    invoke-static {p1, v4, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 126
    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 105
    .local v0, "countStream":Ljava/io/OutputStream;
    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->builder:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
