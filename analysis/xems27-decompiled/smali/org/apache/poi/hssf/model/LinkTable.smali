.class final Lorg/apache/poi/hssf/model/LinkTable;
.super Ljava/lang/Object;
.source "LinkTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;,
        Lorg/apache/poi/hssf/model/LinkTable$CRNBlock;
    }
.end annotation


# instance fields
.field private final _definedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/NameRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final _externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

.field private _externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

.field private final _recordCount:I

.field private final _workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;


# direct methods
.method public constructor <init>(ILorg/apache/poi/hssf/model/WorkbookRecordList;)V
    .locals 5
    .param p1, "numberOfSheets"    # I
    .param p2, "workbookRecordList"    # Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    .line 262
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    new-instance v1, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 265
    new-instance v0, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 266
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    .line 270
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    .line 272
    .local v0, "supbook":Lorg/apache/poi/hssf/record/SupBookRecord;
    const/16 v1, 0x8c

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 273
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 276
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 277
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 278
    return-void

    .line 274
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CountryRecord not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/util/List;ILorg/apache/poi/hssf/model/WorkbookRecordList;Ljava/util/Map;)V
    .locals 5
    .param p2, "startIndex"    # I
    .param p3, "workbookRecordList"    # Lorg/apache/poi/hssf/model/WorkbookRecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I",
            "Lorg/apache/poi/hssf/model/WorkbookRecordList;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/record/NameCommentRecord;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    .local p4, "commentRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hssf/record/NameCommentRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 192
    new-instance v0, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    .line 194
    .local v0, "rs":Lorg/apache/poi/hssf/model/RecordStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/poi/hssf/record/SupBookRecord;

    if-ne v2, v3, :cond_0

    .line 196
    new-instance v2, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v2, v0}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 200
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 203
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 205
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-eq v2, v4, :cond_1

    .line 207
    iput-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    goto :goto_1

    .line 209
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/hssf/model/LinkTable;->readExtSheetRecord(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    goto :goto_1

    .line 212
    :cond_2
    iput-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 215
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    .line 219
    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v2

    .line 220
    .local v2, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    const-class v3, Lorg/apache/poi/hssf/record/NameRecord;

    if-ne v2, v3, :cond_3

    .line 221
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/NameRecord;

    .line 222
    .local v3, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v3    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    goto :goto_3

    .line 224
    :cond_3
    const-class v3, Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-ne v2, v3, :cond_4

    .line 225
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 226
    .local v3, "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v2    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    .end local v3    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :goto_3
    goto :goto_2

    .line 233
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/RecordStream;->getCountRead()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    .line 234
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    add-int/2addr v3, p2

    invoke-interface {p1, p2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    return-void
.end method

.method private extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I
    .locals 4
    .param p1, "newBlock"    # Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 664
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 665
    .local v1, "tmp":[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    .line 667
    iput-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 669
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private findFirstRecordLocBySid(S)I
    .locals 4
    .param p1, "sid"    # S

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 536
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_0

    .line 537
    return v0

    .line 539
    :cond_0
    nop

    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v0, v0, 0x1

    .line 540
    goto :goto_0

    .line 541
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findRefIndexFromExtBookIndex(I)I
    .locals 1
    .param p1, "extBookIndex"    # I

    .line 673
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->findRefIndexFromExtBookIndex(I)I

    move-result v0

    return v0
.end method

.method private getExternalWorkbookIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "workbookName"    # Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 397
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    .line 398
    .local v1, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    goto :goto_1

    .line 401
    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    return v0

    .line 396
    .end local v1    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "sheetNames"    # [Ljava/lang/String;
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 462
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    return v0

    .line 461
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External workbook does not contain sheet \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isDuplicatedNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 2
    .param p0, "firstName"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p1, "lastName"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 357
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->isSameSheetNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSameSheetNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 2
    .param p0, "firstName"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p1, "lastName"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 361
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static readExtSheetRecord(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 5
    .param p0, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/ExternSheetRecord;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-ne v1, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 244
    .local v1, "nItems":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 248
    if-ne v1, v2, :cond_1

    .line 250
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    return-object v2

    .line 254
    :cond_1
    new-array v2, v1, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 255
    .local v2, "esrs":[Lorg/apache/poi/hssf/record/ExternSheetRecord;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 256
    invoke-static {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->combine([Lorg/apache/poi/hssf/record/ExternSheetRecord;)Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v3

    return-object v3

    .line 245
    .end local v2    # "esrs":[Lorg/apache/poi/hssf/record/ExternSheetRecord;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected an EXTERNSHEET record but got ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addName(Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 4
    .param p1, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 325
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 330
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v2, 0x1ae

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 331
    :cond_0
    if-ne v0, v1, :cond_1

    const/16 v1, 0x8c

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 332
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 333
    .local v1, "countNames":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v3, v0, v1

    invoke-virtual {v2, v3, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 334
    return-void
.end method

.method public addNameXPtg(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 614
    const/4 v0, -0x1

    .line 615
    .local v0, "extBlockIndex":I
    const/4 v1, 0x0

    .line 618
    .local v1, "extBlock":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 619
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v3

    .line 620
    .local v3, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/SupBookRecord;->isAddInFunctions()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v1, v4, v2

    .line 622
    move v0, v2

    .line 623
    goto :goto_1

    .line 618
    .end local v3    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 628
    new-instance v3, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>()V

    move-object v1, v3

    .line 629
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/model/LinkTable;->extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I

    move-result v0

    .line 632
    const/16 v3, 0x17

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v3

    .line 633
    .local v3, "idx":I
    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 637
    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v5, v5

    sub-int/2addr v5, v2

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6, v6}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    .line 641
    .end local v3    # "idx":I
    :cond_2
    new-instance v3, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v3}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>()V

    .line 642
    .local v3, "extNameRecord":Lorg/apache/poi/hssf/record/ExternalNameRecord;
    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->setText(Ljava/lang/String;)V

    .line 644
    new-array v2, v2, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    aput-object v5, v2, v4

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 646
    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->addExternalName(Lorg/apache/poi/hssf/record/ExternalNameRecord;)I

    move-result v2

    .line 647
    .local v2, "nameIndex":I
    const/4 v4, 0x0

    .line 650
    .local v4, "supLinkIndex":I
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 651
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hssf/record/Record;

    .line 652
    .local v6, "record":Lorg/apache/poi/hssf/record/Record;
    instance-of v7, v6, Lorg/apache/poi/hssf/record/SupBookRecord;

    if-eqz v7, :cond_3

    .line 653
    move-object v7, v6

    check-cast v7, Lorg/apache/poi/hssf/record/SupBookRecord;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/SupBookRecord;->isAddInFunctions()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 650
    .end local v6    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 656
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNumberOfNames()I

    move-result v5

    .line 658
    .local v5, "numberOfNames":I
    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v7, v4, v5

    invoke-virtual {v6, v7, v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 659
    const/4 v6, -0x2

    .line 660
    .local v6, "fakeSheetIdx":I
    iget-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v7, v0, v6, v6}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v7

    .line 661
    .local v7, "ix":I
    new-instance v8, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {v8, v7, v2}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(II)V

    return-object v8
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "oldUrl"    # Ljava/lang/String;
    .param p2, "newUrl"    # Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .local v0, "arr$":[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 687
    .local v3, "ex":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v4

    .line 688
    .local v4, "externalRecord":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 691
    invoke-virtual {v4, p2}, Lorg/apache/poi/hssf/record/SupBookRecord;->setURL(Ljava/lang/String;)V

    .line 692
    const/4 v5, 0x1

    return v5

    .line 686
    .end local v3    # "ex":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    .end local v4    # "externalRecord":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "arr$":[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public checkExternSheet(I)I
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 504
    invoke-virtual {p0, p1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(II)I

    move-result v0

    return v0
.end method

.method public checkExternSheet(II)I
    .locals 4
    .param p1, "firstSheetIndex"    # I
    .param p2, "lastSheetIndex"    # I

    .line 507
    const/4 v0, -0x1

    .line 508
    .local v0, "thisWbIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 509
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v2

    .line 510
    .local v2, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SupBookRecord;->isInternalReferences()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    move v0, v1

    .line 512
    goto :goto_1

    .line 508
    .end local v2    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v0, :cond_3

    .line 520
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v1, v0, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v1

    .line 521
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    .line 522
    return v1

    .line 525
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v2, v0, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    move-result v2

    return v2

    .line 516
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find \'internal references\' EXTERNALBOOK"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExternalBookAndSheetName(I)[Ljava/lang/String;
    .locals 11
    .param p1, "extRefIndex"    # I

    .line 365
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result v0

    .line 366
    .local v0, "ebIx":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    .line 367
    .local v1, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    const/4 v2, 0x0

    return-object v2

    .line 371
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v2

    .line 372
    .local v2, "shIx1":I
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getLastSheetIndexFromRefIndex(I)I

    move-result v3

    .line 373
    .local v3, "shIx2":I
    const/4 v4, 0x0

    .line 374
    .local v4, "firstSheetName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 375
    .local v5, "lastSheetName":Ljava/lang/String;
    if-ltz v2, :cond_1

    .line 376
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v2

    .line 378
    :cond_1
    if-ltz v3, :cond_2

    .line 379
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, v3

    .line 381
    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_3

    .line 382
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    aput-object v4, v6, v7

    return-object v6

    .line 387
    :cond_3
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    aput-object v4, v9, v7

    aput-object v5, v9, v6

    return-object v9
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "firstSheetName"    # Ljava/lang/String;
    .param p3, "lastSheetName"    # Ljava/lang/String;

    .line 443
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalWorkbookIndex(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, "externalBookIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 447
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    .line 449
    .local v1, "ebrTarget":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 450
    .local v2, "firstSheetIndex":I
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lorg/apache/poi/hssf/model/LinkTable;->getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 453
    .local v3, "lastSheetIndex":I
    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v4, v0, v2, v3}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v4

    .line 454
    .local v4, "result":I
    if-gez v4, :cond_0

    .line 455
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v5, v0, v2, v3}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    move-result v4

    .line 457
    :cond_0
    return v4

    .line 445
    .end local v1    # "ebrTarget":Lorg/apache/poi/hssf/record/SupBookRecord;
    .end local v2    # "firstSheetIndex":I
    .end local v3    # "lastSheetIndex":I
    .end local v4    # "result":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No external workbook with name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFirstInternalSheetIndexForExtIndex(I)I
    .locals 1
    .param p1, "extRefIndex"    # I

    .line 475
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfRefs()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v0

    return v0

    .line 476
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getLastInternalSheetIndexForExtIndex(I)I
    .locals 1
    .param p1, "extRefIndex"    # I

    .line 485
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfRefs()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getLastSheetIndexFromRefIndex(I)I

    move-result v0

    return v0

    .line 486
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "index"    # I

    .line 321
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/NameRecord;

    return-object v0
.end method

.method public getNameXPtg(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetRefIndex"    # I

    .line 589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 590
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getIndexOfName(Ljava/lang/String;)I

    move-result v1

    .line 591
    .local v1, "definedNameIndex":I
    if-gez v1, :cond_0

    .line 592
    goto :goto_1

    .line 596
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->findRefIndexFromExtBookIndex(I)I

    move-result v2

    .line 597
    .local v2, "thisSheetRefIndex":I
    if-ltz v2, :cond_2

    .line 599
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-ne v2, p2, :cond_2

    .line 600
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {v3, v2, v1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(II)V

    return-object v3

    .line 589
    .end local v1    # "definedNameIndex":I
    .end local v2    # "thisSheetRefIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumNames()I
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordCount()I
    .locals 1

    .line 284
    iget v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    return v0
.end method

.method public getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 3
    .param p1, "builtInCode"    # B
    .param p2, "sheetNumber"    # I

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 294
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/NameRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/NameRecord;

    .line 298
    .local v1, "record":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getBuiltInName()B

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 299
    return-object v1

    .line 301
    .end local v1    # "record":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalWorkbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .line 409
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalWorkbookIndex(Ljava/lang/String;)I

    move-result v0

    .line 410
    .local v0, "extBookIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 412
    return v0

    .line 416
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 417
    .local v2, "sheetNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "sn":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 418
    invoke-interface {p2, v3}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    .end local v3    # "sn":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v4, v3, v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 424
    .local v4, "block":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-direct {p0, v4}, Lorg/apache/poi/hssf/model/LinkTable;->extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I

    move-result v0

    .line 427
    const/16 v5, 0x17

    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v5

    .line 428
    .local v5, "idx":I
    if-ne v5, v1, :cond_2

    .line 429
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v5

    .line 431
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 434
    const/4 v1, 0x0

    .local v1, "sn":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_3

    .line 435
    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v6, v0, v1, v1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 439
    .end local v1    # "sn":I
    :cond_3
    return v0
.end method

.method public nameAlreadyExists(Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 4
    .param p1, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 346
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 347
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    .line 348
    .local v2, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    if-eq v2, p1, :cond_0

    .line 349
    invoke-static {p1, v2}, Lorg/apache/poi/hssf/model/LinkTable;->isDuplicatedNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    return v1

    .line 346
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 353
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeBuiltinRecord(BI)V
    .locals 2
    .param p1, "name"    # B
    .param p2, "sheetIndex"    # I

    .line 309
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    .line 310
    .local v0, "record":Lorg/apache/poi/hssf/record/NameRecord;
    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public removeName(I)V
    .locals 1
    .param p1, "namenum"    # I

    .line 337
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public removeSheet(I)V
    .locals 1
    .param p1, "sheetIdx"    # I

    .line 500
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->removeSheet(I)V

    .line 501
    return-void
.end method

.method public resolveNameXIx(II)I
    .locals 2
    .param p1, "refIndex"    # I
    .param p2, "definedNameIndex"    # I

    .line 577
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result v0

    .line 578
    .local v0, "extBookIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNameIx(I)I

    move-result v1

    return v1
.end method

.method public resolveNameXText(IILorg/apache/poi/hssf/model/InternalWorkbook;)Ljava/lang/String;
    .locals 8
    .param p1, "refIndex"    # I
    .param p2, "definedNameIndex"    # I
    .param p3, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 545
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result v0

    .line 546
    .local v0, "extBookIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v1

    .line 547
    .local v1, "firstTabIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 553
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v2, v2, v0

    .line 554
    .local v2, "externalBook":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-static {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->access$000(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    move-result-object v3

    array-length v3, v3

    if-le v3, p2, :cond_0

    .line 555
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNameText(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 556
    :cond_0
    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    .line 558
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 559
    .local v3, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v4

    .line 561
    .local v4, "sheetNumber":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    .local v5, "text":Ljava/lang/StringBuffer;
    if-lez v4, :cond_1

    .line 563
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p3, v6}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, "sheetName":Ljava/lang/String;
    invoke-static {v5, v6}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 565
    const-string v7, "!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    .end local v6    # "sheetName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 570
    .end local v3    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v4    # "sheetNumber":I
    .end local v5    # "text":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ext Book Index relative but beyond the supported length, was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but maximum is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 549
    .end local v2    # "externalBook":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Referenced sheet could not be found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateIndexToInternalSheet(II)V
    .locals 1
    .param p1, "extRefIndex"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->adjustIndex(II)V

    .line 497
    return-void
.end method
