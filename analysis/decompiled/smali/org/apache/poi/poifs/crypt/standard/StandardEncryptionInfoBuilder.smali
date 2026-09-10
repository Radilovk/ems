.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "StandardEncryptionInfoBuilder.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# instance fields
.field decryptor:Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

.field encryptor:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

.field header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

.field info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getDecryptor()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptor()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    return-object v0
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public bridge synthetic getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getEncryptor()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptor()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getHeader()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    return-object v0
.end method

.method public bridge synthetic getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->getVerifier()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getVerifier()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    return-object v0
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 12
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "cipherAlgorithm"    # Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .param p3, "hashAlgorithm"    # Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .param p4, "keyBits"    # I
    .param p5, "blockSize"    # I
    .param p6, "chainingMode"    # Lorg/apache/poi/poifs/crypt/ChainingMode;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 59
    if-nez p2, :cond_0

    .line 60
    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 62
    :cond_0
    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v1, :cond_1

    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v1, :cond_1

    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v1, :cond_1

    .line 65
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Standard encryption only supports AES128/192/256."

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    if-nez p3, :cond_2

    .line 69
    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 71
    :cond_2
    sget-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    if-eq p3, v1, :cond_3

    .line 72
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Standard encryption only supports SHA-1."

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_3
    if-nez p6, :cond_4

    .line 75
    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    .line 77
    :cond_4
    sget-object v1, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-object/from16 v0, p6

    if-eq v0, v1, :cond_5

    .line 78
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Standard encryption only supports ECB chaining."

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_5
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_6

    .line 81
    iget v0, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    move/from16 p4, v0

    .line 83
    :cond_6
    const/4 v1, -0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 84
    iget v0, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    move/from16 p5, v0

    .line 86
    :cond_7
    const/4 v8, 0x0

    .line 87
    .local v8, "found":Z
    iget-object v7, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .local v7, "arr$":[I
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_9

    aget v10, v7, v9

    .line 88
    .local v10, "ks":I
    move/from16 v0, p4

    if-ne v10, v0, :cond_8

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v8, v1

    .line 87
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 88
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 90
    .end local v10    # "ks":I
    :cond_9
    if-nez v8, :cond_a

    .line 91
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeySize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed for Cipher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_a
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    .line 94
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    .line 95
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    .line 96
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->encryptor:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    .line 97
    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3
    .param p1, "info"    # Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .param p2, "dis"    # Lorg/apache/poi/util/LittleEndianInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    .line 44
    invoke-interface {p2}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 45
    .local v0, "hSize":I
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-direct {v1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    .line 46
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-direct {v1, p2, v2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 49
    :cond_0
    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {v1, p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>(Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;)V

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;->decryptor:Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    .line 51
    :cond_1
    return-void
.end method
