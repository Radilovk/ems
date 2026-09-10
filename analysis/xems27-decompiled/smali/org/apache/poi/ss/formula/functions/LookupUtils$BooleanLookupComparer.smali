.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;
.super Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;
.source "LookupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BooleanLookupComparer"
.end annotation


# instance fields
.field private _value:Z


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/formula/eval/BoolEval;)V
    .locals 1
    .param p1, "be"    # Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 336
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 337
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;->_value:Z

    .line 338
    return-void
.end method


# virtual methods
.method protected compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 340
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 341
    .local v0, "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v1

    .line 342
    .local v1, "otherVal":Z
    iget-boolean v2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;->_value:Z

    if-ne v2, v1, :cond_0

    .line 343
    sget-object v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->EQUAL:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object v2

    .line 346
    :cond_0
    if-eqz v2, :cond_1

    .line 347
    sget-object v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->GREATER_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object v2

    .line 349
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->LESS_THAN:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object v2
.end method

.method protected getValueAsString()Ljava/lang/String;
    .locals 1

    .line 352
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BooleanLookupComparer;->_value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
