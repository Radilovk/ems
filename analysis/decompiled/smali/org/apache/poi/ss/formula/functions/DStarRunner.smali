.class public final Lorg/apache/poi/ss/formula/functions/DStarRunner;
.super Ljava/lang/Object;
.source "DStarRunner.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/DStarRunner$1;,
        Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    }
.end annotation


# instance fields
.field private algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    .line 41
    return-void
.end method

.method private static fullfillsConditions(Lorg/apache/poi/ss/formula/TwoDEval;ILorg/apache/poi/ss/formula/TwoDEval;)Z
    .locals 13
    .param p0, "db"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "row"    # I
    .param p2, "cdb"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 202
    const/4 v3, 0x1

    .local v3, "conditionRow":I
    :goto_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v11

    if-ge v3, v11, :cond_7

    .line 203
    const/4 v6, 0x1

    .line 204
    .local v6, "matches":Z
    const/4 v0, 0x0

    .local v0, "column":I
    :goto_1
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v11

    if-ge v0, v11, :cond_3

    .line 207
    const/4 v1, 0x1

    .line 208
    .local v1, "columnCondition":Z
    const/4 v2, 0x0

    .line 211
    .local v2, "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_0
    invoke-interface {p2, v3, v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 217
    :goto_2
    instance-of v11, v2, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v11, :cond_1

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :catch_0
    move-exception v5

    .line 214
    .local v5, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_2

    .line 220
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-interface {p2, v10, v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 221
    .local v8, "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 224
    instance-of v11, v8, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-nez v11, :cond_4

    .line 225
    const/4 v1, 0x0

    .line 230
    :cond_2
    :goto_3
    if-ne v1, v9, :cond_5

    .line 232
    invoke-static {v8, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v11

    invoke-interface {p0, p1, v11}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 235
    .local v7, "target":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "conditionString":Ljava/lang/String;
    invoke-static {v7, v4}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 237
    const/4 v6, 0x0

    .line 245
    .end local v1    # "columnCondition":Z
    .end local v2    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "conditionString":Ljava/lang/String;
    .end local v7    # "target":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v8    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    if-ne v6, v9, :cond_6

    .line 249
    .end local v0    # "column":I
    .end local v6    # "matches":Z
    :goto_4
    return v9

    .line 226
    .restart local v0    # "column":I
    .restart local v1    # "columnCondition":Z
    .restart local v2    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v6    # "matches":Z
    .restart local v8    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    invoke-static {v8, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 228
    const/4 v1, 0x0

    goto :goto_3

    .line 241
    :cond_5
    new-instance v9, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v10, "D* function with formula conditions"

    invoke-direct {v9, v10}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 202
    .end local v1    # "columnCondition":Z
    .end local v2    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v8    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "column":I
    .end local v6    # "matches":Z
    :cond_7
    move v9, v10

    .line 249
    goto :goto_4
.end method

.method private static getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I
    .locals 2
    .param p0, "nameValueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "db"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForString(Lorg/apache/poi/ss/formula/TwoDEval;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getColumnForString(Lorg/apache/poi/ss/formula/TwoDEval;Ljava/lang/String;)I
    .locals 5
    .param p0, "db"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v3, -0x1

    .line 176
    .local v3, "resultColumn":I
    const/4 v0, 0x0

    .local v0, "column":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 177
    const/4 v4, 0x0

    invoke-interface {p0, v4, v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 178
    .local v2, "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    move v3, v0

    .line 184
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v2    # "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    return v3

    .line 176
    .restart local v1    # "columnName":Ljava/lang/String;
    .restart local v2    # "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getColumnForTag(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I
    .locals 8
    .param p0, "nameValueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "db"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v2, -0x1

    .line 146
    .local v2, "resultColumn":I
    instance-of v3, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v3, :cond_1

    .line 147
    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .end local p0    # "nameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    .line 148
    .local v0, "doubleResultColumn":D
    double-to-int v2, v0

    .line 150
    int-to-double v4, v2

    sub-double v4, v0, v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    .line 151
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 152
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 156
    .end local v0    # "doubleResultColumn":D
    :goto_0
    return v2

    .line 154
    .restart local p0    # "nameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v2

    goto :goto_0
.end method

.method private static getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    .line 363
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_0

    .line 364
    const-string v0, ""

    .line 367
    .end local p0    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v0

    .line 365
    .restart local p0    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 367
    :cond_1
    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    .end local p0    # "value":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "field"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 119
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 120
    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 121
    .local v0, "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 122
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 124
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    .line 127
    .end local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    .end local p0    # "field":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    return-object p0
.end method

.method private static testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/lang/String;)Z
    .locals 8
    .param p0, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 262
    const-string v6, "<"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "number":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v6, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v6

    .line 303
    .end local v3    # "number":Ljava/lang/String;
    :goto_0
    return v6

    .line 268
    .restart local v3    # "number":Ljava/lang/String;
    :cond_0
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v6, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 271
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 272
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .restart local v3    # "number":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 274
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 275
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v6, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 277
    :cond_2
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v6, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 280
    .end local v3    # "number":Ljava/lang/String;
    :cond_3
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 281
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "stringOrNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, "itsANumber":Z
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v2, 0x1

    .line 295
    :goto_1
    if-eqz v2, :cond_4

    .line 296
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v6, v4}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    const/4 v2, 0x1

    goto :goto_1

    .line 291
    :catch_1
    move-exception v1

    .line 292
    .local v1, "e2":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "e2":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "valueString":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 302
    .end local v2    # "itsANumber":Z
    .end local v4    # "stringOrNumber":Ljava/lang/String;
    .end local v5    # "valueString":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .restart local v5    # "valueString":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method

.method private static testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z
    .locals 12
    .param p0, "valueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "op"    # Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .param p2, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 319
    instance-of v10, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-nez v10, :cond_1

    move v8, v9

    .line 349
    .end local p0    # "valueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :goto_0
    return v8

    .line 321
    .restart local p0    # "valueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .end local p0    # "valueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v6

    .line 324
    .local v6, "value":D
    const-wide/16 v0, 0x0

    .line 326
    .local v0, "conditionValue":D
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 327
    .local v4, "intValue":I
    int-to-double v0, v4

    .line 336
    .end local v4    # "intValue":I
    :goto_1
    invoke-static {v6, v7, v0, v1}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v5

    .line 337
    .local v5, "result":I
    sget-object v10, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    move v8, v9

    .line 349
    goto :goto_0

    .line 328
    .end local v5    # "result":I
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 331
    :catch_1
    move-exception v3

    .line 332
    .local v3, "e2":Ljava/lang/NumberFormatException;
    new-instance v8, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v9, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v8, v9}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v8

    .line 339
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    .restart local v5    # "result":I
    :pswitch_0
    if-gtz v5, :cond_0

    move v8, v9

    goto :goto_0

    .line 341
    :pswitch_1
    if-gez v5, :cond_0

    move v8, v9

    goto :goto_0

    .line 343
    :pswitch_2
    if-ltz v5, :cond_0

    move v8, v9

    goto :goto_0

    .line 345
    :pswitch_3
    if-lez v5, :cond_0

    move v8, v9

    goto :goto_0

    .line 347
    :pswitch_4
    if-eqz v5, :cond_0

    move v8, v9

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "database"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "filterColumn"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "conditionDatabase"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 55
    instance-of v8, p3, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v8, :cond_0

    instance-of v8, p5, Lorg/apache/poi/ss/formula/TwoDEval;

    if-nez v8, :cond_1

    .line 56
    :cond_0
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 100
    :goto_0
    return-object v8

    :cond_1
    move-object v2, p3

    .line 58
    check-cast v2, Lorg/apache/poi/ss/formula/TwoDEval;

    .local v2, "db":Lorg/apache/poi/ss/formula/TwoDEval;
    move-object v0, p5

    .line 59
    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 63
    .local v0, "cdb":Lorg/apache/poi/ss/formula/TwoDEval;
    :try_start_0
    invoke-static {p4, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 68
    .local v4, "fc":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 69
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 65
    .end local v4    # "fc":I
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 73
    .end local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v4    # "fc":I
    :cond_2
    iget-object v8, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    invoke-interface {v8}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->reset()V

    .line 76
    const/4 v6, 0x1

    .local v6, "row":I
    :goto_1
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 77
    const/4 v5, 0x1

    .line 79
    .local v5, "matches":Z
    :try_start_1
    invoke-static {v2, v6, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->fullfillsConditions(Lorg/apache/poi/ss/formula/TwoDEval;ILorg/apache/poi/ss/formula/TwoDEval;)Z
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 85
    if-eqz v5, :cond_4

    .line 87
    :try_start_2
    invoke-interface {v2, v6, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 89
    .local v1, "currentValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    iget-object v8, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    invoke-interface {v8, v1}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 90
    .local v7, "shouldContinue":Z
    if-nez v7, :cond_4

    .line 100
    .end local v1    # "currentValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "matches":Z
    .end local v7    # "shouldContinue":Z
    :cond_3
    iget-object v8, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    invoke-interface {v8}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    goto :goto_0

    .line 81
    .restart local v5    # "matches":Z
    :catch_1
    move-exception v3

    .line 82
    .restart local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 93
    .end local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_2
    move-exception v3

    .line 94
    .restart local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    goto :goto_0

    .line 76
    .end local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    .line 44
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    aget-object v3, p1, v0

    const/4 v0, 0x1

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method
