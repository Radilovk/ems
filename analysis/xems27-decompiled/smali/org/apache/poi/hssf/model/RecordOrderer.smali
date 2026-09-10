.class final Lorg/apache/poi/hssf/model/RecordOrderer;
.super Ljava/lang/Object;
.source "RecordOrderer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static addNewSheetRecord(Ljava/util/List;Lorg/apache/poi/hssf/record/RecordBase;)V
    .locals 1
    .param p1, "newRecord"    # Lorg/apache/poi/hssf/record/RecordBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ")V"
        }
    .end annotation

    .line 92
    .local p0, "sheetRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findSheetInsertPos(Ljava/util/List;Ljava/lang/Class;)I

    move-result v0

    .line 93
    .local v0, "index":I
    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private static findDataValidationTableInsertPos(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 293
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 294
    .local v0, "i":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/hssf/record/EOFRecord;

    if-eqz v1, :cond_4

    .line 297
    :goto_0
    if-lez v0, :cond_3

    .line 298
    add-int/lit8 v0, v0, -0x1

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    .line 300
    .local v1, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    invoke-static {v1}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z

    move-result v2

    const-string v3, "Unexpected ("

    if-eqz v2, :cond_1

    .line 301
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 302
    .local v2, "nextRec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTSubsequentRecord(S)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    add-int/lit8 v3, v0, 0x1

    return v3

    .line 303
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") found after ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    .end local v2    # "nextRec":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 309
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/hssf/model/RecordOrderer;->isDVTSubsequentRecord(S)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    .end local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    goto :goto_0

    .line 310
    .restart local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .restart local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") while looking for DV Table insert pos"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    .end local v1    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    const/4 v1, 0x0

    return v1

    .line 295
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Last sheet record should be EOFRecord"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findInsertPosForNewCondFormatTable(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 220
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 221
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 222
    .local v1, "rb":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    if-eqz v2, :cond_0

    .line 223
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 225
    :cond_0
    instance-of v2, v1, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-eqz v2, :cond_1

    .line 226
    goto :goto_1

    .line 229
    :cond_1
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 230
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x41

    if-eq v3, v4, :cond_2

    const/16 v4, 0x99

    if-eq v3, v4, :cond_2

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xef

    if-eq v3, v4, :cond_2

    const/16 v4, 0x15f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x23e

    if-eq v3, v4, :cond_2

    .line 220
    .end local v1    # "rb":Ljava/lang/Object;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 240
    .restart local v1    # "rb":Ljava/lang/Object;
    .restart local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    return v3

    .line 245
    .end local v0    # "i":I
    .end local v1    # "rb":Ljava/lang/Object;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Did not find Window2 record"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findInsertPosForNewMergedRecordTable(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 249
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 250
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, "rb":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/poi/hssf/record/Record;

    if-nez v2, :cond_0

    .line 254
    goto :goto_1

    .line 256
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 257
    .local v2, "rec":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x41

    if-eq v3, v4, :cond_1

    const/16 v4, 0x99

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23e

    if-eq v3, v4, :cond_1

    .line 249
    .end local v1    # "rb":Ljava/lang/Object;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    .restart local v1    # "rb":Ljava/lang/Object;
    .restart local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    add-int/lit8 v3, v0, 0x1

    return v3

    .line 268
    .end local v0    # "i":I
    .end local v1    # "rb":Ljava/lang/Object;
    .end local v2    # "rec":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Did not find Window2 record"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findSheetInsertPos(Ljava/util/List;Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 97
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    .local p1, "recClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/hssf/record/RecordBase;>;"
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    if-ne p1, v0, :cond_0

    .line 98
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findDataValidationTableInsertPos(Ljava/util/List;)I

    move-result v0

    return v0

    .line 100
    :cond_0
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    if-ne p1, v0, :cond_1

    .line 101
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findInsertPosForNewMergedRecordTable(Ljava/util/List;)I

    move-result v0

    return v0

    .line 103
    :cond_1
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-ne p1, v0, :cond_2

    .line 104
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->findInsertPosForNewCondFormatTable(Ljava/util/List;)I

    move-result v0

    return v0

    .line 106
    :cond_2
    const-class v0, Lorg/apache/poi/hssf/record/GutsRecord;

    if-ne p1, v0, :cond_3

    .line 107
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getGutsRecordInsertPos(Ljava/util/List;)I

    move-result v0

    return v0

    .line 109
    :cond_3
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    if-ne p1, v0, :cond_4

    .line 110
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getPageBreakRecordInsertPos(Ljava/util/List;)I

    move-result v0

    return v0

    .line 112
    :cond_4
    const-class v0, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    if-ne p1, v0, :cond_5

    .line 113
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getWorksheetProtectionBlockInsertPos(Ljava/util/List;)I

    move-result v0

    return v0

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected record class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDimensionsIndex(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 357
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 358
    .local v0, "nRecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 359
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/hssf/record/DimensionsRecord;

    if-eqz v2, :cond_0

    .line 360
    return v1

    .line 358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DimensionsRecord not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getGutsRecordInsertPos(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 368
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    .line 369
    .local v0, "dimensionsIndex":I
    add-int/lit8 v1, v0, -0x1

    .line 370
    .local v1, "i":I
    :goto_0
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

    .line 376
    .end local v2    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_0
    goto :goto_0

    .line 377
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Did not find insert point for GUTS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getPageBreakRecordInsertPos(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 176
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    .line 177
    .local v0, "dimensionsIndex":I
    add-int/lit8 v1, v0, -0x1

    .line 178
    .local v1, "i":I
    :goto_0
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

    .line 184
    .end local v2    # "rb":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 185
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Did not find insert point for GUTS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getWorksheetProtectionBlockInsertPos(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)I"
        }
    .end annotation

    .line 140
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    invoke-static {p0}, Lorg/apache/poi/hssf/model/RecordOrderer;->getDimensionsIndex(Ljava/util/List;)I

    move-result v0

    .line 141
    .local v0, "i":I
    :goto_0
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

    .line 147
    .end local v1    # "rb":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "did not find insert pos for protection block"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isDVTPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z
    .locals 3
    .param p0, "rb"    # Lorg/apache/poi/hssf/record/RecordBase;

    .line 319
    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/MergedCellsTable;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v0

    .line 323
    .local v0, "sid":S
    const/16 v2, 0x1d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x41

    if-eq v0, v2, :cond_1

    const/16 v2, 0x99

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa0

    if-eq v0, v2, :cond_1

    const/16 v2, 0xef

    if-eq v0, v2, :cond_1

    const/16 v2, 0x15f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b8

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1ba

    if-eq v0, v2, :cond_1

    const/16 v2, 0x23e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x800

    if-eq v0, v2, :cond_1

    .line 339
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_1
    return v1

    .line 320
    .end local v0    # "sid":S
    :cond_2
    :goto_0
    return v1
.end method

.method private static isDVTSubsequentRecord(S)Z
    .locals 1
    .param p0, "sid"    # S

    .line 343
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x862

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8c8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x867

    if-eq p0, v0, :cond_0

    const/16 v0, 0x868

    if-eq p0, v0, :cond_0

    .line 351
    const/4 v0, 0x0

    return v0

    .line 349
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isEndOfRowBlock(I)Z
    .locals 2
    .param p0, "sid"    # I

    .line 412
    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3d

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1b2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23e

    if-eq p0, v0, :cond_1

    const/16 v0, 0xec

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    .line 432
    invoke-static {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isComponentRecord(I)Z

    move-result v0

    return v0

    .line 427
    :cond_0
    return v1

    .line 424
    :cond_1
    return v1

    .line 430
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Found EOFRecord before WindowTwoRecord was encountered"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isGutsPriorRecord(Lorg/apache/poi/hssf/record/RecordBase;)Z
    .locals 3
    .param p0, "rb"    # Lorg/apache/poi/hssf/record/RecordBase;

    .line 381
    instance-of v0, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v0, :cond_1

    .line 382
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 383
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    const/16 v2, 0x82

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x809

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 400
    :cond_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 404
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isPageBreakPriorRecord(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "rb"    # Ljava/lang/Object;

    .line 188
    instance-of v0, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v0, :cond_1

    .line 189
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 190
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x225

    if-eq v1, v2, :cond_0

    const/16 v2, 0x809

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x81

    if-eq v1, v2, :cond_0

    const/16 v2, 0x82

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 209
    :cond_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 213
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isProtectionSubsequentRecord(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "rb"    # Ljava/lang/Object;

    .line 161
    instance-of v0, p0, Lorg/apache/poi/hssf/record/aggregates/ColumnInfoRecordsAggregate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 162
    return v1

    .line 164
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/hssf/record/Record;

    if-eqz v0, :cond_2

    .line 165
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/record/Record;

    .line 166
    .local v0, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    const/16 v3, 0x55

    if-eq v2, v3, :cond_1

    const/16 v3, 0x90

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    return v1

    .line 172
    .end local v0    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isRowBlockRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .line 440
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xfd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201

    if-eq p0, v0, :cond_0

    const/16 v0, 0x208

    if-eq p0, v0, :cond_0

    const/16 v0, 0x221

    if-eq p0, v0, :cond_0

    const/16 v0, 0x236

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4bc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 456
    const/4 v0, 0x0

    return v0

    .line 454
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x203
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
