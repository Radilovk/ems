.class public final Lorg/apache/poi/ss/formula/functions/DStarRunner;
.super Ljava/lang/Object;
.source "DStarRunner.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    }
.end annotation


# instance fields
.field private algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    .line 41
    return-void
.end method

.method private static fullfillsConditions(Lorg/apache/poi/ss/formula/TwoDEval;ILorg/apache/poi/ss/formula/TwoDEval;)Z
    .locals 11
    .param p0, "db"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p1, "row"    # I
    .param p2, "cdb"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x1

    .local v0, "conditionRow":I
    :goto_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_7

    .line 203
    const/4 v1, 0x1

    .line 204
    .local v1, "matches":Z
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    .line 207
    const/4 v4, 0x1

    .line 208
    .local v4, "columnCondition":Z
    const/4 v6, 0x0

    .line 211
    .local v6, "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_0
    invoke-interface {p2, v0, v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 215
    goto :goto_2

    .line 212
    :catch_0
    move-exception v7

    .line 214
    .local v7, "e":Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    .line 217
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_2
    instance-of v7, v6, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v7, :cond_0

    .line 218
    goto :goto_4

    .line 220
    :cond_0
    invoke-interface {p2, v2, v3}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 221
    .local v7, "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    .line 224
    instance-of v8, v7, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-nez v8, :cond_1

    .line 225
    const/4 v4, 0x0

    goto :goto_3

    .line 226
    :cond_1
    invoke-static {v7, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 228
    const/4 v4, 0x0

    .line 230
    :cond_2
    :goto_3
    if-ne v4, v5, :cond_4

    .line 232
    invoke-static {v7, p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v8

    invoke-interface {p0, p1, v8}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 235
    .local v8, "target":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v9

    .line 236
    .local v9, "conditionString":Ljava/lang/String;
    invoke-static {v8, v9}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 237
    const/4 v1, 0x0

    .line 238
    goto :goto_5

    .line 240
    .end local v8    # "target":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v9    # "conditionString":Ljava/lang/String;
    :cond_3
    nop

    .line 204
    .end local v4    # "columnCondition":Z
    .end local v6    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v7    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    .restart local v4    # "columnCondition":Z
    .restart local v6    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v7    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v5, "D* function with formula conditions"

    invoke-direct {v2, v5}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v3    # "column":I
    .end local v4    # "columnCondition":Z
    .end local v6    # "condition":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v7    # "targetHeader":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_5
    :goto_5
    if-ne v1, v5, :cond_6

    .line 246
    return v5

    .line 202
    .end local v1    # "matches":Z
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "conditionRow":I
    :cond_7
    return v2
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

    .line 175
    const/4 v0, -0x1

    .line 176
    .local v0, "resultColumn":I
    const/4 v1, 0x0

    .local v1, "column":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 177
    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 178
    .local v2, "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "columnName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    move v0, v1

    .line 181
    goto :goto_1

    .line 176
    .end local v2    # "columnNameValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "column":I
    :cond_1
    :goto_1
    return v0
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

    .line 143
    const/4 v0, -0x1

    .line 146
    .local v0, "resultColumn":I
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v1, :cond_1

    .line 147
    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v1

    .line 148
    .local v1, "doubleResultColumn":D
    double-to-int v0, v1

    .line 150
    int-to-double v3, v0

    sub-double v3, v1, v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 152
    nop

    .end local v1    # "doubleResultColumn":D
    add-int/lit8 v0, v0, -0x1

    .line 153
    goto :goto_0

    .line 151
    .restart local v1    # "doubleResultColumn":D
    :cond_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 154
    .end local v1    # "doubleResultColumn":D
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v0

    .line 156
    :goto_0
    return v0
.end method

.method private static getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 362
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    .line 363
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_0

    .line 364
    const-string v0, ""

    return-object v0

    .line 365
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v0, :cond_1

    .line 367
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "field"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 119
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 120
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 121
    .local v0, "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 124
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 122
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 127
    .end local v0    # "refEval":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_1
    return-object p0
.end method

.method private static testNormalCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Ljava/lang/String;)Z
    .locals 4
    .param p0, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 262
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "="

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v1, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 268
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->smallerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v1, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 271
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .restart local v0    # "number":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerEqualThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v1, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 277
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->largerThan:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v1, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 280
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "stringOrNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 285
    .local v1, "itsANumber":Z
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v1, 0x1

    .line 294
    goto :goto_0

    .line 287
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    const/4 v1, 0x1

    .line 293
    goto :goto_0

    .line 291
    :catch_1
    move-exception v3

    .line 292
    .local v3, "e2":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 295
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "e2":Ljava/lang/NumberFormatException;
    :goto_0
    if-eqz v1, :cond_4

    .line 296
    sget-object v2, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->equal:Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;

    invoke-static {p0, v2, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 298
    :cond_4
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "valueString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 302
    .end local v0    # "stringOrNumber":Ljava/lang/String;
    .end local v1    # "itsANumber":Z
    .end local v2    # "valueString":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getStringFromValueEval(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "valueString":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static testNumericCondition(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;Ljava/lang/String;)Z
    .locals 9
    .param p0, "valueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "op"    # Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;
    .param p2, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 319
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 320
    return v1

    .line 321
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    .line 324
    .local v2, "value":D
    const-wide/16 v4, 0x0

    .line 326
    .local v4, "conditionValue":D
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .local v0, "intValue":I
    int-to-double v4, v0

    .line 334
    .end local v0    # "intValue":I
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v6

    .line 333
    nop

    .line 336
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v0

    .line 337
    .local v0, "result":I
    sget-object v6, Lorg/apache/poi/ss/formula/functions/DStarRunner$1;->$SwitchMap$org$apache$poi$ss$formula$functions$DStarRunner$operator:[I

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/DStarRunner$operator;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_9

    const/4 v8, 0x2

    if-eq v6, v8, :cond_7

    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    .line 349
    return v1

    .line 347
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 345
    :cond_3
    if-gtz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 343
    :cond_5
    if-gez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 341
    :cond_7
    if-ltz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    .line 339
    :cond_9
    if-lez v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 331
    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 332
    .local v1, "e2":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v6, v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v6
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "database"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "filterColumn"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "conditionDatabase"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 55
    instance-of v0, p3, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_5

    instance-of v0, p5, Lorg/apache/poi/ss/formula/TwoDEval;

    if-nez v0, :cond_0

    goto :goto_3

    .line 58
    :cond_0
    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 59
    .local v0, "db":Lorg/apache/poi/ss/formula/TwoDEval;
    move-object v1, p5

    check-cast v1, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 63
    .local v1, "cdb":Lorg/apache/poi/ss/formula/TwoDEval;
    :try_start_0
    invoke-static {p4, v0}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->getColumnForName(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/TwoDEval;)I

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    .local v2, "fc":I
    nop

    .line 68
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 69
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3

    .line 73
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->reset()V

    .line 76
    const/4 v3, 0x1

    .local v3, "row":I
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 77
    const/4 v4, 0x1

    .line 79
    .local v4, "matches":Z
    :try_start_1
    invoke-static {v0, v3, v1}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->fullfillsConditions(Lorg/apache/poi/ss/formula/TwoDEval;ILorg/apache/poi/ss/formula/TwoDEval;)Z

    move-result v5
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 83
    nop

    .line 85
    if-eqz v4, :cond_3

    .line 87
    :try_start_2
    invoke-interface {v0, v3, v2}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->solveReference(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    .line 89
    .local v5, "currentValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    iget-object v6, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    invoke-interface {v6, v5}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v6
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .local v6, "shouldContinue":Z
    if-nez v6, :cond_2

    .line 91
    goto :goto_2

    .line 95
    .end local v5    # "currentValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v6    # "shouldContinue":Z
    :cond_2
    goto :goto_1

    .line 93
    :catch_0
    move-exception v5

    .line 94
    .local v5, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6

    .line 76
    .end local v4    # "matches":Z
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .restart local v4    # "matches":Z
    :catch_1
    move-exception v5

    .line 82
    .restart local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v6

    .line 100
    .end local v3    # "row":I
    .end local v4    # "matches":Z
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/apache/poi/ss/formula/functions/DStarRunner;->algorithm:Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;->getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 65
    .end local v2    # "fc":I
    :catch_2
    move-exception v2

    const/4 v3, 0x0

    .line 66
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v3, "fc":I
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 56
    .end local v0    # "db":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v1    # "cdb":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .end local v3    # "fc":I
    :cond_5
    :goto_3
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 44
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x0

    aget-object v4, p1, v0

    const/4 v0, 0x1

    aget-object v5, p1, v0

    const/4 v0, 0x2

    aget-object v6, p1, v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
