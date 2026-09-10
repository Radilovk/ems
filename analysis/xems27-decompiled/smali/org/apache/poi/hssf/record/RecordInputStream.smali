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
.field static final synthetic $assertionsDisabled:Z = false

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
    .locals 1

    .line 36
    nop

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "key"    # Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;
    .param p3, "initialOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p2, :cond_0

    .line 108
    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 109
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream$SimpleHeaderInput;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;-><init>(Ljava/io/InputStream;ILorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;)V

    .line 112
    .local v0, "bds":Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    .line 113
    iput-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    .line 115
    .end local v0    # "bds":Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    .line 116
    return-void
.end method

.method private checkRecordPosition(I)V
    .locals 4
    .param p1, "requiredByteCount"    # I

    .line 207
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 208
    .local v0, "nAvailable":I
    if-lt v0, p1, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 214
    return-void

    .line 216
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to read requested ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getLEI(Ljava/io/InputStream;)Lorg/apache/poi/util/LittleEndianInput;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 119
    instance-of v0, p0, Lorg/apache/poi/util/LittleEndianInput;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/util/LittleEndianInput;

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private isContinueNext()Z
    .locals 3

    .line 444
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be called before end of current record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 448
    return v1

    .line 455
    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private readNextSid()I
    .locals 5

    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->available()I

    move-result v0

    .line 169
    .local v0, "nAvailable":I
    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 170
    nop

    .line 175
    return v1

    .line 177
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_bhi:Lorg/apache/poi/hssf/record/BiffHeaderInput;

    invoke-interface {v2}, Lorg/apache/poi/hssf/record/BiffHeaderInput;->readRecordSID()I

    move-result v2

    .line 178
    .local v2, "result":I
    if-eq v2, v1, :cond_1

    .line 181
    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    .line 182
    return v2

    .line 179
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found invalid sid ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readStringCommon(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "requestedLength"    # I
    .param p2, "pIsCompressedEncoding"    # Z

    .line 341
    if-ltz p1, :cond_9

    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_9

    .line 344
    new-array v0, p1, [C

    .line 345
    .local v0, "buf":[C
    move v1, p2

    .line 346
    .local v1, "isCompressedEncoding":Z
    const/4 v2, 0x0

    .line 348
    .local v2, "curLen":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 v3, v3, 0x2

    .line 349
    .local v3, "availableChars":I
    :goto_1
    sub-int v4, p1, v2

    if-gt v4, v3, :cond_3

    .line 351
    :goto_2
    if-ge v2, p1, :cond_2

    .line 353
    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    int-to-char v4, v4

    .local v4, "ch":C
    goto :goto_3

    .line 356
    .end local v4    # "ch":C
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    int-to-char v4, v4

    .line 358
    .restart local v4    # "ch":C
    :goto_3
    aput-char v4, v0, v2

    .line 359
    nop

    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 360
    goto :goto_2

    .line 361
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 365
    :cond_3
    :goto_4
    if-lez v3, :cond_5

    .line 367
    if-eqz v1, :cond_4

    .line 368
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    int-to-char v4, v4

    .restart local v4    # "ch":C
    goto :goto_5

    .line 370
    .end local v4    # "ch":C
    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    int-to-char v4, v4

    .line 372
    .restart local v4    # "ch":C
    :goto_5
    aput-char v4, v0, v2

    .line 373
    add-int/lit8 v2, v2, 0x1

    .line 374
    nop

    .end local v4    # "ch":C
    add-int/lit8 v3, v3, -0x1

    .line 375
    goto :goto_4

    .line 376
    :cond_5
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 380
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    if-nez v4, :cond_7

    .line 383
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 385
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v4

    .line 386
    .local v4, "compressFlag":B
    nop

    .line 387
    if-nez v4, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    move v1, v5

    .line 388
    .end local v3    # "availableChars":I
    .end local v4    # "compressFlag":B
    goto :goto_0

    .line 381
    .restart local v3    # "availableChars":I
    :cond_7
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Odd number of bytes("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") left behind"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 377
    :cond_8
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected to find a ContinueRecord in order to read remaining "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " chars"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 342
    .end local v0    # "buf":[C
    .end local v1    # "isCompressedEncoding":Z
    .end local v2    # "curLen":I
    .end local v3    # "availableChars":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad requested string length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    return v0
.end method

.method public getNextSid()I
    .locals 1

    .line 462
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    return v0
.end method

.method public getSid()S
    .locals 1

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

    .line 155
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;

    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentSid:I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream$LeftoverDataException;-><init>(II)V

    throw v0

    .line 158
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-eq v0, v1, :cond_2

    .line 159
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readNextSid()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    .line 161
    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public nextRecord()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/record/RecordFormatException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_nextSid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 193
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    if-ne v2, v1, :cond_1

    .line 196
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
    const/16 v1, 0x2020

    if-gt v0, v1, :cond_0

    .line 203
    return-void

    .line 200
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "The content of an excel record cannot exceed 8224 bytes"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call nextRecord() without checking hasNextRecord() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOF - next record not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 136
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    .local v0, "limit":I
    if-nez v0, :cond_0

    .line 138
    const/4 v1, 0x0

    return v1

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 141
    return v0
.end method

.method public readAllContinuedRemainder()[B
    .locals 4

    .line 414
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4040

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 417
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v1

    .line 418
    .local v1, "b":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 419
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->isContinueNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    nop

    .line 424
    .end local v1    # "b":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 422
    .restart local v1    # "b":[B
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 423
    .end local v1    # "b":[B
    goto :goto_0
.end method

.method public readByte()B
    .locals 2

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 225
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 226
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    return v0
.end method

.method public readCompressedUnicode(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestedLength"    # I

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 4

    .line 273
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    .line 274
    .local v0, "valueLongBits":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 275
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 281
    return-wide v2
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 284
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 285
    return-void
.end method

.method public readFully([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 288
    move v0, p3

    .line 289
    .local v0, "origLen":I
    if-eqz p1, :cond_4

    .line 291
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_3

    .line 295
    :goto_0
    if-lez p3, :cond_2

    .line 296
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 297
    .local v1, "nextChunk":I
    if-nez v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 302
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 303
    goto :goto_1

    .line 299
    :cond_0
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read the remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes of the requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes. No further record exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 307
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v2, p1, p2, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([BII)V

    .line 308
    iget v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 309
    add-int/2addr p2, v1

    .line 310
    sub-int/2addr p3, v1

    .line 311
    .end local v1    # "nextChunk":I
    goto :goto_0

    .line 312
    :cond_2
    return-void

    .line 292
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 290
    :cond_4
    const/4 v1, 0x0

    throw v1
.end method

.method public readInt()I
    .locals 2

    .line 242
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 243
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 244
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 251
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 252
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readRemainder()[B
    .locals 2

    .line 396
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 397
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 398
    sget-object v1, Lorg/apache/poi/hssf/record/RecordInputStream;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 400
    :cond_0
    new-array v1, v0, [B

    .line 401
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 402
    return-object v1
.end method

.method public readShort()S
    .locals 2

    .line 233
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 234
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 235
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 316
    .local v0, "requestedLength":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    .line 317
    .local v1, "compressFlag":B
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUByte()I
    .locals 1

    .line 260
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 2

    .line 267
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->checkRecordPosition(I)V

    .line 268
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    .line 269
    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_dataInput:Lorg/apache/poi/util/LittleEndianInput;

    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    return v0
.end method

.method public readUnicodeLEString(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestedLength"    # I

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readStringCommon(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remaining()I
    .locals 2

    .line 432
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x0

    return v0

    .line 436
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/RecordInputStream;->_currentDataOffset:I

    sub-int/2addr v0, v1

    return v0
.end method
