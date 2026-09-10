.class final Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;
.super Ljava/lang/Object;
.source "HSSFWorkbook.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SheetRecordCollector"
.end annotation


# instance fields
.field private _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;"
        }
    .end annotation
.end field

.field private _totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1320
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    .line 1321
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    .line 1322
    return-void
.end method


# virtual methods
.method public getTotalSize()I
    .locals 1

    .line 1324
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    return v0
.end method

.method public serialize(I[B)I
    .locals 5
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 1332
    const/4 v0, 0x0

    .line 1333
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1334
    .local v1, "nRecs":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1335
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/Record;

    .line 1336
    .local v3, "rec":Lorg/apache/poi/hssf/record/Record;
    add-int v4, p1, v0

    invoke-virtual {v3, v4, p2}, Lorg/apache/poi/hssf/record/Record;->serialize(I[B)I

    move-result v4

    add-int/2addr v0, v4

    .line 1334
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/Record;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1338
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public visitRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/record/Record;

    .line 1327
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getRecordSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook$SheetRecordCollector;->_totalSize:I

    .line 1330
    return-void
.end method
