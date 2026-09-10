.class public Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;
.super Ljava/lang/Object;
.source "EventWorkbookBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder$SheetRecordCollectingListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 1
    .param p0, "externs"    # [Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .param p1, "bounds"    # [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hssf/eventusermodel/EventWorkbookBuilder;->createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/SSTRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public static createStubWorkbook([Lorg/apache/poi/hssf/record/ExternSheetRecord;[Lorg/apache/poi/hssf/record/BoundSheetRecord;Lorg/apache/poi/hssf/record/SSTRecord;)Lorg/apache/poi/hssf/model/InternalWorkbook;
    .locals 3
    .param p0, "externs"    # [Lorg/apache/poi/hssf/record/ExternSheetRecord;
    .param p1, "bounds"    # [Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .param p2, "sst"    # Lorg/apache/poi/hssf/record/SSTRecord;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "wbRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    if-eqz p1, :cond_0

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 73
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 77
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    if-eqz p0, :cond_2

    .line 83
    array-length v1, p0

    int-to-short v1, v1

    invoke-static {v1}, Lorg/apache/poi/hssf/record/SupBookRecord;->createInternalReferences(S)Lorg/apache/poi/hssf/record/SupBookRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 86
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lorg/apache/poi/hssf/record/EOFRecord;->instance:Lorg/apache/poi/hssf/record/EOFRecord;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createWorkbook(Ljava/util/List;)Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    return-object v1
.end method
