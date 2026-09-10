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

    .line 63
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    .line 104
    return-void
.end method

.method private static createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .locals 1
    .param p0, "lookupValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "matchExact"    # Z

    .line 236
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v0

    return-object v0
.end method

.method private static eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p0, "srcRowIndex"    # I
    .param p1, "srcColumnIndex"    # I
    .param p2, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p3, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "match_type"    # D

    .line 90
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 92
    .local v4, "matchExact":Z
    :goto_0
    cmpl-double v5, p4, v1

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 95
    .local v0, "findLargestLessThanOrEqual":Z
    :cond_1
    :try_start_0
    invoke-static {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 96
    .local v1, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Match;->evaluateLookupRange(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v2

    .line 97
    .local v2, "lookupRange":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {v1, v2, v4, v0}, Lorg/apache/poi/ss/formula/functions/Match;->findIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;ZZ)I

    move-result v3

    .line 98
    .local v3, "index":I
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v6, v3, 0x1

    int-to-double v6, v6

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 99
    .end local v1    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "lookupRange":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v3    # "index":I
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method private static evaluateLookupRange(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 4
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 126
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 127
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 128
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v1

    .line 131
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v1

    return-object v1

    .line 134
    .end local v0    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_3

    .line 135
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    .line 136
    .local v0, "result":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    if-eqz v0, :cond_2

    .line 139
    return-object v0

    .line 137
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 143
    .end local v0    # "result":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-nez v0, :cond_6

    .line 146
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_5

    .line 147
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 148
    .local v0, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 149
    .local v1, "d":Ljava/lang/Double;
    if-nez v1, :cond_4

    .line 151
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 154
    :cond_4
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 156
    .end local v0    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v1    # "d":Ljava/lang/Double;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected eval type ("

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

    .line 144
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static evaluateMatchTypeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 5
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 163
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 165
    .local v0, "match_type":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v1, :cond_3

    .line 168
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v1, :cond_0

    .line 169
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 170
    .local v1, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    return-wide v2

    .line 172
    .end local v1    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_2

    .line 173
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 174
    .local v1, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 175
    .local v2, "d":Ljava/lang/Double;
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    return-wide v3

    .line 177
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 182
    .end local v1    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v2    # "d":Ljava/lang/Double;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected match_type type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_3
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1
.end method

.method private static findIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;ZZ)I
    .locals 6
    .param p0, "lookupValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "lookupRange"    # Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .param p2, "matchExact"    # Z
    .param p3, "findLargestLessThanOrEqual"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 191
    invoke-static {p0, p2}, Lorg/apache/poi/ss/formula/functions/Match;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object v0

    .line 193
    .local v0, "lookupComparer":Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v1

    .line 194
    .local v1, "size":I
    if-eqz p2, :cond_2

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 196
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    return v2

    .line 195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 203
    :cond_2
    if-eqz p3, :cond_6

    .line 205
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_5

    .line 206
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v3

    .line 207
    .local v3, "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    goto :goto_2

    .line 210
    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result v4

    if-nez v4, :cond_4

    .line 211
    return v2

    .line 205
    .end local v3    # "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 214
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 219
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_a

    .line 220
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v3

    .line 221
    .restart local v3    # "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 222
    return v2

    .line 224
    :cond_7
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 225
    const/4 v4, 0x1

    if-lt v2, v4, :cond_8

    .line 228
    add-int/lit8 v4, v2, -0x1

    return v4

    .line 226
    :cond_8
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 219
    .end local v3    # "cmp":Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 232
    .end local v2    # "i":I
    :cond_a
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method

.method private static isLookupValueWild(Ljava/lang/String;)Z
    .locals 1
    .param p0, "stringValue"    # Ljava/lang/String;

    .line 240
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

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
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 77
    :try_start_0
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/Match;->evaluateMatchTypeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .local v4, "match_type":D
    nop

    .line 85
    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Match;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 78
    .end local v4    # "match_type":D
    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    .line 82
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "match_type":D
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3
.end method
