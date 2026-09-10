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

    .line 74
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, "arg":Ljava/lang/String;
    nop

    .line 78
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;->evaluate(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 75
    .end local v0    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 76
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method protected abstract evaluate(Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method
