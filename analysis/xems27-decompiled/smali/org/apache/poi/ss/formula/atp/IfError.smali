.class final Lorg/apache/poi/ss/formula/atp/IfError;
.super Ljava/lang/Object;
.source "IfError.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/poi/ss/formula/atp/IfError;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/IfError;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/IfError;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static evaluateInternal(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "iferror"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->dereferenceResult(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    .line 61
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_0

    .line 62
    return-object p1

    .line 64
    :cond_0
    return-object p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 45
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 46
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lorg/apache/poi/ss/formula/atp/IfError;->evaluateInternal(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "val":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 56
    return-object v0

    .line 52
    .end local v0    # "val":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "val":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
