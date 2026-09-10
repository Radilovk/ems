.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "StandardEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
    }
.end annotation


# instance fields
.field private final builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    .param p1, "x1"    # Ljavax/crypto/SecretKey;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method private getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 7
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "padding"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v6

    .line 111
    .local v6, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x10

    const/4 v2, 0x0

    .line 63
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 64
    .local v7, "r":Ljava/util/Random;
    new-array v4, v0, [B

    .local v4, "salt":[B
    new-array v5, v0, [B

    .line 65
    .local v5, "verifier":[B
    invoke-virtual {v7, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 66
    invoke-virtual {v7, v5}, Ljava/util/Random;->nextBytes([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v6, v2

    .line 68
    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 69
    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keySpec"    # [B
    .param p3, "keySalt"    # [B
    .param p4, "verifier"    # [B
    .param p5, "verifierSalt"    # [B
    .param p6, "integritySalt"    # [B

    .prologue
    .line 79
    iget-object v10, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v9

    .line 81
    .local v9, "ver":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getKeySizeInBytes()I

    move-result v10

    invoke-static {p1, v9, v10}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 83
    .local v8, "secretKey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, v8}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 84
    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 87
    .local v2, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 88
    .local v5, "encryptedVerifier":[B
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 89
    .local v7, "hashAlgo":Ljava/security/MessageDigest;
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 98
    .local v1, "calcVerifierHash":[B
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v10

    iget v4, v10, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    .line 99
    .local v4, "encVerHashSize":I
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 101
    .local v6, "encryptedVerifierHash":[B
    invoke-virtual {v9, v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 102
    invoke-virtual {v9, v6}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 103
    .end local v1    # "calcVerifierHash":[B
    .end local v4    # "encVerHashSize":I
    .end local v5    # "encryptedVerifier":[B
    .end local v6    # "encryptedVerifierHash":[B
    .end local v7    # "hashAlgo":Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 104
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
    .line 200
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    .line 201
    .local v2, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-result-object v1

    .line 202
    .local v1, "header":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v3

    .line 204
    .local v3, "verifier":Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;)V

    .line 214
    .local v0, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v4, "EncryptionInfo"

    invoke-static {p1, v4, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 217
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
    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 117
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 118
    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 119
    .local v0, "countStream":Ljava/io/OutputStream;
    return-object v0
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->builder:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
