.class public final Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
.super Ljava/lang/Object;
.source "RecordFactoryInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
    }
.end annotation


# instance fields
.field private _bofDepth:I

.field private _lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

.field private _lastRecord:Lorg/apache/poi/hssf/record/Record;

.field private _lastRecordWasEOFLevelZero:Z

.field private final _recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private final _shouldIncludeContinueRecords:Z

.field private _unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

.field private _unreadRecordIndex:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "shouldIncludeContinueRecords"    # Z

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 188
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 192
    new-instance v3, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    .line 205
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    .line 206
    .local v1, "rs":Lorg/apache/poi/hssf/record/RecordInputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Ljava/util/List;)V

    .line 208
    .local v2, "sei":Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->hasEncryption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->createDecryptingStream(Ljava/io/InputStream;)Lorg/apache/poi/hssf/record/RecordInputStream;

    move-result-object v1

    .line 214
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/poi/hssf/record/Record;

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 216
    iget-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 217
    iput v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 219
    :cond_1
    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 220
    iput-boolean p2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_shouldIncludeContinueRecords:Z

    .line 221
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->getLastRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 240
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->hasBOFRecord()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 241
    iput-boolean v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    .line 242
    return-void

    :cond_2
    move v3, v4

    .line 240
    goto :goto_0
.end method

.method private getNextUnreadRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    if-eqz v2, :cond_0

    .line 291
    iget v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 292
    .local v0, "ix":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 293
    iget-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    aget-object v1, v2, v0

    .line 294
    .local v1, "result":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 300
    .end local v0    # "ix":I
    .end local v1    # "result":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    :goto_0
    return-object v1

    .line 297
    .restart local v0    # "ix":I
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 298
    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    goto :goto_0
.end method

.method private readNextRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-static {v4}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    .line 311
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    iput-boolean v7, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    .line 313
    instance-of v4, v2, Lorg/apache/poi/hssf/record/BOFRecord;

    if-eqz v4, :cond_1

    .line 314
    iget v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 388
    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    :goto_0
    return-object v2

    .line 318
    .restart local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    instance-of v4, v2, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v4, :cond_2

    .line 319
    iget v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    .line 320
    iget v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_bofDepth:I

    if-ge v4, v6, :cond_0

    .line 321
    iput-boolean v6, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    goto :goto_0

    .line 327
    :cond_2
    instance-of v4, v2, Lorg/apache/poi/hssf/record/DBCellRecord;

    if-eqz v4, :cond_3

    move-object v2, v5

    .line 329
    goto :goto_0

    .line 332
    :cond_3
    instance-of v4, v2, Lorg/apache/poi/hssf/record/RKRecord;

    if-eqz v4, :cond_4

    .line 333
    check-cast v2, Lorg/apache/poi/hssf/record/RKRecord;

    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/RecordFactory;->convertToNumberRecord(Lorg/apache/poi/hssf/record/RKRecord;)Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v2

    goto :goto_0

    .line 336
    .restart local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_4
    instance-of v4, v2, Lorg/apache/poi/hssf/record/MulRKRecord;

    if-eqz v4, :cond_5

    .line 337
    check-cast v2, Lorg/apache/poi/hssf/record/MulRKRecord;

    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-static {v2}, Lorg/apache/poi/hssf/record/RecordFactory;->convertRKRecords(Lorg/apache/poi/hssf/record/MulRKRecord;)[Lorg/apache/poi/hssf/record/NumberRecord;

    move-result-object v3

    .line 339
    .local v3, "records":[Lorg/apache/poi/hssf/record/Record;
    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordBuffer:[Lorg/apache/poi/hssf/record/Record;

    .line 340
    iput v6, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_unreadRecordIndex:I

    .line 341
    aget-object v2, v3, v7

    goto :goto_0

    .line 344
    .end local v3    # "records":[Lorg/apache/poi/hssf/record/Record;
    .restart local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_5
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v6, 0xeb

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v4, :cond_6

    .line 346
    iget-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    .line 347
    .local v1, "lastDGRecord":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    check-cast v2, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;

    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->join(Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;)V

    move-object v2, v5

    .line 348
    goto :goto_0

    .line 350
    .end local v1    # "lastDGRecord":Lorg/apache/poi/hssf/record/DrawingGroupRecord;
    .restart local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_6
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    const/16 v6, 0x3c

    if-ne v4, v6, :cond_b

    move-object v0, v2

    .line 351
    check-cast v0, Lorg/apache/poi/hssf/record/ContinueRecord;

    .line 353
    .local v0, "contRec":Lorg/apache/poi/hssf/record/ContinueRecord;
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/ObjRecord;

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/TextObjectRecord;

    if-eqz v4, :cond_8

    .line 356
    :cond_7
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/DrawingRecord;->processContinueRecord([B)V

    .line 359
    iget-boolean v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_shouldIncludeContinueRecords:Z

    if-nez v4, :cond_0

    move-object v2, v5

    .line 362
    goto :goto_0

    .line 364
    :cond_8
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    if-eqz v4, :cond_9

    .line 365
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    check-cast v4, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ContinueRecord;->getData()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/poi/hssf/record/DrawingGroupRecord;->processContinueRecord([B)V

    move-object v2, v5

    .line 366
    goto/16 :goto_0

    .line 368
    :cond_9
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v4, :cond_a

    move-object v2, v0

    .line 370
    goto/16 :goto_0

    .line 372
    :cond_a
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/UnknownRecord;

    if-nez v4, :cond_0

    .line 377
    iget-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    instance-of v4, v4, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez v4, :cond_0

    .line 382
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled Continue Record followining "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 384
    .end local v0    # "contRec":Lorg/apache/poi/hssf/record/ContinueRecord;
    :cond_b
    iput-object v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    .line 385
    instance-of v4, v2, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 386
    check-cast v4, Lorg/apache/poi/hssf/record/DrawingRecord;

    iput-object v4, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastDrawingRecord:Lorg/apache/poi/hssf/record/DrawingRecord;

    goto/16 :goto_0
.end method


# virtual methods
.method public nextRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->getNextUnreadRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 251
    .local v0, "r":Lorg/apache/poi/hssf/record/Record;
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    .local v1, "r":Lorg/apache/poi/hssf/record/Record;
    move-object v2, v0

    .line 281
    :goto_0
    return-object v2

    .line 274
    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .restart local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 276
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->readNextRecord()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    .line 277
    if-nez v0, :cond_3

    .line 256
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v0

    .line 258
    .end local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    .restart local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    goto :goto_0

    .line 261
    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .restart local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_lastRecordWasEOFLevelZero:Z

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream;->_recStream:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v3

    const/16 v4, 0x809

    if-eq v3, v4, :cond_0

    move-object v1, v0

    .line 268
    .end local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    .restart local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    goto :goto_0

    .end local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    .restart local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    move-object v1, v0

    .end local v0    # "r":Lorg/apache/poi/hssf/record/Record;
    .restart local v1    # "r":Lorg/apache/poi/hssf/record/Record;
    move-object v2, v0

    .line 281
    goto :goto_0
.end method
