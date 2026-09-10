.class public final Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;
.super Lorg/apache/poi/hssf/record/PageBreakRecord;
.source "VerticalPageBreakRecord.java"


# static fields
.field public static final sid:S = 0x1as


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 51
    new-instance v2, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v2}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>()V

    .line 52
    .local v2, "result":Lorg/apache/poi/hssf/record/PageBreakRecord;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 55
    .local v1, "original":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v3, v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    iget v4, v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iget v5, v1, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    goto :goto_0

    .line 57
    .end local v1    # "original":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    :cond_0
    return-object v2
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x1a

    return v0
.end method
