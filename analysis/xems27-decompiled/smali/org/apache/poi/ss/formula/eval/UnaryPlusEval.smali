.class public final Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "UnaryPlusEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 38
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 39
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v3, :cond_0

    .line 43
    return-object v2

    .line 45
    :cond_0
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v0, "d":D
    nop

    .line 49
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 46
    .end local v0    # "d":D
    :catch_0
    move-exception v2

    .line 47
    .restart local v0    # "d":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
