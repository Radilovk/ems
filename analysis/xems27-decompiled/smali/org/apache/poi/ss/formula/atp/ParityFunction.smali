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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/poi/ss/formula/atp/ParityFunction;->_desiredParity:I

    .line 40
    return-void
.end method

.method private static evaluateArgParity(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 7
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 58
    int-to-short v0, p2

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 60
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    .line 61
    .local v1, "d":D
    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    .line 62
    neg-double v1, v1

    .line 64
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    .line 65
    .local v3, "v":J
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    long-to-int v6, v5

    return v6
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 43
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 44
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v2, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/ss/formula/atp/ParityFunction;->evaluateArgParity(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v2, "val":I
    nop

    .line 54
    iget v3, p0, Lorg/apache/poi/ss/formula/atp/ParityFunction;->_desiredParity:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v0

    return-object v0

    .line 50
    .end local v2    # "val":I
    :catch_0
    move-exception v1

    .line 51
    .local v0, "val":I
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
