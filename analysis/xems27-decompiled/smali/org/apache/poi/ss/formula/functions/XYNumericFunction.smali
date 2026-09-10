.class public abstract Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "XYNumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 93
    return-void
.end method

.method private static createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 170
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_2

    .line 173
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    return-object v0

    .line 176
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0

    .line 179
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0

    .line 171
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 16
    .param p1, "x"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "y"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    move-result-object v0

    .line 127
    .local v0, "acc":Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
    const/4 v1, 0x0

    .line 128
    .local v1, "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v2, 0x0

    .line 129
    .local v2, "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v3, 0x0

    .line 130
    .local v3, "accumlatedSome":Z
    const-wide/16 v4, 0x0

    .line 132
    .local v4, "result":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v7, p3

    if-ge v6, v7, :cond_3

    .line 133
    move-object/from16 v8, p1

    invoke-interface {v8, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    .line 134
    .local v9, "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v10, p2

    invoke-interface {v10, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 135
    .local v11, "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v12, v9, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v12, :cond_0

    .line 136
    if-nez v1, :cond_0

    .line 137
    move-object v1, v9

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 138
    goto :goto_1

    .line 141
    :cond_0
    instance-of v12, v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v12, :cond_1

    .line 142
    if-nez v2, :cond_1

    .line 143
    move-object v2, v11

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 144
    goto :goto_1

    .line 148
    :cond_1
    instance-of v12, v9, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v12, :cond_2

    instance-of v12, v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v12, :cond_2

    .line 149
    const/4 v3, 0x1

    .line 150
    move-object v12, v9

    check-cast v12, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 151
    .local v12, "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object v13, v11

    check-cast v13, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 152
    .local v13, "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v12}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v14

    invoke-virtual {v13}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v7

    invoke-interface {v0, v14, v15, v7, v8}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;->accumulate(DD)D

    move-result-wide v7

    add-double/2addr v4, v7

    .line 132
    .end local v9    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v11    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v13    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v10, p2

    .line 157
    .end local v6    # "i":I
    if-nez v1, :cond_6

    .line 160
    if-nez v2, :cond_5

    .line 163
    if-eqz v3, :cond_4

    .line 166
    return-wide v4

    .line 164
    :cond_4
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v6

    .line 161
    :cond_5
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v6, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v6

    .line 158
    :cond_6
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v6, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v6
.end method


# virtual methods
.method protected abstract createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 106
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    .line 107
    .local v2, "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .line 108
    .local v3, "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v4

    .line 109
    .local v4, "size":I
    if-eqz v4, :cond_3

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v5

    if-eq v5, v4, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "size":I
    .local v0, "result":D
    nop

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 117
    :cond_2
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 110
    .end local v0    # "result":D
    .restart local v2    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v3    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v4    # "size":I
    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 113
    .end local v2    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 114
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
