.class final Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;
.super Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NumberMatcher"
.end annotation


# instance fields
.field private final _value:D


# direct methods
.method public constructor <init>(DLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .prologue
    .line 182
    invoke-direct {p0, p3}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;-><init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 183
    iput-wide p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    .line 184
    return-void
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 12
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 192
    instance-of v7, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v7, :cond_2

    .line 195
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->getCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return v6

    :pswitch_0
    move v6, v5

    .line 202
    goto :goto_0

    :pswitch_1
    move-object v1, p1

    .line 208
    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 209
    .local v1, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 210
    .local v4, "val":Ljava/lang/Double;
    if-eqz v4, :cond_0

    .line 214
    iget-wide v8, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-nez v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 215
    .end local v1    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v4    # "val":Ljava/lang/Double;
    :cond_2
    instance-of v7, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v7, :cond_3

    move-object v0, p1

    .line 216
    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 217
    .local v0, "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    .line 229
    .local v2, "testValue":D
    iget-wide v6, p0, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->_value:D

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->evaluate(I)Z

    move-result v6

    goto :goto_0

    .line 218
    .end local v0    # "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v2    # "testValue":D
    :cond_3
    instance-of v7, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v7, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$NumberMatcher;->getCode()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move v6, v5

    .line 222
    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 219
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method
