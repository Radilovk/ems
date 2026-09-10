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

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 93
    return-void
.end method

.method private static createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 170
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 173
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    .line 179
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v0

    .line 176
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_2

    .line 177
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    goto :goto_0

    .line 179
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    goto :goto_0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 18
    .param p1, "x"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "y"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    move-result-object v2

    .line 127
    .local v2, "acc":Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
    const/4 v4, 0x0

    .line 128
    .local v4, "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v5, 0x0

    .line 129
    .local v5, "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v3, 0x0

    .line 130
    .local v3, "accumlatedSome":Z
    const-wide/16 v10, 0x0

    .line 132
    .local v10, "result":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v6, v0, :cond_3

    .line 133
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    .line 134
    .local v9, "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    .line 135
    .local v12, "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v13, v9, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v13, :cond_1

    .line 136
    if-nez v4, :cond_1

    move-object v4, v9

    .line 137
    check-cast v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_1
    instance-of v13, v12, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v13, :cond_2

    .line 142
    if-nez v5, :cond_2

    move-object v5, v12

    .line 143
    check-cast v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 144
    goto :goto_1

    .line 148
    :cond_2
    instance-of v13, v9, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v13, :cond_0

    instance-of v13, v12, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v13, :cond_0

    .line 149
    const/4 v3, 0x1

    move-object v7, v9

    .line 150
    check-cast v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .local v7, "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object v8, v12

    .line 151
    check-cast v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 152
    .local v8, "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v14

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v2, v14, v15, v0, v1}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;->accumulate(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    goto :goto_1

    .line 157
    .end local v7    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v8    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v9    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    if-eqz v4, :cond_4

    .line 158
    new-instance v13, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v13, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v13

    .line 160
    :cond_4
    if-eqz v5, :cond_5

    .line 161
    new-instance v13, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v13, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v13

    .line 163
    :cond_5
    if-nez v3, :cond_6

    .line 164
    new-instance v13, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v13, v14}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v13

    .line 166
    :cond_6
    return-wide v10
.end method


# virtual methods
.method protected abstract createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 106
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v4

    .line 107
    .local v4, "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v5

    .line 108
    .local v5, "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v1

    .line 109
    .local v1, "size":I
    if-eqz v1, :cond_0

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v6

    if-eq v6, v1, :cond_1

    .line 110
    :cond_0
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 119
    .end local v1    # "size":I
    .end local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :goto_0
    return-object v6

    .line 112
    .restart local v1    # "size":I
    .restart local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :cond_1
    invoke-direct {p0, v4, v5, v1}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 116
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 117
    :cond_2
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 113
    .end local v1    # "size":I
    .end local v2    # "result":D
    .end local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0

    .line 119
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "size":I
    .restart local v2    # "result":D
    .restart local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :cond_3
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v6, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
