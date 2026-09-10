.class public final Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "UnaryMinusEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 37
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 38
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 42
    .local v0, "d":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_0

    .line 43
    sget-object v4, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 45
    .end local v0    # "d":D
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v4

    .line 39
    :catch_0
    move-exception v2

    .line 40
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 45
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "d":D
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    neg-double v6, v0

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
