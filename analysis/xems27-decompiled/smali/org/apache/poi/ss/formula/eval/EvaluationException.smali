.class public final Lorg/apache/poi/ss/formula/eval/EvaluationException;
.super Ljava/lang/Exception;
.source "EvaluationException.java"


# instance fields
.field private final _errorEval:Lorg/apache/poi/ss/formula/eval/ErrorEval;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V
    .locals 0
    .param p1, "errorEval"    # Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 113
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;->_errorEval:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 115
    return-void
.end method

.method public static invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .locals 2

    .line 124
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    return-object v0
.end method

.method public static invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .locals 2

    .line 120
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    return-object v0
.end method

.method public static numberError()Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .locals 2

    .line 128
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    return-object v0
.end method


# virtual methods
.method public getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;->_errorEval:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
