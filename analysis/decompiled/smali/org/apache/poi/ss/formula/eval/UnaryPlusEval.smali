.class public final Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "UnaryPlusEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 38
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 39
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_0

    .line 49
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v3

    .line 45
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 49
    .local v0, "d":D
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    .line 46
    .end local v0    # "d":D
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    goto :goto_0
.end method
