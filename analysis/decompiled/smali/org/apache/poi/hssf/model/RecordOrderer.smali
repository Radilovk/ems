.class final Lorg/apache/poi/hssf/model/RecordOrderer;
.super Ljava/lang/Object;
.source "RecordOrderer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V
    .locals 2
    .param p1, "newRecord"    # Lorg/apache/poi/hssf/record/RecordBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "sheetRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/poi/hssf/model/RecordOrderer;->findSheetInsertPos(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    .line 93
    .local v0, "index":I
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private static findDataValidationTableInsertPos(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 294
    .local v0, "i":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez v4, :cond_0

    .line 295
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Last sheet record should be EOFRecord"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :cond_0
    if-lez v0, :cond_3

    .line 298
    add-int/lit8 v0, v0, -0x1

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 300
    .local v2, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    add-int/lit8 v4, v0, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 302
    .local v1, "nextRec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTSubsequentRecord(S)Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") found after ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_1
    add-int/lit8 v4, v0, 0x1

    .line 314
    .end local v1    # "nextRec":Lorg/apache/poi/hssf/record/Record;
    .end local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :goto_0
    return v4

    .restart local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_2
    move-object v3, v2

    .line 308
    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    .line 309
    .local v3, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTSubsequentRecord(S)Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") while looking for DV Table insert pos"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    .end local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static findInsertPosForNewCondFormatTable(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 221
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 222
    .local v1, "rb":Ljava/lang/Object;
    instance-of v3, v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    if-eqz v3, :cond_0

    .line 223
    add-int/lit8 v3, v0, 0x1

    .line 240
    :goto_1
    return v3

    .line 225
    :cond_0
    instance-of v3, v1, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-eqz v3, :cond_1

    .line 220
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 229
    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 230
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 240
    :sswitch_0
    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "rb":Ljava/lang/Object;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Did not find Window2 record"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x41 -> :sswitch_0
        0x99 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xef -> :sswitch_0
        0x15f -> :sswitch_0
        0x23e -> :sswitch_0
    .end sparse-switch
.end method

.method private static findInsertPosForNewMergedRecordTable(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 250
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, "rb":Ljava/lang/Object;
    instance-of v3, v1, Lorg/apache/poi/hssf/record/Record;

    if-nez v3, :cond_0

    .line 249
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 256
    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 257
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 265
    :sswitch_0
    add-int/lit8 v3, v0, 0x1

    return v3

    .line 268
    .end local v1    # "rb":Ljava/lang/Object;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Did not find Window2 record"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x41 -> :sswitch_0
        0x99 -> :sswitch_0
        0xa0 -> :sswitch_0
        0x23e -> :sswitch_0
    .end sparse-switch
.end method

.method private static findSheetInsertPos(Ljava/util/List;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    .local p1, "recClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/RecordBase;>;"
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-ne p1, v0, :cond_0

    .line 98
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findDataValidationTableInsertPos(Ljava/util/List;)I

    move-result v0

    .line 113
    :goto_0
    return v0

    .line 100
    :cond_0
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    if-ne p1, v0, :cond_1

    .line 101
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findInsertPosForNewMergedRecordTable(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 103
    :cond_1
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-ne p1, v0, :cond_2

    .line 104
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findInsertPosForNewCondFormatTable(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 106
    :cond_2
    const-class v0, Lorg/apache/poi/hssf/record/GutsRecord;

    if-ne p1, v0, :cond_3

    .line 107
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getGutsRecordInsertPos(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 109
    :cond_3
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-ne p1, v0, :cond_4

    .line 110
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getPageBreakRecordInsertPos(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 112
    :cond_4
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    if-ne p1, v0, :cond_5

    .line 113
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getWorksheetProtectionBlockInsertPos(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected record class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDimensionsIndex(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    .local v1, "nRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 359
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/hssf/record/DimensionsRecord;

    if-eqz v2, :cond_0

    .line 360
    return v0

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "DimensionsRecord not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getGutsRecordInsertPos(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    .line 369
    .local v0, "dimensionsIndex":I
    add-int/lit8 v1, v0, -0x1

    .line 370
    .local v1, "i":I
    :cond_0
    if-lez v1, :cond_1

    .line 371
    add-int/lit8 v1, v1, -0x1

    .line 372
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    .line 373
    .local v2, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isGutsPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 377
    .end local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Did not find insert point for GUTS"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getPageBreakRecordInsertPos(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    .line 177
    .local v0, "dimensionsIndex":I
    add-int/lit8 v1, v0, -0x1

    .line 178
    .local v1, "i":I
    :cond_0
    if-lez v1, :cond_1

    .line 179
    add-int/lit8 v1, v1, -0x1

    .line 180
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 181
    .local v2, "rb":Ljava/lang/Object;
    invoke-static {v2}, Lorg/apache/poi/hssf/model/RecordOrderer;->isPageBreakPriorRecord(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 185
    .end local v2    # "rb":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Did not find insert point for GUTS"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getWorksheetProtectionBlockInsertPos(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    .line 141
    .local v0, "i":I
    :cond_0
    if-lez v0, :cond_1

    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 143
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, "rb":Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/poi/hssf/model/RecordOrderer;->isProtectionSubsequentRecord(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 148
    .end local v1    # "rb":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "did not find insert pos for protection block"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isDVTPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z
    .locals 3
    .param p0, "rb"    # Lorg/apache/poi/hssf/record/RecordBase;

    .prologue
    const/4 v1, 0x1

    .line 319
    instance-of v2, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    if-nez v2, :cond_0

    instance-of v2, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-eqz v2, :cond_1

    .line 339
    .end local p0    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .local v0, "sid":S
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 322
    .end local v0    # "sid":S
    .restart local p0    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_1
    check-cast p0, Lorg/apache/poi/hssf/record/Record;

    .end local p0    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    .line 323
    .restart local v0    # "sid":S
    sparse-switch v0, :sswitch_data_0

    .line 339
    const/4 v1, 0x0

    goto :goto_0

    .line 323
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x41 -> :sswitch_0
        0x99 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xef -> :sswitch_0
        0x15f -> :sswitch_0
        0x1b8 -> :sswitch_0
        0x1ba -> :sswitch_0
        0x23e -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isDVTSubsequentRecord(S)Z
    .locals 1
    .param p0, "sid"    # S

    .prologue
    .line 343
    sparse-switch p0, :sswitch_data_0

    .line 351
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 349
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x862 -> :sswitch_0
        0x867 -> :sswitch_0
        0x868 -> :sswitch_0
        0x8c8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isEndOfRowBlock(I)Z
    .locals 2
    .param p0, "sid"    # I

    .prologue
    const/4 v0, 0x1

    .line 412
    sparse-switch p0, :sswitch_data_0

    .line 432
    invoke-static {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v0

    :sswitch_0
    return v0

    .line 430
    :sswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Found EOFRecord before WindowTwoRecord was encountered"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x3d -> :sswitch_0
        0x5d -> :sswitch_0
        0x7d -> :sswitch_0
        0x80 -> :sswitch_0
        0xb0 -> :sswitch_0
        0xec -> :sswitch_0
        0xed -> :sswitch_0
        0x1b2 -> :sswitch_0
        0x1b6 -> :sswitch_0
        0x23e -> :sswitch_0
    .end sparse-switch
.end method

.method private static isGutsPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z
    .locals 2
    .param p0, "rb"    # Lorg/apache/poi/hssf/record/RecordBase;

    .prologue
    .line 381
    instance-of v1, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 382
    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 383
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 404
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 400
    .restart local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x82 -> :sswitch_0
        0x20b -> :sswitch_0
        0x809 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPageBreakPriorRecord(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rb"    # Ljava/lang/Object;

    .prologue
    .line 188
    instance-of v1, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 189
    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 190
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 213
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 209
    .restart local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x20b -> :sswitch_0
        0x225 -> :sswitch_0
        0x809 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isProtectionSubsequentRecord(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "rb"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 161
    instance-of v2, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    :sswitch_0
    return v1

    .line 164
    :cond_0
    instance-of v2, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 165
    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 166
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 172
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_0
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isRowBlockRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .prologue
    .line 440
    sparse-switch p0, :sswitch_data_0

    .line 456
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 454
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xfd -> :sswitch_0
        0x201 -> :sswitch_0
        0x203 -> :sswitch_0
        0x204 -> :sswitch_0
        0x205 -> :sswitch_0
        0x208 -> :sswitch_0
        0x221 -> :sswitch_0
        0x236 -> :sswitch_0
        0x27e -> :sswitch_0
        0x4bc -> :sswitch_0
    .end sparse-switch
.end method
