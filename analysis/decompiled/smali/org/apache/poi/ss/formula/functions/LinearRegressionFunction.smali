.class public final Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "LinearRegressionFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;
    }
.end annotation


# instance fields
.field public function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;)V
    .locals 0
    .param p1, "function"    # Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    .line 114
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
    .line 225
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 228
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    .line 234
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v0

    .line 231
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    goto :goto_0

    .line 234
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    goto :goto_0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 30
    .param p1, "x"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "y"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v8, 0x0

    .line 142
    .local v8, "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v2, 0x0

    .line 144
    .local v2, "accumlatedSome":Z
    const-wide/16 v12, 0x0

    .local v12, "sumx":D
    const-wide/16 v14, 0x0

    .line 146
    .local v14, "sumy":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v9, v0, :cond_3

    .line 147
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v16

    .line 148
    .local v16, "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v17

    .line 149
    .local v17, "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 150
    if-nez v3, :cond_1

    move-object/from16 v3, v16

    .line 151
    check-cast v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 155
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 156
    if-nez v8, :cond_2

    move-object/from16 v8, v17

    .line 157
    check-cast v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 158
    goto :goto_1

    .line 162
    :cond_2
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 163
    const/4 v2, 0x1

    move-object/from16 v10, v16

    .line 164
    check-cast v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .local v10, "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object/from16 v11, v17

    .line 165
    check-cast v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 166
    .local v11, "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v26

    add-double v12, v12, v26

    .line 167
    invoke-virtual {v11}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v26

    add-double v14, v14, v26

    goto :goto_1

    .line 172
    .end local v10    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v11    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v16    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v17    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v18, v12, v26

    .line 173
    .local v18, "xbar":D
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v14, v26

    .line 176
    .local v24, "ybar":D
    const-wide/16 v20, 0x0

    .local v20, "xxbar":D
    const-wide/16 v22, 0x0

    .line 177
    .local v22, "xybar":D
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, p3

    if-ge v9, v0, :cond_7

    .line 178
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v16

    .line 179
    .restart local v16    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v17

    .line 181
    .restart local v17    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 182
    if-nez v3, :cond_5

    move-object/from16 v3, v16

    .line 183
    check-cast v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 177
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 187
    :cond_5
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 188
    if-nez v8, :cond_6

    move-object/from16 v8, v17

    .line 189
    check-cast v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 190
    goto :goto_3

    .line 195
    :cond_6
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v10, v16

    .line 196
    check-cast v10, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .restart local v10    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object/from16 v11, v17

    .line 197
    check-cast v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 198
    .restart local v11    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v26

    sub-double v26, v26, v18

    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v28

    sub-double v28, v28, v18

    mul-double v26, v26, v28

    add-double v20, v20, v26

    .line 199
    invoke-virtual {v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v26

    sub-double v26, v26, v18

    invoke-virtual {v11}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v28

    sub-double v28, v28, v24

    mul-double v26, v26, v28

    add-double v22, v22, v26

    goto :goto_3

    .line 204
    .end local v10    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v11    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v16    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v17    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    div-double v6, v22, v20

    .line 205
    .local v6, "beta1":D
    mul-double v26, v6, v18

    sub-double v4, v24, v26

    .line 207
    .local v4, "beta0":D
    if-eqz v3, :cond_8

    .line 208
    new-instance v26, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v26

    .line 210
    :cond_8
    if-eqz v8, :cond_9

    .line 211
    new-instance v26, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v26

    .line 213
    :cond_9
    if-nez v2, :cond_a

    .line 214
    new-instance v26, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v27, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct/range {v26 .. v27}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v26

    .line 217
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    move-object/from16 v26, v0

    sget-object v27, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 220
    .end local v4    # "beta0":D
    :goto_4
    return-wide v4

    .restart local v4    # "beta0":D
    :cond_b
    move-wide v4, v6

    goto :goto_4
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 120
    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v5

    .line 121
    .local v5, "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v4

    .line 122
    .local v4, "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v1

    .line 123
    .local v1, "size":I
    if-eqz v1, :cond_0

    invoke-interface {v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v6

    if-eq v6, v1, :cond_1

    .line 124
    :cond_0
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 133
    .end local v1    # "size":I
    .end local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :goto_0
    return-object v6

    .line 126
    .restart local v1    # "size":I
    .restart local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :cond_1
    invoke-direct {p0, v4, v5, v1}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 130
    .local v2, "result":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    :cond_2
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 127
    .end local v1    # "size":I
    .end local v2    # "result":D
    .end local v4    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v5    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_0

    .line 133
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
