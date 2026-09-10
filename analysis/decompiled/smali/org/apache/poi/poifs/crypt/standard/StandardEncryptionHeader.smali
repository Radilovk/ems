.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "StandardEncryptionHeader.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 6
    .param p1, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p2, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p3, "keyBits"    # I
    .param p4, "blockSize"    # I
    .param p5, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 80
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 81
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setKeySize(I)V

    .line 82
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setBlockSize(I)V

    .line 83
    iget-object v2, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    .line 84
    sget-object v2, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagCryptoAPI:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->flagAES:Lorg/apache/poi/util/BitField;

    iget-object v4, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    sget-object v5, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    if-ne v4, v5, :cond_0

    :goto_0
    invoke-virtual {v3, v1, v0}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setFlags(I)V

    .line 88
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 6
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    .line 39
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setFlags(I)V

    .line 40
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setSizeExtra(I)V

    .line 41
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    .line 42
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->fromEcmaId(I)Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    .line 43
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v3

    .line 44
    .local v3, "keySize":I
    if-nez v3, :cond_0

    .line 48
    const/16 v3, 0x28

    .line 50
    :cond_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setKeySize(I)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getKeySize()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setBlockSize(I)V

    .line 52
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/CipherProvider;->fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    .line 54
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-object v4, p1

    .line 58
    check-cast v4, Ljava/io/InputStream;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    .line 59
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v2

    .local v2, "checkForSalt":I
    move-object v4, p1

    .line 60
    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 62
    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    .line 63
    const-string v4, ""

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 74
    :goto_0
    sget-object v4, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    .line 75
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setKeySalt([B)V

    .line 76
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v4

    int-to-char v1, v4

    .line 68
    .local v1, "c":C
    if-nez v1, :cond_2

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->setCspName(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 6
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v3

    .line 95
    .local v3, "startIdx":I
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v2

    .line 96
    .local v2, "sizeOutput":Lorg/apache/poi/util/LittleEndianOutput;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getFlags()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 97
    invoke-virtual {p1, v5}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 98
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getHashAlgorithmEx()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 100
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getKeySize()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v4

    iget v4, v4, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {p1, v5}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 103
    invoke-virtual {p1, v5}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getCspName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "cspName":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;

    move-result-object v4

    iget-object v0, v4, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    .line 106
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 107
    invoke-virtual {p1, v5}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 108
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v1, v4, -0x4

    .line 109
    .local v1, "headerSize":I
    invoke-interface {v2, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 110
    return-void
.end method
