.class public final Lorg/apache/poi/ss/formula/eval/IntersectionEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "IntersectionEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/poi/ss/formula/eval/IntersectionEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 32
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

    .line 85
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 88
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 89
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 94
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
    .locals 16
    .param p0, "aeA"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "aeB"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 55
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    .line 56
    .local v0, "aeAfr":I
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v1

    .line 57
    .local v1, "aeAfc":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v2

    .line 58
    .local v2, "aeBlc":I
    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 59
    return-object v3

    .line 61
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v4

    .line 62
    .local v4, "aeBfc":I
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 63
    return-object v3

    .line 65
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v5

    .line 66
    .local v5, "aeBlr":I
    if-le v0, v5, :cond_2

    .line 67
    return-object v3

    .line 69
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v6

    .line 70
    .local v6, "aeBfr":I
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v7

    .line 71
    .local v7, "aeAlr":I
    if-le v6, v7, :cond_3

    .line 72
    return-object v3

    .line 76
    :cond_3
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 77
    .local v3, "top":I
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 78
    .local v8, "bottom":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 79
    .local v9, "left":I
    invoke-interface/range {p0 .. p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v10

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 81
    .local v10, "right":I
    sub-int v11, v3, v0

    sub-int v12, v8, v0

    sub-int v13, v9, v1

    sub-int v14, v10, v1

    move-object/from16 v15, p0

    invoke-interface {v15, v11, v12, v13, v14}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v11

    return-object v11
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 37
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    .line 38
    .local v0, "reA":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v1

    .line 39
    .local v1, "reB":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->resolveRange(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2

    .line 40
    .local v2, "result":Lorg/apache/poi/ss/formula/eval/AreaEval;
    if-nez v2, :cond_0

    .line 41
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 43
    :cond_0
    return-object v2

    .line 44
    .end local v0    # "reA":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v1    # "reB":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v2    # "result":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
