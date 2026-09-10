.class public final Lorg/apache/poi/hssf/record/RecordInputStream;
.super Ljava/lang/Object;
.source "RecordInputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;,
        Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DATA_LEN_NEEDS_TO_BE_READ:I = -0x1

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final INVALID_SID_VALUE:I = -0x1

.field public static final MAX_RECORD_DATA_SIZE:S = 0x2020s


# instance fields
.field private final _bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

.field private _currentDataLength:I

.field private _currentDataOffset:I

.field private _currentSid:I

.field private final _dataInput:Lorg/apache/poi/util/LittleEndianInput;

.field private _nextSid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/hssf/record/RecordInputStream;->$assertionsDisabled:Z

    .line 45
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-void

    :cond_0
    move v0, v1

    .line 36
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "key"    # Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    .param p3, "initialOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p2, :cond_0

    .line 108
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 109
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 115
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    .line 116
    return-void

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;-><init>(Ljava/io/InputStream;ILorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;)V

    .line 112
    .local v0, "bds":Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 113
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    goto :goto_0
.end method

.method private checkRecordPosition(I)V
    .locals 4
    .param p1, "requiredByteCount"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 208
    .local v0, "nAvailable":I
    if-lt v0, p1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    goto :goto_0

    .line 216
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to read requested ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 119
    instance-of v0, p0, Lorg/apache/poi/util/LittleEndianInput;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Lorg/apache/poi/util/LittleEndianInput;

    .line 124
    .end local p0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object p0

    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private isContinueNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 444
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-eq v1, v2, :cond_0

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be called before end of current record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 455
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readNextSid()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 168
    iget-object v3, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->available()I

    move-result v0

    .line 169
    .local v0, "nAvailable":I
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 170
    if-lez v0, :cond_0

    :cond_0
    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 177
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v3}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readRecordSID()I

    move-result v1

    .line 178
    .local v1, "result":I
    if-ne v1, v2, :cond_2

    .line 179
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found invalid sid ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_2
    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    goto :goto_0
.end method

.method private readStringCommon(IZ)Ljava/lang/String;
    .locals 9
    .param p1, "requestedLength"    # I
    .param p2, "pIsCompressedEncoding"    # Z

    .prologue
    const/4 v6, 0x1

    .line 341
    if-ltz p1, :cond_0

    const/high16 v7, 0x100000

    if-le p1, v7, :cond_1

    .line 342
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad requested string length ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 344
    :cond_1
    new-array v1, p1, [C

    .line 345
    .local v1, "buf":[C
    move v5, p2

    .line 346
    .local v5, "isCompressedEncoding":Z
    const/4 v4, 0x0

    .line 348
    .local v4, "curLen":I
    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 349
    .local v0, "availableChars":I
    :goto_1
    sub-int v7, p1, v4

    if-gt v7, v0, :cond_5

    .line 351
    :goto_2
    if-ge v4, p1, :cond_4

    .line 353
    if-eqz v5, :cond_3

    .line 354
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v6

    int-to-char v2, v6

    .line 358
    .local v2, "ch":C
    :goto_3
    aput-char v2, v1, v4

    .line 359
    add-int/lit8 v4, v4, 0x1

    .line 360
    goto :goto_2

    .line 348
    .end local v0    # "availableChars":I
    .end local v2    # "ch":C
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    goto :goto_1

    .line 356
    .restart local v0    # "availableChars":I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v6

    int-to-char v2, v6

    .restart local v2    # "ch":C
    goto :goto_3

    .line 361
    .end local v2    # "ch":C
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6

    .line 365
    :cond_5
    :goto_4
    if-lez v0, :cond_7

    .line 367
    if-eqz v5, :cond_6

    .line 368
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v7

    int-to-char v2, v7

    .line 372
    .restart local v2    # "ch":C
    :goto_5
    aput-char v2, v1, v4

    .line 373
    add-int/lit8 v4, v4, 0x1

    .line 374
    add-int/lit8 v0, v0, -0x1

    .line 375
    goto :goto_4

    .line 370
    .end local v2    # "ch":C
    :cond_6
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v7

    int-to-char v2, v7

    .restart local v2    # "ch":C
    goto :goto_5

    .line 376
    .end local v2    # "ch":C
    :cond_7
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 377
    new-instance v6, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected to find a ContinueRecord in order to read remaining "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " chars"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 380
    :cond_8
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v7

    if-eqz v7, :cond_9

    .line 381
    new-instance v6, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Odd number of bytes("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") left behind"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    :cond_9
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 385
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v3

    .line 386
    .local v3, "compressFlag":B
    sget-boolean v7, Lorg/apache/poi/hssf/record/RecordInputStream;->$assertionsDisabled:Z

    if-nez v7, :cond_a

    if-eqz v3, :cond_a

    if-eq v3, v6, :cond_a

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 387
    :cond_a
    if-nez v3, :cond_b

    move v5, v6

    .line 388
    :goto_6
    goto/16 :goto_0

    .line 387
    :cond_b
    const/4 v5, 0x0

    goto :goto_6
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    return v0
.end method

.method public getNextSid()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    int-to-short v0, v0

    return v0
.end method

.method public hasNextRecord()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 155
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-eq v0, v1, :cond_0

    .line 156
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;-><init>(II)V

    throw v0

    .line 158
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-eq v0, v2, :cond_1

    .line 159
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    .line 161
    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 190
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOF - next record not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-eq v0, v1, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call nextRecord() without checking hasNextRecord() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 198
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readDataSize()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    .line 199
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/16 v1, 0x2020

    if-le v0, v1, :cond_2

    .line 200
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "The content of an excel record cannot exceed 8224 bytes"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_2
    return-void
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    .local v0, "limit":I
    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 141
    .end local v0    # "limit":I
    :goto_0
    return v0

    .line 140
    .restart local v0    # "limit":I
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    goto :goto_0
.end method

.method public readAllContinuedRemainder()[B
    .locals 4

    .prologue
    .line 414
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4040

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 417
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v0

    .line 418
    .local v0, "b":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 419
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 422
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    goto :goto_0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 225
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 226
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    return v0
.end method

.method public readCompressedUnicode(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestedLength"    # I

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 5

    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v2

    .line 274
    .local v2, "valueLongBits":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 275
    .local v0, "result":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    :cond_0
    return-wide v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 284
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 285
    return-void
.end method

.method public readFully([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 288
    move v1, p3

    .line 289
    .local v1, "origLen":I
    if-nez p1, :cond_0

    .line 290
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 291
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_3

    .line 292
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 306
    .local v0, "nextChunk":I
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 307
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v2, p1, p2, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([BII)V

    .line 308
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 309
    add-int/2addr p2, v0

    .line 310
    sub-int/2addr p3, v0

    .line 295
    .end local v0    # "nextChunk":I
    :cond_3
    if-lez p3, :cond_5

    .line 296
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    .restart local v0    # "nextChunk":I
    if-nez v0, :cond_2

    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read the remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of the requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes. No further record exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 302
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 303
    sget-boolean v2, Lorg/apache/poi/hssf/record/RecordInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-gtz v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 312
    .end local v0    # "nextChunk":I
    :cond_5
    return-void
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 243
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 244
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 251
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 252
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readRemainder()[B
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    .line 397
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 398
    sget-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    .line 402
    :goto_0
    return-object v0

    .line 400
    :cond_0
    new-array v0, v1, [B

    .line 401
    .local v0, "result":[B
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto :goto_0
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 234
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 235
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 316
    .local v1, "requestedLength":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    .line 317
    .local v0, "compressFlag":B
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readUByte()I
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 268
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 269
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0
.end method

.method public readUnicodeLEString(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestedLength"    # I

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remaining()I
    .locals 2

    .prologue
    .line 432
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
