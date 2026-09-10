.class public abstract Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "TwoOperandNumericOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;
    }
.end annotation


# static fields
.field public static final AddEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final DivideEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MultiplyEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PowerEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SubtractEval:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->AddEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 60
    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->DivideEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 68
    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->MultiplyEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 73
    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->PowerEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 86
    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->SubtractEval:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method protected abstract evaluate(DD)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    .line 36
    .local v0, "d0":D
    invoke-virtual {p0, p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    .line 37
    .local v2, "d1":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->evaluate(DD)D

    move-result-wide v6

    .line 38
    .local v6, "result":D
    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-nez v5, :cond_0

    .line 40
    instance-of v5, p0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;

    if-nez v5, :cond_0

    .line 41
    sget-object v5, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 50
    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v6    # "result":D
    :goto_0
    return-object v5

    .line 44
    .restart local v0    # "d0":D
    .restart local v2    # "d1":D
    .restart local v6    # "result":D
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 45
    :cond_1
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v0    # "d0":D
    .end local v2    # "d1":D
    .end local v6    # "result":D
    :catch_0
    move-exception v4

    .line 48
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_0

    .line 50
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "d0":D
    .restart local v2    # "d1":D
    .restart local v6    # "result":D
    :cond_2
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method

.method protected final singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 4
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 30
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    return-wide v2
.end method
