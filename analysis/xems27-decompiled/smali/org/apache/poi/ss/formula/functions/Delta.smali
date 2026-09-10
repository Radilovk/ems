.class public final Lorg/apache/poi/ss/formula/functions/Delta;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Delta.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final ONE:Lorg/apache/poi/ss/formula/eval/NumberEval;

.field private static final ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Delta;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Delta;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Delta;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Delta;->ONE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Delta;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 51
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .local v1, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 55
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "strText1":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 57
    .local v3, "number1":Ljava/lang/Double;
    if-nez v3, :cond_0

    .line 58
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .local v0, "veText2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 68
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "strText2":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 70
    .local v5, "number2":Ljava/lang/Double;
    if-nez v5, :cond_1

    .line 71
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v6

    .line 74
    :cond_1
    new-instance v6, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    .line 75
    .local v6, "result":I
    if-nez v6, :cond_2

    sget-object v7, Lorg/apache/poi/ss/formula/functions/Delta;->ONE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    goto :goto_0

    :cond_2
    sget-object v7, Lorg/apache/poi/ss/formula/functions/Delta;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :goto_0
    return-object v7

    .line 64
    .end local v0    # "veText2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "strText2":Ljava/lang/String;
    .end local v5    # "number2":Ljava/lang/Double;
    .end local v6    # "result":I
    :catch_0
    move-exception v4

    .line 65
    .restart local v0    # "veText2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    return-object v5

    .line 52
    .end local v0    # "veText2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "strText1":Ljava/lang/String;
    .end local v3    # "number1":Ljava/lang/Double;
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_1
    move-exception v1

    .line 53
    .local v0, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 79
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Delta;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
