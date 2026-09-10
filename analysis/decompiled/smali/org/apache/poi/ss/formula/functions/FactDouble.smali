.class public Lorg/apache/poi/ss/formula/functions/FactDouble;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "FactDouble.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/poi/ss/formula/functions/FactDouble;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/FactDouble;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FactDouble;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/FactDouble;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 67
    if-eqz p0, :cond_0

    if-gez p0, :cond_1

    .line 68
    :cond_0
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 77
    :goto_0
    return-object v1

    .line 71
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FactDouble;->cache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FactDouble;->cache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    goto :goto_0

    .line 75
    :cond_2
    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v2, p0, -0x2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/FactDouble;->factorial(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 76
    .local v0, "result":Ljava/math/BigInteger;
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FactDouble;->cache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 77
    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    .local v1, "number":I
    if-gez v1, :cond_0

    .line 60
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 63
    .end local v1    # "number":I
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 63
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "number":I
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/FactDouble;->factorial(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-direct {v2, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 81
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 82
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/FactDouble;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method
