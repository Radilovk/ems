.class final Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
.super Ljava/lang/Object;
.source "RecordFactoryInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamEncryptionInfo"
.end annotation


# static fields
.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

.field private final _hasBOFRecord:Z

.field private final _initialRecordsSize:I

.field private final _lastRecord:Lorg/apache/poi/hssf/record/Record;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;Ljava/util/List;)V
    .locals 6
    .param p1, "rs"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/RecordInputStream;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "outputRecs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 64
    .local v0, "recSize":I
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 65
    .local v1, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    instance-of v3, v1, Lorg/apache/poi/hssf/record/BOFRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 68
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 74
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 76
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    instance-of v5, v1, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 82
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v5

    add-int/2addr v0, v5

    .line 84
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    instance-of v5, v1, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz v5, :cond_1

    .line 90
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {p2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    goto :goto_0

    .line 96
    :cond_1
    instance-of v3, v1, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez v3, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Nothing between BOF and EOF"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_3
    iput-boolean v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    .line 109
    :cond_4
    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_initialRecordsSize:I

    .line 110
    iput-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 111
    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 112
    return-void
.end method


# virtual methods
.method public createDecryptingStream(Ljava/io/InputStream;)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 10
    .param p1, "original"    # Ljava/io/InputStream;

    .line 115
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    .line 116
    .local v0, "fpr":Lorg/apache/poi/hssf/record/FilePassRecord;
    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "userPassword":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 118
    const-string v1, "VelvetSweatshop"

    .line 122
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v2

    const-string v3, "Default"

    const-string v4, "Supplied"

    const-string v5, "VelvetSweatshop"

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getRc4KeyData()Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;

    move-result-object v2

    .line 124
    .local v2, "rc4":Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getSalt()[B

    move-result-object v6

    invoke-static {v1, v6}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->create(Ljava/lang/String;[B)Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;

    move-result-object v6

    .line 125
    .local v6, "rc4key":Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;
    move-object v7, v6

    .line 126
    .local v7, "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getEncryptedVerifier()[B

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;->getEncryptedVerifierHash()[B

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;->validate([B[B)Z

    move-result v8

    if-nez v8, :cond_2

    .line 127
    new-instance v8, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " password is invalid for salt/verifier/verifierHash"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 131
    .end local v2    # "rc4":Lorg/apache/poi/hssf/record/FilePassRecord$Rc4KeyData;
    .end local v6    # "rc4key":Lorg/apache/poi/hssf/record/crypto/Biff8RC4Key;
    :cond_2
    goto :goto_2

    .end local v7    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getXorKeyData()Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 132
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getXorKeyData()Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;

    move-result-object v2

    .line 133
    .local v2, "xor":Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->getKey()I

    move-result v6

    invoke-static {v1, v6}, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;->create(Ljava/lang/String;I)Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;

    move-result-object v6

    .line 134
    .local v6, "xorKey":Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;
    move-object v7, v6

    .line 136
    .restart local v7    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;->getVerifier()I

    move-result v8

    invoke-virtual {v6, v1, v8}, Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;->validate(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 137
    new-instance v8, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " password is invalid for key/verifier"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 141
    .end local v2    # "xor":Lorg/apache/poi/hssf/record/FilePassRecord$XorKeyData;
    .end local v6    # "xorKey":Lorg/apache/poi/hssf/record/crypto/Biff8XORKey;
    :cond_5
    nop

    .line 145
    :goto_2
    new-instance v2, Lorg/apache/poi/hssf/record/RecordInputStream;

    iget v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_initialRecordsSize:I

    invoke-direct {v2, p1, v7, v3}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;I)V

    return-object v2

    .line 142
    .end local v7    # "key":Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    :cond_6
    new-instance v2, Lorg/apache/poi/EncryptedDocumentException;

    const-string v3, "Crypto API not yet supported."

    invoke-direct {v2, v3}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLastRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    return-object v0
.end method

.method public hasBOFRecord()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    return v0
.end method

.method public hasEncryption()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
