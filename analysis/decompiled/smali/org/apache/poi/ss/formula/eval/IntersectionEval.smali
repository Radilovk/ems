.class public final Lorg/apache/poi/ss/formula/eval/IntersectionEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "IntersectionEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/apache/poi/ss/formula/eval/IntersectionEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
    const/4 v1, 0x0

    .line 85
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 86
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 89
    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object p0

    .line 88
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 89
    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    goto :goto_0

    .line 91
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 94
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ref arg class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolveRange(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 15
    .param p0, "aeA"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "aeB"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .prologue
    .line 55
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v1

    .line 56
    .local v1, "aeAfr":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v0

    .line 57
    .local v0, "aeAfc":I
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v5

    .line 58
    .local v5, "aeBlc":I
    if-le v0, v5, :cond_0

    .line 59
    const/4 v11, 0x0

    .line 81
    :goto_0
    return-object v11

    .line 61
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v3

    .line 62
    .local v3, "aeBfc":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v11

    if-le v3, v11, :cond_1

    .line 63
    const/4 v11, 0x0

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v6

    .line 66
    .local v6, "aeBlr":I
    if-le v1, v6, :cond_2

    .line 67
    const/4 v11, 0x0

    goto :goto_0

    .line 69
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v4

    .line 70
    .local v4, "aeBfr":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastRow()I

    move-result v2

    .line 71
    .local v2, "aeAlr":I
    if-le v4, v2, :cond_3

    .line 72
    const/4 v11, 0x0

    goto :goto_0

    .line 76
    :cond_3
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 77
    .local v10, "top":I
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 78
    .local v7, "bottom":I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 79
    .local v8, "left":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getLastColumn()I

    move-result v11

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 81
    .local v9, "right":I
    sub-int v11, v10, v1

    sub-int v12, v7, v1

    sub-int v13, v8, v0

    sub-int v14, v9, v0

    invoke-interface {p0, v11, v12, v13, v14}, Lorg/apache/poi/ss/formula/eval/AreaEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v11

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 37
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v1

    .line 38
    .local v1, "reA":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->evaluateRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2

    .line 39
    .local v2, "reB":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->resolveRange(Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v3

    .line 40
    .local v3, "result":Lorg/apache/poi/ss/formula/eval/AreaEval;
    if-nez v3, :cond_0

    .line 41
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1    # "reA":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v2    # "reB":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v3    # "result":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_0
    :goto_0
    return-object v3

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    goto :goto_0
.end method
