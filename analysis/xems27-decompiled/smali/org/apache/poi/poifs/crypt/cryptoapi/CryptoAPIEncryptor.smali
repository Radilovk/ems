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
    .locals 0

    .line 53
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    .line 58
    return-void
.end method


# virtual methods
.method public confirmPassword(Ljava/lang/String;)V
    .locals 10
    .param p1, "password"    # Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    .local v0, "r":Ljava/util/Random;
    const/16 v1, 0x10

    new-array v9, v1, [B

    .line 63
    .local v9, "salt":[B
    new-array v1, v1, [B

    .line 64
    .local v1, "verifier":[B
    invoke-virtual {v0, v9}, Ljava/util/Random;->nextBytes([B)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 66
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, v1

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    .line 67
    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "keySpec"    # [B
    .param p3, "keySalt"    # [B
    .param p4, "verifier"    # [B
    .param p5, "verifierSalt"    # [B
    .param p6, "integritySalt"    # [B

    .line 72
    nop

    .line 73
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v0

    .line 74
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    invoke-virtual {v0, p5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setSalt([B)V

    .line 75
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 76
    .local v1, "skey":Ljavax/crypto/SecretKey;
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    .line 78
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 79
    .local v2, "cipher":Ljavax/crypto/Cipher;
    array-length v4, p4

    new-array v4, v4, [B

    .line 80
    .local v4, "encryptedVerifier":[B
    array-length v5, p4

    invoke-virtual {v2, p4, v3, v5, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 81
    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifier([B)V

    .line 82
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    .line 83
    .local v3, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 84
    .local v5, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v5, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 85
    .local v6, "calcVerifierHash":[B
    invoke-virtual {v2, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 86
    .local v7, "encryptedVerifierHash":[B
    invoke-virtual {v0, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .end local v4    # "encryptedVerifier":[B
    .end local v5    # "hashAlg":Ljava/security/MessageDigest;
    .end local v6    # "calcVerifierHash":[B
    .end local v7    # "encryptedVerifierHash":[B
    nop

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    const-string v4, "Password confirmation failed"

    invoke-direct {v3, v4, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 5
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    .line 201
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    .line 202
    .local v0, "info":Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v1

    .line 203
    .local v1, "header":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v2

    .line 204
    .local v2, "verifier":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    new-instance v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V

    .line 212
    .local v3, "er":Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    const-string v4, "EncryptionInfo"

    invoke-static {p1, v4, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 213
    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 16
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 114
    move-object/from16 v1, p1

    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V

    move-object v3, v0

    .line 115
    .local v3, "bos":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;
    const/16 v0, 0x8

    new-array v4, v0, [B

    .line 117
    .local v4, "buf":[B
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 118
    const-string v6, "\u0005SummaryInformation"

    const-string v7, "\u0005DocumentSummaryInformation"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "entryNames":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v8, "descList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;>;"
    const/4 v9, 0x0

    .line 126
    .local v9, "block":I
    move-object v10, v6

    .local v10, "arr$":[Ljava/lang/String;
    array-length v11, v10

    .local v11, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    const/4 v13, 0x1

    if-ge v12, v11, :cond_1

    aget-object v14, v10, v12

    .line 127
    .local v14, "entryName":Ljava/lang/String;
    invoke-virtual {v1, v14}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    new-instance v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v15}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    .line 129
    .local v15, "descEntry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iput v9, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    .line 130
    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v0

    iput v0, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    .line 131
    iput-object v14, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    .line 132
    sget-object v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    invoke-virtual {v0, v5, v13}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    .line 133
    iput v5, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    .line 135
    invoke-virtual {v3, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 136
    invoke-virtual {v1, v14}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v0

    .line 137
    .local v0, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-static {v0, v3}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 140
    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v13

    iget v5, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    sub-int/2addr v13, v5

    iput v13, v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    .line 141
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v1, v14}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    .line 145
    add-int/lit8 v9, v9, 0x1

    .line 126
    .end local v0    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v14    # "entryName":Ljava/lang/String;
    .end local v15    # "descEntry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/16 v0, 0x8

    const/4 v5, 0x0

    goto :goto_0

    .line 148
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v5

    .line 150
    .local v5, "streamDescriptorArrayOffset":I
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 151
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v4, v0, v10, v11}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 152
    const/4 v10, 0x4

    invoke-virtual {v3, v4, v0, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 154
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    .line 155
    .local v11, "sde":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iget v12, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    int-to-long v14, v12

    const/4 v12, 0x0

    invoke-static {v4, v12, v14, v15}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 156
    invoke-virtual {v3, v4, v12, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 157
    iget v14, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    int-to-long v14, v14

    invoke-static {v4, v12, v14, v15}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 158
    invoke-virtual {v3, v4, v12, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 159
    iget v14, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-static {v4, v12, v14}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 160
    const/4 v14, 0x2

    invoke-virtual {v3, v4, v12, v14}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 161
    iget-object v15, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    int-to-short v15, v15

    invoke-static {v4, v12, v15}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    .line 162
    invoke-virtual {v3, v4, v12, v13}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 163
    iget v15, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    int-to-short v15, v15

    invoke-static {v4, v12, v15}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    .line 164
    invoke-virtual {v3, v4, v12, v13}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 165
    iget v15, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    int-to-long v13, v15

    invoke-static {v4, v12, v13, v14}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 166
    invoke-virtual {v3, v4, v12, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 167
    iget-object v13, v11, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-static {v13}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v13

    .line 168
    .local v13, "nameBytes":[B
    array-length v14, v13

    invoke-virtual {v3, v13, v12, v14}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 169
    invoke-static {v4, v12, v12}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 170
    const/4 v14, 0x2

    invoke-virtual {v3, v4, v12, v14}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 171
    .end local v11    # "sde":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v13    # "nameBytes":[B
    const/4 v13, 0x1

    goto :goto_2

    .line 154
    :cond_2
    const/4 v12, 0x0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->size()I

    move-result v11

    .line 174
    .local v11, "savedSize":I
    sub-int v13, v11, v5

    .line 175
    .local v13, "streamDescriptorArraySize":I
    int-to-long v14, v5

    invoke-static {v4, v12, v14, v15}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 176
    int-to-long v14, v13

    invoke-static {v4, v10, v14, v15}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 178
    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->reset()V

    .line 179
    invoke-virtual {v3, v12}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setBlock(I)V

    .line 180
    const/16 v0, 0x8

    invoke-virtual {v3, v4, v12, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->write([BII)V

    .line 181
    invoke-virtual {v3, v11}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->setSize(I)V

    .line 183
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CipherByteArrayOutputStream;->getBuf()[B

    move-result-object v10

    invoke-direct {v0, v10, v12, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-string v10, "EncryptedSummary"

    invoke-virtual {v1, v10, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 184
    invoke-static {}, Lorg/apache/poi/hpsf/PropertySetFactory;->newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v10

    .line 187
    .local v10, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    :try_start_0
    invoke-virtual {v10, v1, v7}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/WritingNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .line 192
    return-object v3

    .line 188
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 189
    .local v0, "e":Lorg/apache/poi/hpsf/WritingNotSupportedException;
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method protected getKeySizeInBytes()I
    .locals 1

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

    .line 102
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->builder:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method
