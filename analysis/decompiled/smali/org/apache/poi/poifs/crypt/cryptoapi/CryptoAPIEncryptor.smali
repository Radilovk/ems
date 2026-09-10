.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "CryptoAPIEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    .line 58
    return-void
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x10

    const/4 v2, 0x0

    .line 61
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    .local v7, "r":Ljava/util/Random;
    new-array v5, v0, [B

    .line 63
    .local v5, "salt":[B
    new-array v4, v0, [B

    .line 64
    .local v4, "verifier":[B
    invoke-virtual {v7, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 65
    invoke-virtual {v7, v4}, Ljava/util/Random;->nextBytes([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v6, v2

    .line 66
    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 67
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
    .line 72
    sget-boolean v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 73
    :cond_1
    iget-object v10, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v9

    .line 74
    .local v9, "ver":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setSalt([B)V

    .line 75
    invoke-static {p1, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 76
    .local v8, "skey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 78
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0, v10, v11}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 79
    .local v2, "cipher":Ljavax/crypto/Cipher;
    move-object/from16 v0, p4

    array-length v10, v0

    new-array v4, v10, [B

    .line 80
    .local v4, "encryptedVerifier":[B
    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v10, v11, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 81
    invoke-virtual {v9, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 82
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v7

    .line 83
    .local v7, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 84
    .local v6, "hashAlg":Ljava/security/MessageDigest;
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 85
    .local v1, "calcVerifierHash":[B
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 86
    .local v5, "encryptedVerifierHash":[B
    invoke-virtual {v9, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 87
    .end local v1    # "calcVerifierHash":[B
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "encryptedVerifier":[B
    .end local v5    # "encryptedVerifierHash":[B
    .end local v6    # "hashAlg":Ljava/security/MessageDigest;
    .end local v7    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    :catch_0
    move-exception v3

    .line 88
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
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 201
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    .line 202
    .local v2, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v1

    .line 203
    .local v1, "header":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v3

    .line 204
    .local v3, "verifier":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V

    .line 212
    .local v0, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v4, "EncryptionInfo"

    invoke-static {p1, v4, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 213
    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 26
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V

    .line 115
    .local v6, "bos":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;
    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v7, v0, [B

    .line 117
    .local v7, "buf":[B
    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 118
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v14, v0, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "\u0005SummaryInformation"

    aput-object v23, v14, v22

    const/16 v22, 0x1

    const-string v23, "\u0005DocumentSummaryInformation"

    aput-object v23, v14, v22

    .line 123
    .local v14, "entryNames":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v9, "descList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;>;"
    const/4 v5, 0x0

    .line 126
    .local v5, "block":I
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    aget-object v13, v4, v15

    .line 127
    .local v13, "entryName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    .line 129
    .local v8, "descEntry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iput v5, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    .line 130
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v22

    move/from16 v0, v22

    iput v0, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    .line 131
    iput-object v13, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    .line 132
    sget-object v22, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    .line 133
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    .line 135
    invoke-virtual {v6, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v10

    .line 137
    .local v10, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-static {v10, v6}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {v10}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 140
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v22

    iget v0, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    .line 141
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    .end local v8    # "descEntry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v10    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v13    # "entryName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v20

    .line 150
    .local v20, "streamDescriptorArrayOffset":I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 151
    const/16 v22, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v7, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 152
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 154
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    .line 155
    .local v19, "sde":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v7, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 156
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 157
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v7, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 158
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 159
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v7, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 160
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 161
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v7, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    .line 162
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 163
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v7, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    .line 164
    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 165
    const/16 v22, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v7, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 166
    const/16 v22, 0x0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 167
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v17

    .line 168
    .local v17, "nameBytes":[B
    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 169
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v7, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 170
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    goto/16 :goto_2

    .line 173
    .end local v17    # "nameBytes":[B
    .end local v19    # "sde":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v18

    .line 174
    .local v18, "savedSize":I
    sub-int v21, v18, v20

    .line 175
    .local v21, "streamDescriptorArraySize":I
    const/16 v22, 0x0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v7, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 176
    const/16 v22, 0x4

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-static {v7, v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 178
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->reset()V

    .line 179
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 180
    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v7, v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 181
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setSize(I)V

    .line 183
    const-string v22, "EncryptedSummary"

    new-instance v23, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->getBuf()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 184
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v11

    .line 187
    .local v11, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    :try_start_0
    const-string v22, "\u0005DocumentSummaryInformation"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-object v6

    .line 188
    :catch_0
    move-exception v12

    .line 189
    .local v12, "e":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    new-instance v22, Ljava/io/IOException;

    move-object/from16 v0, v22

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v22
.end method

.method protected getKeySizeInBytes()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 3
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "block"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
