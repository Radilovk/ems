.class public final Lorg/apache/poi/ss/formula/functions/Mode;
.super Ljava/lang/Object;
.source "Mode.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V
    .locals 3
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "mustBeNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 120
    .local p1, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_4

    .line 123
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq p0, v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/Double;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value type ("

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

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 127
    return-void

    .line 125
    :cond_3
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 121
    :cond_4
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;)V
    .locals 7
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 95
    .local p1, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_2

    .line 96
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 97
    .local v0, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v1

    .line 98
    .local v1, "width":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v2

    .line 99
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "rrIx":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 100
    const/4 v4, 0x0

    .local v4, "rcIx":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 101
    invoke-interface {v0, v3, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 102
    .local v5, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V

    .line 100
    .end local v5    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 99
    .end local v4    # "rcIx":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "rrIx":I
    :cond_1
    return-void

    .line 107
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v1    # "width":I
    .end local v2    # "height":I
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 108
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 109
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    .local v2, "sIx":I
    :goto_2
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 110
    invoke-interface {v0, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    .end local v2    # "sIx":I
    :cond_3
    return-void

    .line 114
    .end local v0    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_4
    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V

    .line 116
    return-void
.end method

.method public static evaluate([D)D
    .locals 11
    .param p0, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 48
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 53
    array-length v0, p0

    new-array v0, v0, [I

    .line 54
    .local v0, "counts":[I
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 56
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    array-length v5, p0

    .local v5, "jSize":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 57
    aget-wide v6, p0, v2

    aget-wide v8, p0, v4

    cmpl-double v10, v6, v8

    if-nez v10, :cond_0

    .line 58
    aget v6, v0, v2

    add-int/2addr v6, v1

    aput v6, v0, v2

    .line 56
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .end local v4    # "j":I
    .end local v5    # "jSize":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_2
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "maxv":D
    const/4 v4, 0x0

    .line 63
    .local v4, "maxc":I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v0

    .local v6, "iSize":I
    :goto_2
    if-ge v5, v6, :cond_4

    .line 64
    aget v7, v0, v5

    if-le v7, v4, :cond_3

    .line 65
    aget-wide v2, p0, v5

    .line 66
    aget v4, v0, v5

    .line 63
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 69
    .end local v5    # "i":I
    .end local v6    # "iSize":I
    :cond_4
    if-le v4, v1, :cond_5

    .line 70
    return-wide v2

    .line 72
    :cond_5
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 49
    .end local v0    # "counts":[I
    .end local v2    # "maxv":D
    .end local v4    # "maxc":I
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 79
    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 81
    aget-object v4, p1, v3

    invoke-static {v4, v2}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;)V

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [D

    .line 84
    .local v3, "values":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 85
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 87
    .end local v4    # "i":I
    :cond_1
    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Mode;->evaluate([D)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v3    # "values":[D
    .local v0, "result":D
    nop

    .line 91
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 88
    .end local v0    # "result":D
    :catch_0
    move-exception v2

    .line 89
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
