.class abstract Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "TextFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SingleArgTextFunc"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    .line 70
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 74
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;->evaluate(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .end local v0    # "arg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract evaluate(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method
