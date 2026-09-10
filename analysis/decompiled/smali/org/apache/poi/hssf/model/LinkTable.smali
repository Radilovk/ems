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
            "Ljava/util/List",
            "<",
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

    .prologue
    const/4 v4, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    .line 262
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    new-instance v3, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(I)V

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 265
    new-instance v2, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 266
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    .line 270
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    .line 272
    .local v1, "supbook":Lorg/apache/poi/hssf/record/SupBookRecord;
    const/16 v2, 0x8c

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v0

    .line 273
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 274
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CountryRecord not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 277
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILorg/apache/poi/hssf/model/WorkbookRecordList;Ljava/util/Map;)V
    .locals 8
    .param p2, "startIndex"    # I
    .param p3, "workbookRecordList"    # Lorg/apache/poi/hssf/model/WorkbookRecordList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;I",
            "Lorg/apache/poi/hssf/model/WorkbookRecordList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/record/NameCommentRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    .local p4, "commentRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hssf/record/NameCommentRecord;>;"
    const/4 v7, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    .line 192
    new-instance v3, Lorg/apache/poi/hssf/model/RecordStream;

    invoke-direct {v3, p1, p2}, Lorg/apache/poi/hssf/model/RecordStream;-><init>(Ljava/util/List;I)V

    .line 194
    .local v3, "rs":Lorg/apache/poi/hssf/model/RecordStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;>;"
    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/apache/poi/hssf/record/SupBookRecord;

    if-ne v5, v6, :cond_0

    .line 196
    new-instance v5, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v5, v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    iput-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 200
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 201
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 203
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 205
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-eq v5, v6, :cond_1

    .line 207
    iput-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 215
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    .line 219
    :goto_2
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v1

    .line 220
    .local v1, "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    const-class v5, Lorg/apache/poi/hssf/record/NameRecord;

    if-ne v1, v5, :cond_3

    .line 221
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/NameRecord;

    .line 222
    .local v2, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 209
    .end local v1    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    .end local v2    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    invoke-static {v3}, Lorg/apache/poi/hssf/model/LinkTable;->readExtSheetRecord(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    goto :goto_1

    .line 212
    :cond_2
    iput-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    goto :goto_1

    .line 224
    .restart local v1    # "nextClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/Record;>;"
    :cond_3
    const-class v5, Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-ne v1, v5, :cond_4

    .line 225
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 226
    .local v0, "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 233
    .end local v0    # "ncr":Lorg/apache/poi/hssf/record/NameCommentRecord;
    :cond_4
    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/RecordStream;->getCountRead()I

    move-result v5

    iput v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    .line 234
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->getRecords()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    add-int/2addr v6, p2

    invoke-interface {p1, p2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    return-void
.end method

.method private extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I
    .locals 4
    .param p1, "newBlock"    # Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .prologue
    const/4 v3, 0x0

    .line 664
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 665
    .local v0, "tmp":[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 667
    iput-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .line 669
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private findFirstRecordLocBySid(S)I
    .locals 4
    .param p1, "sid"    # S

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "index":I
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 536
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    if-ne v3, p1, :cond_0

    .line 541
    .end local v0    # "index":I
    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    return v0

    .line 539
    .restart local v0    # "index":I
    .restart local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 540
    goto :goto_0

    .line 541
    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findRefIndexFromExtBookIndex(I)I
    .locals 1
    .param p1, "extBookIndex"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->findRefIndexFromExtBookIndex(I)I

    move-result v0

    return v0
.end method

.method private getExternalWorkbookIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "workbookName"    # Ljava/lang/String;

    .prologue
    .line 396
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 397
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    .line 398
    .local v0, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    .end local v0    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    .end local v1    # "i":I
    :goto_1
    return v1

    .restart local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "sheetNames"    # [Ljava/lang/String;
    .param p1, "sheetName"    # Ljava/lang/String;

    .prologue
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
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External workbook does not contain sheet \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isDuplicatedNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 2
    .param p0, "firstName"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p1, "lastName"    # Lorg/apache/poi/hssf/record/NameRecord;

    .prologue
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSameSheetNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 2
    .param p0, "firstName"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p1, "lastName"    # Lorg/apache/poi/hssf/record/NameRecord;

    .prologue
    .line 361
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readExtSheetRecord(Lorg/apache/poi/hssf/model/RecordStream;)Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .locals 6
    .param p0, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    const/4 v5, 0x1

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/ExternSheetRecord;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    if-ne v3, v4, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 244
    .local v1, "nItems":I
    if-ge v1, v5, :cond_1

    .line 245
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected an EXTERNSHEET record but got ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_1
    if-ne v1, v5, :cond_2

    .line 250
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 256
    :goto_1
    return-object v3

    .line 254
    :cond_2
    new-array v0, v1, [Lorg/apache/poi/hssf/record/ExternSheetRecord;

    .line 255
    .local v0, "esrs":[Lorg/apache/poi/hssf/record/ExternSheetRecord;
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 256
    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->combine([Lorg/apache/poi/hssf/record/ExternSheetRecord;)Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public addName(Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 4
    .param p1, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .prologue
    const/4 v3, -0x1

    .line 325
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const/16 v2, 0x17

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 330
    .local v1, "idx":I
    if-ne v1, v3, :cond_0

    const/16 v2, 0x1ae

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 331
    :cond_0
    if-ne v1, v3, :cond_1

    const/16 v2, 0x8c

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v1

    .line 332
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 333
    .local v0, "countNames":I
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v3, v1, v0

    invoke-virtual {v2, v3, p1}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 334
    return-void
.end method

.method public addNameXPtg(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 614
    const/4 v3, -0x1

    .line 615
    .local v3, "extBlockIndex":I
    const/4 v2, 0x0

    .line 618
    .local v2, "extBlock":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v14, v14

    if-ge v6, v14, :cond_0

    .line 619
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v14, v14, v6

    invoke-virtual {v14}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    .line 620
    .local v1, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->isAddInFunctions()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 621
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v2, v14, v6

    .line 622
    move v3, v6

    .line 627
    .end local v1    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_0
    if-nez v2, :cond_1

    .line 628
    new-instance v2, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .end local v2    # "extBlock":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-direct {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>()V

    .line 629
    .restart local v2    # "extBlock":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/model/LinkTable;->extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I

    move-result v3

    .line 632
    const/16 v14, 0x17

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v7

    .line 633
    .local v7, "idx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-virtual/range {v14 .. v17}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    .line 641
    .end local v7    # "idx":I
    :cond_1
    new-instance v4, Lorg/apache/poi/hssf/record/ExternalNameRecord;

    invoke-direct {v4}, Lorg/apache/poi/hssf/record/ExternalNameRecord;-><init>()V

    .line 642
    .local v4, "extNameRecord":Lorg/apache/poi/hssf/record/ExternalNameRecord;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->setText(Ljava/lang/String;)V

    .line 644
    const/4 v14, 0x1

    new-array v14, v14, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v15, 0x0

    sget-object v16, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    aput-object v16, v14, v15

    invoke-virtual {v4, v14}, Lorg/apache/poi/hssf/record/ExternalNameRecord;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 646
    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->addExternalName(Lorg/apache/poi/hssf/record/ExternalNameRecord;)I

    move-result v10

    .line 647
    .local v10, "nameIndex":I
    const/4 v13, 0x0

    .line 650
    .local v13, "supLinkIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v14}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 651
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/hssf/record/Record;

    .line 652
    .local v12, "record":Lorg/apache/poi/hssf/record/Record;
    instance-of v14, v12, Lorg/apache/poi/hssf/record/SupBookRecord;

    if-eqz v14, :cond_4

    .line 653
    check-cast v12, Lorg/apache/poi/hssf/record/SupBookRecord;

    .end local v12    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v12}, Lorg/apache/poi/hssf/record/SupBookRecord;->isAddInFunctions()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 656
    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNumberOfNames()I

    move-result v11

    .line 658
    .local v11, "numberOfNames":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    add-int v15, v13, v11

    invoke-virtual {v14, v15, v4}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 659
    const/4 v5, -0x2

    .line 660
    .local v5, "fakeSheetIdx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v14, v3, v5, v5}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v9

    .line 661
    .local v9, "ix":I
    new-instance v14, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {v14, v9, v10}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(II)V

    return-object v14

    .line 618
    .end local v4    # "extNameRecord":Lorg/apache/poi/hssf/record/ExternalNameRecord;
    .end local v5    # "fakeSheetIdx":I
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    .end local v9    # "ix":I
    .end local v10    # "nameIndex":I
    .end local v11    # "numberOfNames":I
    .end local v13    # "supLinkIndex":I
    .restart local v1    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 650
    .end local v1    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    .restart local v4    # "extNameRecord":Lorg/apache/poi/hssf/record/ExternalNameRecord;
    .restart local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/Record;>;"
    .restart local v10    # "nameIndex":I
    .restart local v13    # "supLinkIndex":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1
.end method

.method public changeExternalReference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "oldUrl"    # Ljava/lang/String;
    .param p2, "newUrl"    # Ljava/lang/String;

    .prologue
    .line 686
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    .local v0, "arr$":[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 687
    .local v1, "ex":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v2

    .line 688
    .local v2, "externalRecord":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 691
    invoke-virtual {v2, p2}, Lorg/apache/poi/hssf/record/SupBookRecord;->setURL(Ljava/lang/String;)V

    .line 692
    const/4 v5, 0x1

    .line 695
    .end local v1    # "ex":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    .end local v2    # "externalRecord":Lorg/apache/poi/hssf/record/SupBookRecord;
    :goto_1
    return v5

    .line 686
    .restart local v1    # "ex":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    .restart local v2    # "externalRecord":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "ex":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    .end local v2    # "externalRecord":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public checkExternSheet(I)I
    .locals 1
    .param p1, "sheetIndex"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1, p1}, Lorg/apache/poi/hssf/model/LinkTable;->checkExternSheet(II)I

    move-result v0

    return v0
.end method

.method public checkExternSheet(II)I
    .locals 5
    .param p1, "firstSheetIndex"    # I
    .param p2, "lastSheetIndex"    # I

    .prologue
    .line 507
    const/4 v2, -0x1

    .line 508
    .local v2, "thisWbIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 509
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    .line 510
    .local v0, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->isInternalReferences()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    move v2, v1

    .line 515
    .end local v0    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_0
    if-gez v2, :cond_2

    .line 516
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not find \'internal references\' EXTERNALBOOK"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    .restart local v0    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v3, v2, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v1

    .line 521
    if-ltz v1, :cond_3

    .line 525
    .end local v1    # "i":I
    :goto_1
    return v1

    .restart local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v3, v2, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    move-result v1

    goto :goto_1
.end method

.method public getExternalBookAndSheetName(I)[Ljava/lang/String;
    .locals 11
    .param p1, "extRefIndex"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 365
    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v6, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result v0

    .line 366
    .local v0, "ebIx":I
    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    .line 367
    .local v1, "ebr":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->isExternalReferences()Z

    move-result v6

    if-nez v6, :cond_0

    .line 368
    const/4 v6, 0x0

    .line 387
    :goto_0
    return-object v6

    .line 371
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v6, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v4

    .line 372
    .local v4, "shIx1":I
    iget-object v6, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v6, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getLastSheetIndexFromRefIndex(I)I

    move-result v5

    .line 373
    .local v5, "shIx2":I
    const/4 v2, 0x0

    .line 374
    .local v2, "firstSheetName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 375
    .local v3, "lastSheetName":Ljava/lang/String;
    if-ltz v4, :cond_1

    .line 376
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v4

    .line 378
    :cond_1
    if-ltz v5, :cond_2

    .line 379
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v3, v6, v5

    .line 381
    :cond_2
    if-ne v4, v5, :cond_3

    .line 382
    new-array v6, v10, [Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    goto :goto_0

    .line 387
    :cond_3
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->getURL()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    aput-object v3, v6, v10

    goto :goto_0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "firstSheetName"    # Ljava/lang/String;
    .param p3, "lastSheetName"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalWorkbookIndex(Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, "externalBookIndex":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 445
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No external workbook with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 447
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v0

    .line 449
    .local v0, "ebrTarget":Lorg/apache/poi/hssf/record/SupBookRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 450
    .local v2, "firstSheetIndex":I
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SupBookRecord;->getSheetNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lorg/apache/poi/hssf/model/LinkTable;->getSheetIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 453
    .local v3, "lastSheetIndex":I
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v5, v1, v2, v3}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getRefIxForSheet(III)I

    move-result v4

    .line 454
    .local v4, "result":I
    if-gez v4, :cond_1

    .line 455
    iget-object v5, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v5, v1, v2, v3}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    move-result v4

    .line 457
    :cond_1
    return v4
.end method

.method public getFirstInternalSheetIndexForExtIndex(I)I
    .locals 1
    .param p1, "extRefIndex"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfRefs()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 476
    :cond_0
    const/4 v0, -0x1

    .line 478
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLastInternalSheetIndexForExtIndex(I)I
    .locals 1
    .param p1, "extRefIndex"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getNumOfRefs()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 486
    :cond_0
    const/4 v0, -0x1

    .line 488
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getLastSheetIndexFromRefIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method public getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 1
    .param p1, "index"    # I

    .prologue
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

    .prologue
    .line 589
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 590
    iget-object v3, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getIndexOfName(Ljava/lang/String;)I

    move-result v0

    .line 591
    .local v0, "definedNameIndex":I
    if-gez v0, :cond_1

    .line 589
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/model/LinkTable;->findRefIndexFromExtBookIndex(I)I

    move-result v2

    .line 597
    .local v2, "thisSheetRefIndex":I
    if-ltz v2, :cond_0

    .line 599
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    if-ne v2, p2, :cond_0

    .line 600
    :cond_2
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    invoke-direct {v3, v2, v0}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;-><init>(II)V

    .line 604
    .end local v0    # "definedNameIndex":I
    .end local v2    # "thisSheetRefIndex":I
    :goto_1
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getNumNames()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordCount()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_recordCount:I

    return v0
.end method

.method public getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 3
    .param p1, "builtInCode"    # B
    .param p2, "sheetNumber"    # I

    .prologue
    .line 293
    iget-object v2, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 294
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/NameRecord;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

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

    .line 303
    .end local v1    # "record":Lorg/apache/poi/hssf/record/NameRecord;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public linkExternalWorkbook(Ljava/lang/String;Lorg/apache/poi/ss/usermodel/Workbook;)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "externalWorkbook"    # Lorg/apache/poi/ss/usermodel/Workbook;

    .prologue
    const/4 v10, -0x1

    .line 409
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/model/LinkTable;->getExternalWorkbookIndex(Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, "extBookIndex":I
    if-eq v1, v10, :cond_0

    move v2, v1

    .end local v1    # "extBookIndex":I
    .local v2, "extBookIndex":I
    move v3, v1

    .line 439
    .end local v2    # "extBookIndex":I
    .local v3, "extBookIndex":I
    :goto_0
    return v3

    .line 416
    .end local v3    # "extBookIndex":I
    .restart local v1    # "extBookIndex":I
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v8

    new-array v5, v8, [Ljava/lang/String;

    .line 417
    .local v5, "sheetNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "sn":I
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_1

    .line 418
    invoke-interface {p2, v6}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 417
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 420
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "url":Ljava/lang/String;
    new-instance v0, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    invoke-direct {v0, v7, v5}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 424
    .local v0, "block":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->extendExternalBookBlocks(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)I

    move-result v1

    .line 427
    const/16 v8, 0x17

    invoke-direct {p0, v8}, Lorg/apache/poi/hssf/model/LinkTable;->findFirstRecordLocBySid(S)I

    move-result v4

    .line 428
    .local v4, "idx":I
    if-ne v4, v10, :cond_2

    .line 429
    iget-object v8, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->size()I

    move-result v4

    .line 431
    :cond_2
    iget-object v8, p0, Lorg/apache/poi/hssf/model/LinkTable;->_workbookRecordList:Lorg/apache/poi/hssf/model/WorkbookRecordList;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getExternalBookRecord()Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Lorg/apache/poi/hssf/model/WorkbookRecordList;->add(ILorg/apache/poi/hssf/record/Record;)V

    .line 434
    const/4 v6, 0x0

    :goto_2
    array-length v8, v5

    if-ge v6, v8, :cond_3

    .line 435
    iget-object v8, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v8, v1, v6, v6}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->addRef(III)I

    .line 434
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .end local v1    # "extBookIndex":I
    .restart local v2    # "extBookIndex":I
    move v3, v1

    .line 439
    .end local v2    # "extBookIndex":I
    .restart local v3    # "extBookIndex":I
    goto :goto_0
.end method

.method public nameAlreadyExists(Lorg/apache/poi/hssf/record/NameRecord;)Z
    .locals 3
    .param p1, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .prologue
    .line 346
    invoke-virtual {p0}, Lorg/apache/poi/hssf/model/LinkTable;->getNumNames()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 347
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    .line 348
    .local v1, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    if-eq v1, p1, :cond_0

    .line 349
    invoke-static {p1, v1}, Lorg/apache/poi/hssf/model/LinkTable;->isDuplicatedNames(Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    const/4 v2, 0x1

    .line 353
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/NameRecord;
    :goto_1
    return v2

    .line 346
    .restart local v1    # "rec":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 353
    .end local v1    # "rec":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeBuiltinRecord(BI)V
    .locals 2
    .param p1, "name"    # B
    .param p2, "sheetIndex"    # I

    .prologue
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

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_definedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public removeSheet(I)V
    .locals 1
    .param p1, "sheetIdx"    # I

    .prologue
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

    .prologue
    .line 577
    iget-object v1, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

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
    .locals 10
    .param p1, "refIndex"    # I
    .param p2, "definedNameIndex"    # I
    .param p3, "workbook"    # Lorg/apache/poi/hssf/model/InternalWorkbook;

    .prologue
    .line 545
    iget-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getExtbookIndexFromRefIndex(I)I

    move-result v0

    .line 546
    .local v0, "extBookIndex":I
    iget-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->getFirstSheetIndexFromRefIndex(I)I

    move-result v2

    .line 547
    .local v2, "firstTabIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 549
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Referenced sheet could not be found"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 553
    :cond_0
    iget-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v1, v7, v0

    .line 554
    .local v1, "externalBook":Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;
    invoke-static {v1}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->access$000(Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;)[Lorg/apache/poi/hssf/record/ExternalNameRecord;

    move-result-object v7

    array-length v7, v7

    if-le v7, p2, :cond_1

    .line 555
    iget-object v7, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    aget-object v7, v7, v0

    invoke-virtual {v7, p2}, Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;->getNameText(I)Ljava/lang/String;

    move-result-object v7

    .line 568
    :goto_0
    return-object v7

    .line 556
    :cond_1
    const/4 v7, -0x2

    if-ne v2, v7, :cond_3

    .line 558
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/model/LinkTable;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 559
    .local v3, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v5

    .line 561
    .local v5, "sheetNumber":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    .local v6, "text":Ljava/lang/StringBuffer;
    if-lez v5, :cond_2

    .line 563
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p3, v7}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "sheetName":Ljava/lang/String;
    invoke-static {v6, v4}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 565
    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    .end local v4    # "sheetName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 570
    .end local v3    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v5    # "sheetNumber":I
    .end local v6    # "text":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ext Book Index relative but beyond the supported length, was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but maximum is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externalBookBlocks:[Lorg/apache/poi/hssf/model/LinkTable$ExternalBookBlock;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public updateIndexToInternalSheet(II)V
    .locals 1
    .param p1, "extRefIndex"    # I
    .param p2, "offset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lorg/apache/poi/hssf/model/LinkTable;->_externSheetRecord:Lorg/apache/poi/hssf/record/ExternSheetRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/ExternSheetRecord;->adjustIndex(II)V

    .line 497
    return-void
.end method
