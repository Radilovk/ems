.class public Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "StandardDecryptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 47
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V
    .locals 2
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    .line 52
    return-void
.end method

.method protected static fillAndXor([BB)[B
    .locals 4
    .param p0, "hash"    # [B
    .param p1, "fillByte"    # B

    .line 107
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 108
    .local v0, "buff":[B
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 111
    aget-byte v2, v0, v1

    aget-byte v3, p0, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 115
    .local v1, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    return-object v2
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;
    .locals 10
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .param p2, "keySize"    # I

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .line 87
    .local v0, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v1

    .line 89
    .local v1, "pwHash":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 90
    .local v2, "blockKey":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 92
    iget v4, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v1, v0, v2, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object v4

    .line 93
    .local v4, "finalHash":[B
    const/16 v5, 0x36

    invoke-static {v4, v5}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->fillAndXor([BB)[B

    move-result-object v5

    .line 94
    .local v5, "x1":[B
    const/16 v6, 0x5c

    invoke-static {v4, v6}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->fillAndXor([BB)[B

    move-result-object v6

    .line 96
    .local v6, "x2":[B
    array-length v7, v5

    array-length v8, v6

    add-int/2addr v7, v8

    new-array v7, v7, [B

    .line 97
    .local v7, "x3":[B
    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length v8, v5

    array-length v9, v6

    invoke-static {v6, v3, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    invoke-static {v7, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 102
    .local v3, "key":[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v9

    iget-object v9, v9, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v8, v3, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    .local v8, "skey":Ljavax/crypto/SecretKey;
    return-object v8
.end method

.method private getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .line 119
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    .line 120
    .local v0, "em":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    .line 121
    .local v1, "cm":Lorg/apache/poi/poifs/crypt/ChainingMode;
    nop

    .line 122
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v1, v3, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 10
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 128
    .local v0, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    .line 133
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    .line 134
    .local v1, "blockSize":I
    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    int-to-long v4, v1

    mul-long v2, v2, v4

    .line 135
    .local v2, "cipherLen":J
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 137
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Lorg/apache/poi/util/BoundedInputStream;

    invoke-direct {v5, v0, v2, v3}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 138
    .local v5, "boundedDis":Ljava/io/InputStream;
    new-instance v6, Lorg/apache/poi/util/BoundedInputStream;

    new-instance v7, Ljavax/crypto/CipherInputStream;

    invoke-direct {v7, v5, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iget-wide v8, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v6
.end method

.method public getLength()J
    .locals 5

    .line 145
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 146
    return-wide v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 56
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getKeySizeInBytes()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 57
    .local v1, "skey":Ljavax/crypto/SecretKey;
    invoke-direct {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 60
    .local v2, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    .line 61
    .local v3, "encryptedVerifier":[B
    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 62
    .local v4, "verifier":[B
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->setVerifier([B)V

    .line 63
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 64
    .local v5, "sha1":Ljava/security/MessageDigest;
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 65
    .local v6, "calcVerifierHash":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v7

    .line 66
    .local v7, "encryptedVerifierHash":[B
    invoke-virtual {v2, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 71
    .local v8, "decryptedVerifierHash":[B
    array-length v9, v6

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 73
    .local v9, "verifierHash":[B
    invoke-static {v6, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const/4 v10, 0x1

    return v10

    .line 77
    :cond_0
    const/4 v10, 0x0

    return v10

    .line 79
    .end local v3    # "encryptedVerifier":[B
    .end local v4    # "verifier":[B
    .end local v5    # "sha1":Ljava/security/MessageDigest;
    .end local v6    # "calcVerifierHash":[B
    .end local v7    # "encryptedVerifierHash":[B
    .end local v8    # "decryptedVerifierHash":[B
    .end local v9    # "verifierHash":[B
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v4, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
