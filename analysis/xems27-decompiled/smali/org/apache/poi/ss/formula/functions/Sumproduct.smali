.class public final Lorg/apache/poi/ss/formula/functions/Sumproduct;
.super Ljava/lang/Object;
.source "Sumproduct.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areasAllSameSize([Lorg/apache/poi/ss/formula/TwoDEval;II)Z
    .locals 4
    .param p0, "args"    # [Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "height"    # I
    .param p2, "width"    # I

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 182
    aget-object v1, p0, v0

    .line 184
    .local v1, "areaEval":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    .line 185
    return v3

    .line 187
    :cond_0
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 188
    return v3

    .line 181
    .end local v1    # "areaEval":Lorg/apache/poi/ss/formula/TwoDEval;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static evaluateAreaSumProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 15
    .param p0, "evalArgs"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 126
    array-length v0, p0

    .line 127
    .local v0, "maxN":I
    new-array v1, v0, [Lorg/apache/poi/ss/formula/TwoDEval;

    .line 129
    .local v1, "args":[Lorg/apache/poi/ss/formula/TwoDEval;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    nop

    .line 136
    aget-object v3, v1, v2

    .line 138
    .local v3, "firstArg":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v4

    .line 139
    .local v4, "height":I
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v5

    .line 142
    .local v5, "width":I
    invoke-static {v1, v4, v5}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->areasAllSameSize([Lorg/apache/poi/ss/formula/TwoDEval;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 145
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 146
    aget-object v6, v1, v2

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->throwFirstError(Lorg/apache/poi/ss/formula/TwoDEval;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 151
    :cond_1
    const-wide/16 v6, 0x0

    .line 153
    .local v6, "acc":D
    const/4 v8, 0x0

    .local v8, "rrIx":I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 154
    const/4 v9, 0x0

    .local v9, "rcIx":I
    :goto_2
    if-ge v9, v5, :cond_3

    .line 155
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 156
    .local v10, "term":D
    const/4 v12, 0x0

    .local v12, "n":I
    :goto_3
    if-ge v12, v0, :cond_2

    .line 157
    aget-object v13, v1, v12

    invoke-interface {v13, v8, v9}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    invoke-static {v13, v2}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->getProductTerm(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)D

    move-result-wide v13

    .line 158
    .local v13, "val":D
    mul-double v10, v10, v13

    .line 156
    .end local v13    # "val":D
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 160
    .end local v12    # "n":I
    :cond_2
    add-double/2addr v6, v10

    .line 154
    .end local v10    # "term":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 153
    .end local v9    # "rcIx":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 164
    .end local v8    # "rrIx":I
    :cond_4
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 130
    .end local v3    # "firstArg":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v4    # "height":I
    .end local v5    # "width":I
    .end local v6    # "acc":D
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/ArrayStoreException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3
.end method

.method private static evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p0, "evalArgs"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 87
    array-length v0, p0

    .line 89
    .local v0, "maxN":I
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 90
    .local v1, "term":D
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 91
    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->getScalarValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    .line 92
    .local v4, "val":D
    mul-double v1, v1, v4

    .line 90
    .end local v4    # "val":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "n":I
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v3
.end method

.method private static getProductTerm(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)D
    .locals 3
    .param p0, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "isScalarProduct"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 207
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_5

    if-nez p0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_4

    .line 219
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_2

    .line 220
    if-nez p1, :cond_1

    .line 225
    return-wide v1

    .line 221
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 227
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_3

    .line 228
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 229
    .local v0, "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v1

    return-wide v1

    .line 231
    .end local v0    # "nve":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value eval class ("

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

    .line 217
    :cond_4
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 210
    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 213
    return-wide v1

    .line 211
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static getScalarValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 4
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 100
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 101
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 102
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 105
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 106
    .local v0, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 103
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 107
    .end local v0    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_1
    move-object v0, p0

    .line 110
    .local v0, "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    if-eqz v0, :cond_4

    .line 113
    instance-of v2, v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v2, :cond_3

    .line 114
    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 116
    .local v2, "ae":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isColumn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isRow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    const/4 v3, 0x0

    invoke-interface {v2, v3, v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 122
    .end local v2    # "ae":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->getProductTerm(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)D

    move-result-wide v1

    return-wide v1

    .line 111
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static throwFirstError(Lorg/apache/poi/ss/formula/TwoDEval;)V
    .locals 7
    .param p0, "areaEval"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 168
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v0

    .line 169
    .local v0, "height":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v1

    .line 170
    .local v1, "width":I
    const/4 v2, 0x0

    .local v2, "rrIx":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 171
    const/4 v3, 0x0

    .local v3, "rcIx":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 172
    invoke-interface {p0, v2, v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 173
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v5, :cond_0

    .line 171
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .restart local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v6, v4

    check-cast v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v5

    .line 170
    .end local v3    # "rcIx":I
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "rrIx":I
    :cond_2
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 59
    array-length v0, p1

    .line 61
    .local v0, "maxN":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 62
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 64
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 66
    .local v1, "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_0
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v2, :cond_1

    .line 67
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2

    .line 69
    :cond_1
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v2, :cond_2

    .line 70
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2

    .line 72
    :cond_2
    instance-of v2, v1, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v2, :cond_4

    .line 73
    move-object v2, v1

    check-cast v2, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 74
    .local v2, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/TwoDEval;->isRow()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/TwoDEval;->isColumn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateSingleProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 77
    :cond_3
    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;->evaluateAreaSumProduct([Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 81
    .end local v2    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    :cond_4
    nop

    .line 82
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid arg type for SUMPRODUCT: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
