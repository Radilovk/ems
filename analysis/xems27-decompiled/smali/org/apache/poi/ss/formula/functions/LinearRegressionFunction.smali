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

    .line 112
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    .line 114
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

    .line 225
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_2

    .line 228
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    return-object v0

    .line 231
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 232
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0

    .line 234
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0

    .line 226
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 27
    .param p1, "x"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "y"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 140
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 141
    .local v3, "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v4, 0x0

    .line 142
    .local v4, "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    const/4 v5, 0x0

    .line 144
    .local v5, "accumlatedSome":Z
    const-wide/16 v6, 0x0

    .local v6, "sumx":D
    const-wide/16 v8, 0x0

    .line 146
    .local v8, "sumy":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v2, :cond_3

    .line 147
    invoke-interface {v0, v10}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 148
    .local v11, "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {v1, v10}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    .line 149
    .local v12, "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v13, v11, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v13, :cond_0

    .line 150
    if-nez v3, :cond_0

    .line 151
    move-object v3, v11

    check-cast v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 152
    goto :goto_1

    .line 155
    :cond_0
    instance-of v13, v12, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v13, :cond_1

    .line 156
    if-nez v4, :cond_1

    .line 157
    move-object v4, v12

    check-cast v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 158
    goto :goto_1

    .line 162
    :cond_1
    instance-of v13, v11, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v13, :cond_2

    instance-of v13, v12, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v13, :cond_2

    .line 163
    const/4 v5, 0x1

    .line 164
    move-object v13, v11

    check-cast v13, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 165
    .local v13, "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object v14, v12

    check-cast v14, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 166
    .local v14, "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v13}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v15

    add-double/2addr v6, v15

    .line 167
    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v15

    add-double/2addr v8, v15

    .line 146
    .end local v11    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v13    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v14    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 172
    .end local v10    # "i":I
    :cond_3
    int-to-double v10, v2

    div-double v10, v6, v10

    .line 173
    .local v10, "xbar":D
    int-to-double v12, v2

    div-double v12, v8, v12

    .line 176
    .local v12, "ybar":D
    const-wide/16 v14, 0x0

    .local v14, "xxbar":D
    const-wide/16 v16, 0x0

    .line 177
    .local v16, "xybar":D
    const/16 v18, 0x0

    move-wide/from16 v25, v6

    move/from16 v6, v18

    move-wide/from16 v18, v25

    .local v6, "i":I
    .local v18, "sumx":D
    :goto_2
    if-ge v6, v2, :cond_7

    .line 178
    invoke-interface {v0, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 179
    .local v7, "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {v1, v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 181
    .local v0, "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_4

    .line 182
    if-nez v3, :cond_4

    .line 183
    move-object v1, v7

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 184
    .end local v3    # "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .local v1, "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    move-object v3, v1

    goto :goto_3

    .line 187
    .end local v1    # "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .restart local v3    # "firstXerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_5

    .line 188
    if-nez v4, :cond_5

    .line 189
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 190
    .end local v4    # "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .local v1, "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    move-object v4, v1

    goto :goto_3

    .line 195
    .end local v1    # "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .restart local v4    # "firstYerr":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :cond_5
    instance-of v1, v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_6

    .line 196
    move-object v1, v7

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 197
    .local v1, "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 198
    .local v20, "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v21

    sub-double v21, v21, v10

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v23

    sub-double v23, v23, v10

    mul-double v21, v21, v23

    add-double v14, v14, v21

    .line 199
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v21

    sub-double v21, v21, v10

    invoke-virtual/range {v20 .. v20}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v23

    sub-double v23, v23, v12

    mul-double v21, v21, v23

    add-double v16, v16, v21

    .line 177
    .end local v0    # "vy":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "nx":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v7    # "vx":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v20    # "ny":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_2

    .line 204
    .end local v6    # "i":I
    :cond_7
    div-double v0, v16, v14

    .line 205
    .local v0, "beta1":D
    mul-double v6, v0, v10

    sub-double v6, v12, v6

    .line 207
    .local v6, "beta0":D
    if-nez v3, :cond_b

    .line 210
    if-nez v4, :cond_a

    .line 213
    if-eqz v5, :cond_9

    .line 217
    move-object/from16 v2, p0

    move/from16 v20, v5

    .end local v5    # "accumlatedSome":Z
    .local v20, "accumlatedSome":Z
    iget-object v5, v2, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    sget-object v2, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    if-ne v5, v2, :cond_8

    .line 218
    return-wide v6

    .line 220
    :cond_8
    return-wide v0

    .line 214
    .end local v20    # "accumlatedSome":Z
    .restart local v5    # "accumlatedSome":Z
    :cond_9
    move/from16 v20, v5

    .end local v5    # "accumlatedSome":Z
    .restart local v20    # "accumlatedSome":Z
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 211
    .end local v20    # "accumlatedSome":Z
    .restart local v5    # "accumlatedSome":Z
    :cond_a
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v2, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 208
    :cond_b
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 120
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    .line 121
    .local v2, "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .line 122
    .local v3, "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v4

    .line 123
    .local v4, "size":I
    if-eqz v4, :cond_3

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v5

    if-eq v5, v4, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    invoke-direct {p0, v3, v2, v4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "size":I
    .local v0, "result":D
    nop

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 131
    :cond_2
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 124
    .end local v0    # "result":D
    .restart local v2    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v3    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v4    # "size":I
    :cond_3
    :goto_1
    :try_start_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 127
    .end local v2    # "vvY":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "vvX":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "size":I
    :catch_0
    move-exception v2

    .line 128
    .restart local v0    # "result":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
