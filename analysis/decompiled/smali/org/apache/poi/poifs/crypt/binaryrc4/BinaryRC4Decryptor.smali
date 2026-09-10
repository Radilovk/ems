.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "BinaryRC4Decryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;
    }
.end annotation


# instance fields
.field private _length:J


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;)V
    .locals 2
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionInfoBuilder;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;)Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    return-object v0
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_0

    .line 102
    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    .line 104
    .local v2, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 105
    .local v1, "hashAlg":Ljava/security/MessageDigest;
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 106
    .local v0, "hash":[B
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v4

    .line 107
    .local v4, "salt":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 108
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_1

    .line 109
    invoke-virtual {v1, v0, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 110
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-array v0, v8, [B

    .line 114
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v6

    iget-object v6, v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 116
    .local v5, "skey":Ljavax/crypto/SecretKey;
    return-object v5
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 11
    .param p0, "cipher"    # Ljavax/crypto/Cipher;
    .param p1, "block"    # I
    .param p2, "builder"    # Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;
    .param p3, "skey"    # Ljavax/crypto/SecretKey;
    .param p4, "encryptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 84
    invoke-interface {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v5

    .line 85
    .local v5, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    .line 86
    .local v3, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 87
    .local v0, "blockKey":[B
    const/4 v6, 0x0

    int-to-long v8, p1

    invoke-static {v0, v6, v8, v9}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 88
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v3, v0, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v2

    .line 89
    .local v2, "encKey":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    .local v4, "key":Ljavax/crypto/SecretKey;
    if-nez p0, :cond_0

    .line 91
    invoke-interface {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    .line 92
    .local v1, "em":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v6

    invoke-static {v4, v6, v10, v10, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 96
    .end local v1    # "em":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    :goto_0
    return-object p0

    .line 94
    :cond_0
    invoke-virtual {p0, p4, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0
.end method


# virtual methods
.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 4
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v2, "EncryptedPackage"

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v1

    .line 122
    .local v1, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    .line 123
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V

    .line 124
    .local v0, "cipherStream":Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;
    return-object v0
.end method

.method public getLength()J
    .locals 4

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    return-wide v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v12}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v9

    .line 59
    .local v9, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 61
    .local v8, "skey":Ljavax/crypto/SecretKey;
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    const/4 v15, 0x2

    invoke-static {v12, v13, v14, v8, v15}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 62
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v4

    .line 63
    .local v4, "encryptedVerifier":[B
    array-length v12, v4

    new-array v10, v12, [B

    .line 64
    .local v10, "verifier":[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-virtual {v2, v4, v12, v13, v10}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 65
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->setVerifier([B)V

    .line 66
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v5

    .line 67
    .local v5, "encryptedVerifierHash":[B
    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    .line 68
    .local v11, "verifierHash":[B
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v7

    .line 69
    .local v7, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 70
    .local v6, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v6, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 71
    .local v1, "calcVerifierHash":[B
    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 72
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v12, 0x1

    .line 78
    :goto_0
    return v12

    .line 75
    .end local v1    # "calcVerifierHash":[B
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "encryptedVerifier":[B
    .end local v5    # "encryptedVerifierHash":[B
    .end local v6    # "hashAlg":Ljava/security/MessageDigest;
    .end local v7    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v10    # "verifier":[B
    .end local v11    # "verifierHash":[B
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v12, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v12, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 78
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "calcVerifierHash":[B
    .restart local v2    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "encryptedVerifier":[B
    .restart local v5    # "encryptedVerifierHash":[B
    .restart local v6    # "hashAlg":Ljava/security/MessageDigest;
    .restart local v7    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .restart local v10    # "verifier":[B
    .restart local v11    # "verifierHash":[B
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method
