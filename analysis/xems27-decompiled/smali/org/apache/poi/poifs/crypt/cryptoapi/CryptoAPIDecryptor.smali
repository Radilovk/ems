.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "CryptoAPIDecryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;,
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V
    .locals 2
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    .line 115
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    .line 117
    return-void
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    .line 186
    .local v0, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 187
    .local v1, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 189
    .local v2, "hash":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 190
    .local v3, "skey":Ljavax/crypto/SecretKey;
    return-object v3
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 10
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

    .line 159
    invoke-interface {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 160
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    .line 161
    .local v1, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 162
    .local v2, "blockKey":[B
    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 163
    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 164
    .local v3, "hashAlg":Ljava/security/MessageDigest;
    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 165
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 166
    .local v4, "encKey":[B
    invoke-interface {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v5

    .line 167
    .local v5, "header":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v6

    .line 168
    .local v6, "keyBits":I
    div-int/lit8 v7, v6, 0x8

    invoke-static {v4, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    .line 169
    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    .line 170
    const/16 v7, 0x10

    invoke-static {v4, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    .line 172
    :cond_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 173
    .local v7, "key":Ljavax/crypto/SecretKey;
    if-nez p0, :cond_1

    .line 174
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v9, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0, p4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 178
    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 19
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v2}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 204
    .local v2, "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    const-string v3, "EncryptedSummary"

    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 205
    .local v3, "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    invoke-virtual {v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v4

    .line 206
    .local v4, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v5}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 208
    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 209
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V

    .line 210
    .local v6, "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    new-instance v7, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v7, v6}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 211
    .local v7, "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v9, v8

    .line 212
    .local v9, "streamDescriptorArrayOffset":I
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v10

    long-to-int v8, v10

    .line 213
    .local v8, "streamDescriptorArraySize":I
    add-int/lit8 v10, v9, -0x8

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->skip(J)J

    .line 214
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->setBlock(I)V

    .line 215
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v10

    long-to-int v11, v10

    .line 216
    .local v11, "encryptedStreamDescriptorCount":I
    new-array v10, v11, [Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    .line 217
    .local v10, "entries":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_0

    .line 218
    new-instance v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v13}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    .line 219
    .local v13, "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    aput-object v13, v10, v12

    .line 220
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v14

    long-to-int v15, v14

    iput v15, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    .line 221
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v14

    long-to-int v15, v14

    iput v15, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    .line 222
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v14

    iput v14, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    .line 223
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v14

    .line 224
    .local v14, "nameSize":I
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v15

    iput v15, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    .line 225
    sget-object v15, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    iget v1, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    invoke-virtual {v15, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    .line 226
    .local v1, "isStream":Z
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v15

    iput v15, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    .line 227
    invoke-static {v7, v14}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    .line 228
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    .line 229
    nop

    .line 217
    .end local v1    # "isStream":Z
    .end local v13    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v14    # "nameSize":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 232
    .end local v12    # "i":I
    :cond_0
    move-object v1, v10

    .local v1, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    array-length v12, v1

    .local v12, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v14, v1, v13

    .line 233
    .local v14, "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iget v15, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-virtual {v6, v15}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->seek(I)V

    .line 234
    iget v15, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {v6, v15}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->setBlock(I)V

    .line 235
    new-instance v15, Lorg/apache/poi/util/BoundedInputStream;

    move-object/from16 v16, v1

    .end local v1    # "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .local v16, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iget v1, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v4    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .local v17, "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .local v18, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    int-to-long v3, v1

    invoke-direct {v15, v6, v3, v4}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object v1, v15

    .line 236
    .local v1, "is":Ljava/io/InputStream;
    iget-object v3, v14, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 232
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v14    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_1

    .end local v16    # "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v17    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v18    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .local v1, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .restart local v3    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v4    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 239
    .end local v1    # "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v3    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .end local v4    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .end local v12    # "len$":I
    .end local v13    # "i$":I
    .restart local v17    # "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    .restart local v18    # "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    invoke-virtual {v7}, Lorg/apache/poi/util/LittleEndianInputStream;->close()V

    .line 240
    const/4 v1, 0x0

    .line 241
    .end local v6    # "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    .local v1, "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 242
    invoke-virtual {v2, v5}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    .line 244
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 245
    .local v3, "bis":Ljava/io/ByteArrayInputStream;
    return-object v3
.end method

.method public getLength()J
    .locals 5

    .line 252
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 255
    return-wide v0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 153
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 12
    .param p1, "password"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    .line 121
    .local v0, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 123
    .local v1, "skey":Ljavax/crypto/SecretKey;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v1, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 124
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v3

    .line 125
    .local v3, "encryptedVerifier":[B
    array-length v4, v3

    new-array v4, v4, [B

    .line 126
    .local v4, "verifier":[B
    array-length v6, v3

    invoke-virtual {v2, v3, v5, v6, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 127
    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->setVerifier([B)V

    .line 128
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v6

    .line 129
    .local v6, "encryptedVerifierHash":[B
    invoke-virtual {v2, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 130
    .local v7, "verifierHash":[B
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    .line 131
    .local v8, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 132
    .local v9, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 133
    .local v10, "calcVerifierHash":[B
    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v5, 0x1

    return v5

    .line 139
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

    .line 140
    return v5

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v3, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
