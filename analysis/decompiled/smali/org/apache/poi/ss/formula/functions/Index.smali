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
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/poi/ss/formula/functions/Index;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/ss/formula/functions/Index;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 4
    .param p0, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v2, 0x0

    .line 96
    move-object v0, p0

    .line 97
    .local v0, "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local v0    # "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {v0, v2, v2, v2, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v1, :cond_1

    .line 102
    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete code - cannot handle first arg of type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .prologue
    .line 125
    sget-boolean v1, Lorg/apache/poi/ss/formula/functions/Index;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 126
    :cond_0
    sget-boolean v1, Lorg/apache/poi/ss/formula/functions/Index;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 128
    :cond_1
    move-object v0, p0

    .line 130
    .local v0, "result":Lorg/apache/poi/ss/formula/TwoDEval;
    if-eqz p1, :cond_3

    .line 132
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 134
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 136
    :cond_2
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    .line 139
    :cond_3
    if-eqz p2, :cond_5

    .line 141
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v1

    if-le p2, v1, :cond_4

    .line 143
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 145
    :cond_4
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    .line 147
    :cond_5
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

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 159
    .local v0, "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v0, v2, :cond_1

    .line 169
    :cond_0
    return v1

    .line 162
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq v0, v2, :cond_0

    .line 165
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    .line 166
    .local v1, "result":I
    if-gez v1, :cond_0

    .line 167
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 50
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Index;->convertFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v2

    .line 52
    .local v2, "reference":Lorg/apache/poi/ss/formula/TwoDEval;
    const/4 v0, 0x0

    .line 54
    .local v0, "columnIx":I
    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Index;->resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v3

    .line 56
    .local v3, "rowIx":I
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 70
    .end local v3    # "rowIx":I
    :goto_0
    return-object v4

    .line 64
    .restart local v3    # "rowIx":I
    :cond_0
    move v0, v3

    .line 65
    const/4 v3, 0x0

    .line 68
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/poi/ss/formula/functions/Index;->getValueFromArea(Lorg/apache/poi/ss/formula/TwoDEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 69
    .end local v3    # "rowIx":I
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 75
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Index;->convertFirstArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v2

    .line 78
    .local v2, "reference":Lorg/apache/poi/ss/formula/TwoDEval;
    :try_start_0
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/Index;->resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v0

    .line 79
    .local v0, "columnIx":I
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/Index;->resolveIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v3

    .line 80
    .local v3, "rowIx":I
    invoke-static {v2, v3, v0}, Lorg/apache/poi/ss/formula/functions/Index;->getValueFromArea(Lorg/apache/poi/ss/formula/TwoDEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 82
    .end local v0    # "columnIx":I
    .end local v3    # "rowIx":I
    :goto_0
    return-object v4

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incomplete code - don\'t know how to support the \'area_num\' parameter yet)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    array-length v0, p1

    packed-switch v0, :pswitch_data_0

    .line 120
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    :goto_0
    return-object v0

    .line 114
    :pswitch_0
    aget-object v0, p1, v1

    aget-object v1, p1, v2

    invoke-virtual {p0, p2, p3, v0, v1}, Lorg/apache/poi/ss/formula/functions/Index;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_1
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Index;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_2
    aget-object v3, p1, v1

    aget-object v4, p1, v2

    aget-object v5, p1, v5

    const/4 v0, 0x3

    aget-object v6, p1, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Index;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
