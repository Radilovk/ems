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
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;)V
    .locals 2
    .param p1, "builder"    # Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    .line 117
    return-void
.end method

.method protected static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "ver"    # Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    .prologue
    const/16 v5, 0xff

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 183
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    .line 186
    .local v2, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 187
    .local v1, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 189
    .local v0, "hash":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 190
    .local v3, "skey":Ljavax/crypto/SecretKey;
    return-object v3
.end method

.method protected static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 14
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
    .line 159
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v9

    .line 160
    .local v9, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v5

    .line 161
    .local v5, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    const/4 v10, 0x4

    new-array v2, v10, [B

    .line 162
    .local v2, "blockKey":[B
    const/4 v10, 0x0

    int-to-long v12, p1

    invoke-static {v2, v10, v12, v13}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    .line 163
    invoke-static {v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 164
    .local v4, "hashAlg":Ljava/security/MessageDigest;
    invoke-interface/range {p3 .. p3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 165
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 166
    .local v3, "encKey":[B
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v6

    .line 167
    .local v6, "header":Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v8

    .line 168
    .local v8, "keyBits":I
    div-int/lit8 v10, v8, 0x8

    invoke-static {v3, v10}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v3

    .line 169
    const/16 v10, 0x28

    if-ne v8, v10, :cond_0

    .line 170
    const/16 v10, 0x10

    invoke-static {v3, v10}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v3

    .line 172
    :cond_0
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {p3 .. p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v3, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 173
    .local v7, "key":Ljavax/crypto/SecretKey;
    if-nez p0, :cond_1

    .line 174
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v0, p4

    invoke-static {v7, v10, v11, v12, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 178
    :goto_0
    return-object p0

    .line 176
    :cond_1
    move/from16 v0, p4

    invoke-virtual {p0, v0, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0
.end method


# virtual methods
.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 26
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v12, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v12}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V

    .line 204
    .local v12, "fsOut":Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    const-string v23, "EncryptedSummary"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 205
    .local v11, "es":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v7

    .line 206
    .local v7, "dis":Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 207
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v7, v6}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 208
    invoke-virtual {v7}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    .line 209
    new-instance v20, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V

    .line 210
    .local v20, "sbis":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;
    new-instance v17, Lorg/apache/poi/util/LittleEndianInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 211
    .local v17, "leis":Lorg/apache/poi/util/LittleEndianInputStream;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v21, v0

    .line 212
    .local v21, "streamDescriptorArrayOffset":I
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    .line 213
    .local v22, "streamDescriptorArraySize":I
    add-int/lit8 v23, v21, -0x8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->skip(J)J

    .line 214
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->setBlock(I)V

    .line 215
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 216
    .local v8, "encryptedStreamDescriptorCount":I
    new-array v9, v8, [Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    .line 217
    .local v9, "entries":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v8, :cond_1

    .line 218
    new-instance v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    .line 219
    .local v10, "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    aput-object v10, v9, v13

    .line 220
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    .line 221
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    .line 222
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v23

    move/from16 v0, v23

    iput v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    .line 223
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v19

    .line 224
    .local v19, "nameSize":I
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v23

    move/from16 v0, v23

    iput v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    .line 225
    sget-object v23, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    iget v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v16

    .line 226
    .local v16, "isStream":Z
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v23

    move/from16 v0, v23

    iput v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    .line 227
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    .line 228
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    .line 229
    sget-boolean v23, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->$assertionsDisabled:Z

    if-nez v23, :cond_0

    iget-object v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    new-instance v23, Ljava/lang/AssertionError;

    invoke-direct/range {v23 .. v23}, Ljava/lang/AssertionError;-><init>()V

    throw v23

    .line 217
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 232
    .end local v10    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v16    # "isStream":Z
    .end local v19    # "nameSize":I
    :cond_1
    move-object v4, v9

    .local v4, "arr$":[Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_2

    aget-object v10, v4, v14

    .line 233
    .restart local v10    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    iget v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->seek(I)V

    .line 234
    iget v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$SeekableByteArrayInputStream;->setBlock(I)V

    .line 235
    new-instance v15, Lorg/apache/poi/util/BoundedInputStream;

    iget v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-direct {v15, v0, v1, v2}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 236
    .local v15, "is":Ljava/io/InputStream;
    iget-object v0, v10, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v15, v0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 232
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 239
    .end local v10    # "entry":Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
    .end local v15    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/util/LittleEndianInputStream;->close()V

    .line 240
    const/16 v20, 0x0

    .line 241
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 242
    invoke-virtual {v12, v6}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->writeFilesystem(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    .line 244
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 245
    .local v5, "bis":Ljava/io/ByteArrayInputStream;
    return-object v5
.end method

.method public getLength()J
    .locals 4

    .prologue
    .line 252
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->_length:J

    return-wide v0
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
    .locals 16
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    invoke-interface {v12}, Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v9

    .line 121
    .local v9, "ver":Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 123
    .local v8, "skey":Ljavax/crypto/SecretKey;
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->builder:Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;

    const/4 v15, 0x2

    invoke-static {v12, v13, v14, v8, v15}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 124
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v4

    .line 125
    .local v4, "encryptedVerifier":[B
    array-length v12, v4

    new-array v10, v12, [B

    .line 126
    .local v10, "verifier":[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-virtual {v2, v4, v12, v13, v10}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 127
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->setVerifier([B)V

    .line 128
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v5

    .line 129
    .local v5, "encryptedVerifierHash":[B
    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    .line 130
    .local v11, "verifierHash":[B
    invoke-virtual {v9}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v7

    .line 131
    .local v7, "hashAlgo":Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    invoke-static {v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 132
    .local v6, "hashAlg":Ljava/security/MessageDigest;
    invoke-virtual {v6, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 133
    .local v1, "calcVerifierHash":[B
    invoke-static {v1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 134
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v12, 0x1

    .line 140
    :goto_0
    return v12

    .line 137
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

    .line 138
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v12, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v12, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 140
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
