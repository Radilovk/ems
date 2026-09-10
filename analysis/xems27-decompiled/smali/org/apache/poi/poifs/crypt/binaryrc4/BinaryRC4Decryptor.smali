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

    .line 37
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    return-object v0
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 8
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 102
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .line 104
    .local v0, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 105
    .local v1, "hashAlg":Ljava/security/MessageDigest;
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 106
    .local v3, "hash":[B
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v4

    .line 107
    .local v4, "salt":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 108
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x10

    const/4 v7, 0x5

    if-ge v5, v6, :cond_1

    .line 109
    invoke-virtual {v1, v3, v2, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 110
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v5    # "i":I
    :cond_1
    new-array v3, v7, [B

    .line 114
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v2, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v5

    iget-object v5, v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 116
    .local v2, "skey":Ljavax/crypto/SecretKey;
    return-object v2
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 8
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

    .line 84
    invoke-interface {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 85
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    .line 86
    .local v1, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 87
    .local v2, "blockKey":[B
    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 88
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v1, v2, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v3

    .line 89
    .local v3, "encKey":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    .local v4, "key":Ljavax/crypto/SecretKey;
    if-nez p0, :cond_0

    .line 91
    invoke-interface {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v5

    .line 92
    .local v5, "em":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v7, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 93
    .end local v5    # "em":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0, p4, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    :goto_0
    return-object p0
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

    .line 121
    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 122
    .local v0, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    .line 123
    new-instance v1, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V

    .line 124
    .local v1, "cipherStream":Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;
    return-object v1
.end method

.method public getLength()J
    .locals 5

    .line 128
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 132
    return-wide v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 59
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 61
    .local v1, "skey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v1, v4}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 62
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    .line 63
    .local v3, "encryptedVerifier":[B
    array-length v4, v3

    new-array v4, v4, [B

    .line 64
    .local v4, "verifier":[B
    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 65
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->setVerifier([B)V

    .line 66
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v6

    .line 67
    .local v6, "encryptedVerifierHash":[B
    invoke-virtual {v2, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 68
    .local v7, "verifierHash":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    .line 69
    .local v8, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 70
    .local v9, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 71
    .local v10, "calcVerifierHash":[B
    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v5, 0x1

    return v5

    .line 77
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "encryptedVerifier":[B
    .end local v4    # "verifier":[B
    .end local v6    # "encryptedVerifierHash":[B
    .end local v7    # "verifierHash":[B
    .end local v8    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v9    # "hashAlg":Ljava/security/MessageDigest;
    .end local v10    # "calcVerifierHash":[B
    :cond_0
    nop

    .line 78
    return v5

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
