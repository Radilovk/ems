.class public final Lorg/apache/poi/ss/formula/functions/Index;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function2Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function4Arg;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 4
    .param p0, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 96
    move-object v0, p0

    .line 97
    .local v0, "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_0

    .line 99
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2, v2, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/TwoDEval;

    return-object v1

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete code - cannot handle first arg of type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getValueFromArea(Lorg/apache/poi/ss/formula/TwoDEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "pRowIx"    # I
    .param p2, "pColumnIx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 125
    nop

    .line 126
    nop

    .line 128
    move-object v0, p0

    .line 130
    .local v0, "result":Lorg/apache/poi/ss/formula/TwoDEval;
    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 136
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 139
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 141
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v1

    if-gt p2, v1, :cond_2

    .line 145
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    goto :goto_1

    .line 143
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 147
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 4
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 158
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 159
    .local v0, "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 160
    return v2

    .line 162
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v0, v1, :cond_1

    .line 163
    return v2

    .line 165
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    .line 166
    .local v1, "result":I
    if-ltz v1, :cond_2

    .line 169
    return v1

    .line 167
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 50
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Index;->convertFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    .line 52
    .local v0, "reference":Lorg/apache/poi/ss/formula/TwoDEval;
    const/4 v1, 0x0

    .line 54
    .local v1, "columnIx":I
    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Index;->resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2

    .line 56
    .local v2, "rowIx":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3

    .line 64
    :cond_0
    move v1, v2

    .line 65
    const/4 v2, 0x0

    .line 68
    :cond_1
    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/formula/functions/Index;->getValueFromArea(Lorg/apache/poi/ss/formula/TwoDEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 69
    .end local v2    # "rowIx":I
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 75
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Index;->convertFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    .line 78
    .local v0, "reference":Lorg/apache/poi/ss/formula/TwoDEval;
    :try_start_0
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/Index;->resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v1

    .line 79
    .local v1, "columnIx":I
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Index;->resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2

    .line 80
    .local v2, "rowIx":I
    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/formula/functions/Index;->getValueFromArea(Lorg/apache/poi/ss/formula/TwoDEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 81
    .end local v1    # "columnIx":I
    .end local v2    # "rowIx":I
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incomplete code - don\'t know how to support the \'area_num\' parameter yet)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 112
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    .line 120
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 118
    :cond_0
    aget-object v0, p1, v2

    aget-object v5, p1, v1

    aget-object v6, p1, v3

    aget-object v7, p1, v4

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lorg/apache/poi/ss/formula/functions/Index;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    aget-object v4, p1, v2

    aget-object v5, p1, v1

    aget-object v6, p1, v3

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/Index;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 114
    :cond_2
    aget-object v0, p1, v2

    aget-object v1, p1, v1

    invoke-virtual {p0, p2, p3, v0, v1}, Lorg/apache/poi/ss/formula/functions/Index;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
