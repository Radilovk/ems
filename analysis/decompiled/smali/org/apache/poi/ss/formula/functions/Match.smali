.class public final Lorg/apache/poi/ss/formula/functions/Match;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Match.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    .line 104
    return-void
.end method

.method private static createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .locals 1
    .param p0, "lookupValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "matchExact"    # Z

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v0

    return-object v0
.end method

.method private static eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p0, "srcRowIndex"    # I
    .param p1, "srcColumnIndex"    # I
    .param p2, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p3, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "match_type"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 90
    cmpl-double v7, p4, v8

    if-nez v7, :cond_0

    move v5, v1

    .line 92
    .local v5, "matchExact":Z
    :goto_0
    cmpl-double v7, p4, v8

    if-lez v7, :cond_1

    .line 95
    .local v1, "findLargestLessThanOrEqual":Z
    :goto_1
    :try_start_0
    invoke-static {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 96
    .local v4, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Match;->evaluateLookupRange(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .line 97
    .local v3, "lookupRange":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {v4, v3, v5, v1}, Lorg/apache/poi/ss/formula/functions/Match;->findIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;ZZ)I

    move-result v2

    .line 98
    .local v2, "index":I
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v7, v2, 0x1

    int-to-double v8, v7

    invoke-direct {v6, v8, v9}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "index":I
    .end local v3    # "lookupRange":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_2
    return-object v6

    .end local v1    # "findLargestLessThanOrEqual":Z
    .end local v5    # "matchExact":Z
    :cond_0
    move v5, v6

    .line 90
    goto :goto_0

    .restart local v5    # "matchExact":Z
    :cond_1
    move v1, v6

    .line 92
    goto :goto_1

    .line 99
    .restart local v1    # "findLargestLessThanOrEqual":Z
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    goto :goto_2
.end method

.method private static evaluateLookupRange(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 7
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 126
    instance-of v4, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 127
    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 128
    .local v1, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 129
    new-instance v2, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v4

    invoke-interface {v1, v4}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    .line 139
    .end local v1    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :goto_0
    return-object v2

    .line 131
    .restart local v1    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    goto :goto_0

    .line 134
    .end local v1    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_2
    instance-of v4, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v4, :cond_3

    .line 135
    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    .line 136
    .local v2, "result":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    if-nez v2, :cond_0

    .line 137
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 143
    .end local v2    # "result":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    instance-of v4, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v4, :cond_4

    .line 144
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 146
    :cond_4
    instance-of v4, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_6

    move-object v3, p0

    .line 147
    check-cast v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 148
    .local v3, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 149
    .local v0, "d":Ljava/lang/Double;
    if-nez v0, :cond_5

    .line 151
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 154
    :cond_5
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 156
    .end local v0    # "d":Ljava/lang/Double;
    .end local v3    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected eval type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static evaluateMatchTypeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 7
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 165
    .local v1, "match_type":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_0

    .line 166
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local v1    # "match_type":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v4, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 168
    .restart local v1    # "match_type":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v4, v1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 169
    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 170
    .local v2, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v4

    .line 180
    .end local v2    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :goto_0
    return-wide v4

    .line 172
    :cond_1
    instance-of v4, v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_3

    move-object v3, v1

    .line 173
    check-cast v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 174
    .local v3, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 175
    .local v0, "d":Ljava/lang/Double;
    if-nez v0, :cond_2

    .line 177
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 180
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    .line 182
    .end local v0    # "d":Ljava/lang/Double;
    .end local v3    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected match_type type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static findIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;ZZ)I
    .locals 7
    .param p0, "lookupValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "lookupRange"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "matchExact"    # Z
    .param p3, "findLargestLessThanOrEqual"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p2}, Lorg/apache/poi/ss/formula/functions/Match;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v3

    .line 193
    .local v3, "lookupComparer":Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v4

    .line 194
    .local v4, "size":I
    if-eqz p2, :cond_2

    .line 195
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 196
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v5, v2

    .line 228
    :goto_1
    return v5

    .line 195
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 200
    :cond_1
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v5

    .line 203
    .end local v2    # "i":I
    :cond_2
    if-eqz p3, :cond_6

    .line 205
    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 206
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v0

    .line 207
    .local v0, "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    :cond_3
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v5, v2

    .line 211
    goto :goto_1

    .line 214
    .end local v0    # "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v5

    .line 219
    .end local v2    # "i":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_a

    .line 220
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v0

    .line 221
    .restart local v0    # "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v5, v2

    .line 222
    goto :goto_1

    .line 224
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 225
    const/4 v5, 0x1

    if-ge v2, v5, :cond_8

    .line 226
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v5

    .line 228
    :cond_8
    add-int/lit8 v5, v2, -0x1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 219
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3

    .line 232
    .end local v0    # "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    :cond_a
    new-instance v5, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v5
.end method

.method private static isLookupValueWild(Ljava/lang/String;)Z
    .locals 1
    .param p0, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 240
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 67
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Match;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 77
    :try_start_0
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/Match;->evaluateMatchTypeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .local v4, "match_type":D
    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 85
    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Match;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .end local v4    # "match_type":D
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method
