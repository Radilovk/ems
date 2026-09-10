.class final Lorg/apache/poi/ss/formula/atp/ParityFunction;
.super Ljava/lang/Object;
.source "ParityFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final IS_EVEN:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

.field public static final IS_ODD:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private final _desiredParity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/atp/ParityFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/ParityFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_EVEN:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 35
    new-instance v0, Lorg/apache/poi/ss/formula/atp/ParityFunction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/atp/ParityFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_ODD:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "desiredParity"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/poi/ss/formula/atp/ParityFunction;->_desiredParity:I

    .line 40
    return-void
.end method

.method private static evaluateArgParity(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 8
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 58
    int-to-short v5, p2

    invoke-static {p0, p1, v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 60
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    .line 61
    .local v0, "d":D
    const-wide/16 v6, 0x0

    cmpg-double v5, v0, v6

    if-gez v5, :cond_0

    .line 62
    neg-double v0, v0

    .line 64
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v2, v6

    .line 65
    .local v2, "v":J
    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    long-to-int v5, v6

    return v5
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    array-length v4, p1

    if-eq v4, v2, :cond_0

    .line 44
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 54
    :goto_0
    return-object v2

    .line 49
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/ss/formula/atp/ParityFunction;->evaluateArgParity(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    .local v1, "val":I
    iget v4, p0, Lorg/apache/poi/ss/formula/atp/ParityFunction;->_desiredParity:I

    if-ne v1, v4, :cond_1

    :goto_1
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v2

    goto :goto_0

    .line 50
    .end local v1    # "val":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    goto :goto_0

    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "val":I
    :cond_1
    move v2, v3

    .line 54
    goto :goto_1
.end method
