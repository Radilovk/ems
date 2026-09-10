.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;
.super Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;
.source "LookupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NumberLookupComparer"
.end annotation


# instance fields
.field private _value:D


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/formula/eval/NumberEval;)V
    .locals 2
    .param p1, "ne"    # Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 321
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 322
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;->_value:D

    .line 323
    return-void
.end method


# virtual methods
.method protected compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 5
    .param p1, "other"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 325
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 326
    .local v0, "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    iget-wide v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;->_value:D

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->valueOf(I)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v1

    return-object v1
.end method

.method protected getValueAsString()Ljava/lang/String;
    .locals 2

    .line 329
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$NumberLookupComparer;->_value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
