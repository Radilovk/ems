.class public Lorg/apache/poi/ss/formula/functions/Quotient;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Quotient.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Quotient;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Quotient;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Quotient;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "venumerator"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "vedenominator"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 46
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "enumerator":D
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 53
    const-wide/16 v0, 0x0

    .line 55
    .local v0, "denominator":D
    :try_start_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 60
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-nez v3, :cond_0

    .line 61
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 64
    .end local v0    # "denominator":D
    :goto_0
    return-object v3

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 56
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "denominator":D
    :catch_1
    move-exception v2

    .line 57
    .restart local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 64
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    div-double v6, v4, v0

    double-to-int v6, v6

    int-to-double v6, v6

    invoke-direct {v3, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 68
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 69
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Quotient;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method
