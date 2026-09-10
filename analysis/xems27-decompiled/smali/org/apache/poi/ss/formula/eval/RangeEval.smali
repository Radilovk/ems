.class public final Lorg/apache/poi/ss/formula/eval/RangeEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "RangeEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RangeEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RangeEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RangeEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 34
    return-void
.end method

.method private static evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 3
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 64
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 67
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ref arg class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolveRange(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 10
    .param p0, "aeA"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "aeB"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 52
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    .line 53
    .local v0, "aeAfr":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v1

    .line 55
    .local v1, "aeAfc":I
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56
    .local v2, "top":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 57
    .local v3, "bottom":I
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 58
    .local v4, "left":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v5

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 60
    .local v5, "right":I
    sub-int v6, v2, v0

    sub-int v7, v3, v0

    sub-int v8, v4, v1

    sub-int v9, v5, v1

    invoke-interface {p0, v6, v7, v8, v9}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 39
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/RangeEval;->evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    .line 40
    .local v0, "reA":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/eval/RangeEval;->evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v1

    .line 41
    .local v1, "reB":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/eval/RangeEval;->resolveRange(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 42
    .end local v0    # "reA":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v1    # "reB":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
