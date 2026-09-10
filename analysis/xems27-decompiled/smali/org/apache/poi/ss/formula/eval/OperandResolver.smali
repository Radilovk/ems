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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static chooseSingleElementFromArea(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 120
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->chooseSingleElementFromAreaInternal(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 121
    .local v0, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v1, :cond_0

    .line 124
    return-object v0

    .line 122
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1
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

    .line 156
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->isRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->containsRow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 161
    :cond_1
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

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

    return-object v0

    .line 170
    :cond_3
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0

    .line 172
    :cond_4
    invoke-interface {p0, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->containsColumn(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstRow()I

    move-result v0

    invoke-interface {p0, v0, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 173
    :cond_5
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0
.end method

.method private static chooseSingleElementFromRef(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p0, "ref"    # Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 179
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public static coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;
    .locals 6
    .param p0, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "stringsAreBlanks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    if-eqz p0, :cond_b

    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v1, :cond_0

    goto/16 :goto_1

    .line 292
    :cond_0
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v1, :cond_1

    .line 293
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v1, :cond_2

    .line 297
    return-object v0

    .line 300
    :cond_2
    instance-of v1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_6

    .line 301
    if-eqz p1, :cond_3

    .line 302
    return-object v0

    .line 304
    :cond_3
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "str":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 308
    :cond_4
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 312
    :cond_5
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    .line 315
    .end local v0    # "str":Ljava/lang/String;
    :cond_6
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_9

    .line 316
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 317
    .local v0, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v1

    .line 318
    .local v1, "d":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    .line 321
    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 319
    :cond_8
    new-instance v3, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v3

    .line 323
    .end local v0    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    .end local v1    # "d":D
    :cond_9
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_a

    .line 324
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 326
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected eval ("

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

    .line 290
    :cond_b
    :goto_1
    return-object v0
.end method

.method public static coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 3
    .param p0, "ev"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 217
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    .line 218
    const-wide/16 v0, 0x0

    return-wide v0

    .line 220
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_1

    .line 222
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    return-wide v0

    .line 224
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_3

    .line 225
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 226
    .local v0, "dd":Ljava/lang/Double;
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 227
    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v1

    throw v1

    .line 231
    .end local v0    # "dd":Ljava/lang/Double;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected arg eval type ("

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
.end method

.method public static coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    .locals 4
    .param p0, "ev"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 195
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    .line 201
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method public static coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    .locals 3
    .param p0, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 272
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v0, :cond_0

    .line 273
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    .line 274
    .local v0, "sve":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 276
    .end local v0    # "sve":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_1

    .line 277
    const-string v0, ""

    return-object v0

    .line 279
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected eval class ("

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

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 61
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->chooseSingleElementFromRef(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .local v0, "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 63
    .end local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_1

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->chooseSingleElementFromArea(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .restart local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .line 66
    .end local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    move-object v0, p0

    .line 68
    .restart local v0    # "result":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v1, :cond_2

    .line 71
    return-object v0

    .line 69
    :cond_2
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v2, v0

    check-cast v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1
.end method

.method public static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p0, "pText"    # Ljava/lang/String;

    .line 255
    const-string v0, "[\\x00-\\x20]*[+-]?(((((\\p{Digit}+)(\\.)?((\\p{Digit}+)?)([eE][+-]?(\\p{Digit}+))?)|(\\.((\\p{Digit}+))([eE][+-]?(\\p{Digit}+))?))))[\\x00-\\x20]*"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 262
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v1
.end method
