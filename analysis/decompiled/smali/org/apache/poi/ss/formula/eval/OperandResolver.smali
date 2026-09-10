.class public final Lorg/apache/poi/ss/formula/eval/OperandResolver;
.super Ljava/lang/Object;
.source "OperandResolver.java"


# static fields
.field private static final Digits:Ljava/lang/String; = "(\\p{Digit}+)"

.field private static final Exp:Ljava/lang/String; = "[eE][+-]?(\\p{Digit}+)"

.field private static final fpRegex:Ljava/lang/String; = "[\\x00-\\x20]*[+-]?(((((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)([eE][+-]?(\\p{Digit}+))?)|(\\.((\\p{Digit}+))([eE][+-]?(\\p{Digit}+))?))))[\\x00-\\x20]*"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static chooseSingleElementFromArea(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->chooseSingleElementFromAreaInternal(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 121
    .local v0, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 124
    .restart local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    return-object v0
.end method

.method private static chooseSingleElementFromAreaInternal(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {p0, v1, v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->containsRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 163
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isRow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->containsRow(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->containsColumn(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_3
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 172
    :cond_4
    invoke-interface {p0, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->containsColumn(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 173
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 175
    :cond_5
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    invoke-interface {p0, v0, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method

.method private static chooseSingleElementFromRef(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p0, "ref"    # Lorg/apache/poi/ss/formula/eval/RefEval;

    .prologue
    .line 179
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public static coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;
    .locals 7
    .param p0, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "stringsAreBlanks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 288
    if-eqz p0, :cond_0

    sget-object v5, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v5, :cond_1

    .line 321
    .end local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    :goto_0
    return-object v4

    .line 292
    .restart local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v5, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v5, :cond_2

    .line 293
    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .end local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 296
    .restart local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    sget-object v5, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq p0, v5, :cond_0

    .line 300
    instance-of v5, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v5, :cond_5

    .line 301
    if-nez p1, :cond_0

    .line 304
    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "str":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 308
    :cond_3
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 312
    :cond_4
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 315
    .end local v3    # "str":Ljava/lang/String;
    .restart local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_5
    instance-of v4, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v4, :cond_8

    move-object v2, p0

    .line 316
    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 317
    .local v2, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    .line 318
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 319
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 321
    :cond_6
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 323
    .end local v0    # "d":D
    .end local v2    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_8
    instance-of v4, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_9

    .line 324
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v4, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 326
    .restart local p0    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_9
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected eval ("

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

.method public static coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 4
    .param p0, "ev"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v1, :cond_0

    .line 218
    const-wide/16 v2, 0x0

    .line 229
    .end local p0    # "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v0, "dd":Ljava/lang/Double;
    :goto_0
    return-wide v2

    .line 220
    .end local v0    # "dd":Ljava/lang/Double;
    .restart local p0    # "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v1, :cond_1

    .line 222
    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .end local p0    # "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    goto :goto_0

    .line 224
    .restart local p0    # "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_3

    .line 225
    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local p0    # "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 226
    .restart local v0    # "dd":Ljava/lang/Double;
    if-nez v0, :cond_2

    .line 227
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v1

    throw v1

    .line 229
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0

    .line 231
    .end local v0    # "dd":Ljava/lang/Double;
    .restart local p0    # "ev":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected arg eval type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    .locals 4
    .param p0, "ev"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v2, :cond_0

    .line 196
    const/4 v2, 0x0

    .line 201
    :goto_0
    return v2

    .line 198
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    .line 201
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method public static coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 4
    .param p0, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 272
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 273
    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    .line 274
    .local v0, "sve":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 277
    .end local v0    # "sve":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    :goto_0
    return-object v1

    .line 276
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v1, :cond_1

    .line 277
    const-string v1, ""

    goto :goto_0

    .line 279
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected eval class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 61
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v1, :cond_0

    .line 62
    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->chooseSingleElementFromRef(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 68
    .local v0, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 63
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v1, :cond_1

    .line 64
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->chooseSingleElementFromArea(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .restart local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 66
    .end local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    move-object v0, p0

    .restart local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 71
    .end local p0    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p0, "pText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 255
    const-string v2, "[\\x00-\\x20]*[+-]?(((((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)([eE][+-]?(\\p{Digit}+))?)|(\\.((\\p{Digit}+))([eE][+-]?(\\p{Digit}+))?))))[\\x00-\\x20]*"

    invoke-static {v2, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :cond_0
    :goto_0
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
