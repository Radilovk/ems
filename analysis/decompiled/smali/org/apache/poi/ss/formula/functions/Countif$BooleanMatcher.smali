.class final Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;
.super Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BooleanMatcher"
.end annotation


# instance fields
.field private final _value:I


# direct methods
.method public constructor <init>(ZLorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 1
    .param p1, "value"    # Z
    .param p2, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .prologue
    .line 237
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;-><init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 238
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->boolToInt(Z)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->_value:I

    .line 239
    return-void
.end method

.method private static boolToInt(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 246
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->_value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v2

    .line 264
    :cond_1
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 265
    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 266
    .local v0, "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->boolToInt(Z)I

    move-result v1

    .line 286
    .local v1, "testValue":I
    iget v2, p0, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->_value:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->evaluate(I)Z

    move-result v2

    goto :goto_0

    .line 267
    .end local v0    # "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    .end local v1    # "testValue":I
    :cond_2
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v4, :cond_3

    .line 268
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->getCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 271
    goto :goto_0

    .line 275
    :cond_3
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->getCode()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 279
    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 276
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
