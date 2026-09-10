.class public final Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;
.super Lorg/apache/poi/hssf/record/PageBreakRecord;
.source "HorizontalPageBreakRecord.java"


# static fields
.field public static final sid:S = 0x1bs


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .line 52
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>()V

    .line 53
    .local v0, "result":Lorg/apache/poi/hssf/record/PageBreakRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 56
    .local v2, "original":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v3, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    iget v4, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iget v5, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    .line 57
    .end local v2    # "original":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 48
    const/16 v0, 0x1b

    return v0
.end method
