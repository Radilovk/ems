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
    .locals 0
    .param p0, "value"    # Z

    .line 246
    return p0
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 2

    .line 242
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->_value:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 4
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 251
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 255
    return v1

    .line 264
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_1

    .line 265
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 266
    .local v0, "be":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->boolToInt(Z)I

    move-result v0

    .line 267
    .local v0, "testValue":I
    nop

    .line 286
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->_value:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->evaluate(I)Z

    move-result v1

    return v1

    .line 267
    .end local v0    # "testValue":I
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->getCode()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 273
    return v1

    .line 271
    :cond_2
    return v2

    .line 275
    :cond_3
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Countif$BooleanMatcher;->getCode()I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 281
    return v1

    .line 279
    :cond_4
    return v2

    .line 284
    :cond_5
    return v1
.end method
