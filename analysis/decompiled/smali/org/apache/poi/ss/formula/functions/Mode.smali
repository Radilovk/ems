.class public final Lorg/apache/poi/ss/formula/functions/Mode;
.super Ljava/lang/Object;
.source "Mode.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V
    .locals 4
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "mustBeNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 123
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq p0, v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_2

    .line 124
    :cond_1
    if-eqz p2, :cond_3

    .line 125
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 129
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_4

    .line 130
    new-instance v0, Ljava/lang/Double;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    return-void

    .line 133
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value type ("

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

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;)V
    .locals 10
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .local p1, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v9, 0x1

    .line 95
    instance-of v8, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v8, :cond_1

    move-object v0, p0

    .line 96
    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 97
    .local v0, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v7

    .line 98
    .local v7, "width":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    .line 99
    .local v1, "height":I
    const/4 v4, 0x0

    .local v4, "rrIx":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 100
    const/4 v2, 0x0

    .local v2, "rcIx":I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 101
    invoke-interface {v0, v4, v2}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 102
    .local v6, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v8, 0x0

    invoke-static {v6, p1, v8}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v6    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v1    # "height":I
    .end local v2    # "rcIx":I
    .end local v4    # "rrIx":I
    .end local v7    # "width":I
    :cond_1
    instance-of v8, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v8, :cond_2

    move-object v3, p0

    .line 108
    check-cast v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 109
    .local v3, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v5

    .local v5, "sIx":I
    :goto_2
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v8

    if-gt v5, v8, :cond_3

    .line 110
    invoke-interface {v3, v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    invoke-static {v8, p1, v9}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 114
    .end local v3    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .end local v5    # "sIx":I
    :cond_2
    invoke-static {p0, p1, v9}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;Z)V

    .line 116
    :cond_3
    return-void
.end method

.method public static evaluate([D)D
    .locals 13
    .param p0, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 48
    array-length v8, p0

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 49
    new-instance v8, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v9, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v8, v9}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v8

    .line 53
    :cond_0
    array-length v8, p0

    new-array v0, v8, [I

    .line 54
    .local v0, "counts":[I
    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([II)V

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "iSize":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 56
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    array-length v4, p0

    .local v4, "jSize":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 57
    aget-wide v8, p0, v1

    aget-wide v10, p0, v3

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 58
    aget v8, v0, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v1

    .line 56
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "j":I
    .end local v4    # "jSize":I
    :cond_3
    const-wide/16 v6, 0x0

    .line 62
    .local v6, "maxv":D
    const/4 v5, 0x0

    .line 63
    .local v5, "maxc":I
    const/4 v1, 0x0

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    .line 64
    aget v8, v0, v1

    if-le v8, v5, :cond_4

    .line 65
    aget-wide v6, p0, v1

    .line 66
    aget v5, v0, v1

    .line 63
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 69
    :cond_5
    if-le v5, v12, :cond_6

    .line 70
    return-wide v6

    .line 72
    :cond_6
    new-instance v8, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v9, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v8, v9}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v8
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .prologue
    .line 79
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_0

    .line 81
    aget-object v6, p1, v1

    invoke-static {v6, v4}, Lorg/apache/poi/ss/formula/functions/Mode;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/util/List;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [D

    .line 84
    .local v5, "values":[D
    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 85
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Mode;->evaluate([D)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 91
    .local v2, "result":D
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v6, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    .end local v1    # "i":I
    .end local v2    # "result":D
    .end local v4    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v5    # "values":[D
    :goto_2
    return-object v6

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_2
.end method
