.class final Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;
.super Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;
.source "Countif.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Countif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorMatcher"
.end annotation


# instance fields
.field private final _value:I


# direct methods
.method public constructor <init>(ILorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operator"    # Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;

    .line 294
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/Countif$MatcherBase;-><init>(Lorg/apache/poi/ss/formula/functions/Countif$CmpOp;)V

    .line 295
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->_value:I

    .line 296
    return-void
.end method


# virtual methods
.method protected getValueText()Ljava/lang/String;
    .locals 1

    .line 299
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->_value:I

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 2
    .param p1, "x"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 303
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_0

    .line 304
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result v0

    .line 305
    .local v0, "testValue":I
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->_value:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->evaluate(I)Z

    move-result v1

    return v1

    .line 307
    .end local v0    # "testValue":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
