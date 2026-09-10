.class final Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
.super Lorg/apache/poi/ss/formula/CellCacheEntry;
.source "PlainValueCellCacheEntry.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;->updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    .line 30
    return-void
.end method
