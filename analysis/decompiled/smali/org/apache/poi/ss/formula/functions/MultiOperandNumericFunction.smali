.class public abstract Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.super Ljava/lang/Object;
.source "MultiOperandNumericFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_NUM_OPERANDS:I = 0x1e

.field static final EMPTY_DOUBLE_ARRAY:[D


# instance fields
.field private final _isBlankCounted:Z

.field private final _isReferenceBoolCounted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [D

    sput-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->EMPTY_DOUBLE_ARRAY:[D

    return-void
.end method

.method protected constructor <init>(ZZ)V
    .locals 0
    .param p1, "isReferenceBoolCounted"    # Z
    .param p2, "isBlankCounted"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isReferenceBoolCounted:Z

    .line 45
    iput-boolean p2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isBlankCounted:Z

    .line 46
    return-void
.end method

.method private collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V
    .locals 7
    .param p1, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "isViaReference"    # Z
    .param p3, "temp"    # Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "ve must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_0
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v4, :cond_3

    .line 186
    if-eqz p2, :cond_1

    iget-boolean v4, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isReferenceBoolCounted:Z

    if-eqz v4, :cond_2

    :cond_1
    move-object v0, p1

    .line 187
    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 188
    .local v0, "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getNumberValue()D

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    .line 217
    .end local v0    # "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    .end local p1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    :goto_0
    return-void

    .line 192
    .restart local p1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_3
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v4, :cond_4

    move-object v2, p1

    .line 193
    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    .line 194
    .local v2, "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    goto :goto_0

    .line 197
    .end local v2    # "ne":Lorg/apache/poi/ss/formula/eval/NumericValueEval;
    :cond_4
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v4, :cond_6

    .line 198
    if-nez p2, :cond_2

    .line 202
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    .end local p1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 204
    .local v1, "d":Ljava/lang/Double;
    if-nez v1, :cond_5

    .line 205
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 207
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    goto :goto_0

    .line 210
    .end local v1    # "d":Ljava/lang/Double;
    .end local v3    # "s":Ljava/lang/String;
    .restart local p1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    instance-of v4, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_7

    .line 211
    new-instance v4, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v4, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v4

    .line 213
    .restart local p1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    sget-object v4, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, v4, :cond_8

    .line 214
    iget-boolean v4, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->_isBlankCounted:Z

    if-eqz v4, :cond_2

    .line 215
    const-wide/16 v4, 0x0

    invoke-virtual {p3, v4, v5}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->add(D)V

    goto :goto_0

    .line 219
    :cond_8
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ValueEval type passed for conversion: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V
    .locals 10
    .param p1, "operand"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "temp"    # Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 144
    instance-of v8, p1, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v8, :cond_3

    move-object v0, p1

    .line 145
    check-cast v0, Lorg/apache/poi/ss/formula/ThreeDEval;

    .line 146
    .local v0, "ae":Lorg/apache/poi/ss/formula/ThreeDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getFirstSheetIndex()I

    move-result v5

    .local v5, "sIx":I
    :goto_0
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getLastSheetIndex()I

    move-result v8

    if-gt v5, v8, :cond_8

    .line 147
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getWidth()I

    move-result v7

    .line 148
    .local v7, "width":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getHeight()I

    move-result v1

    .line 149
    .local v1, "height":I
    const/4 v4, 0x0

    .local v4, "rrIx":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 150
    const/4 v2, 0x0

    .local v2, "rcIx":I
    :goto_2
    if-ge v2, v7, :cond_1

    .line 151
    invoke-interface {v0, v5, v4, v2}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 152
    .local v6, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isSubtotalCounted()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v0, v4, v2}, Lorg/apache/poi/ss/formula/ThreeDEval;->isSubTotal(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    :cond_0
    invoke-direct {p0, v6, v9, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    goto :goto_3

    .line 149
    .end local v6    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .end local v2    # "rcIx":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/ThreeDEval;
    .end local v1    # "height":I
    .end local v4    # "rrIx":I
    .end local v5    # "sIx":I
    .end local v7    # "width":I
    :cond_3
    instance-of v8, p1, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v8, :cond_6

    move-object v0, p1

    .line 160
    check-cast v0, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 161
    .local v0, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v7

    .line 162
    .restart local v7    # "width":I
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    .line 163
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .restart local v4    # "rrIx":I
    :goto_4
    if-ge v4, v1, :cond_8

    .line 164
    const/4 v2, 0x0

    .restart local v2    # "rcIx":I
    :goto_5
    if-ge v2, v7, :cond_5

    .line 165
    invoke-interface {v0, v4, v2}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 166
    .restart local v6    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->isSubtotalCounted()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v0, v4, v2}, Lorg/apache/poi/ss/formula/TwoDEval;->isSubTotal(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 167
    :cond_4
    invoke-direct {p0, v6, v9, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    goto :goto_6

    .line 163
    .end local v6    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 172
    .end local v0    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v1    # "height":I
    .end local v2    # "rcIx":I
    .end local v4    # "rrIx":I
    .end local v7    # "width":I
    :cond_6
    instance-of v8, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v8, :cond_7

    move-object v3, p1

    .line 173
    check-cast v3, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 174
    .local v3, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v5

    .restart local v5    # "sIx":I
    :goto_7
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v8

    if-gt v5, v8, :cond_8

    .line 175
    invoke-interface {v3, v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    invoke-direct {p0, v8, v9, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 179
    .end local v3    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .end local v5    # "sIx":I
    :cond_7
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8, p2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValue(Lorg/apache/poi/ss/formula/eval/ValueEval;ZLorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 180
    :cond_8
    return-void
.end method


# virtual methods
.method protected abstract evaluate([D)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method

.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v3

    .line 91
    .local v3, "values":[D
    invoke-virtual {p0, v3}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->evaluate([D)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 96
    .local v0, "d":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    :cond_0
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 99
    .end local v0    # "d":D
    .end local v3    # "values":[D
    :goto_0
    return-object v4

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 99
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "d":D
    .restart local v3    # "values":[D
    :cond_1
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v4, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method

.method protected getMaxNumOperands()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x1e

    return v0
.end method

.method protected final getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 5
    .param p1, "operands"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 122
    array-length v3, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->getMaxNumOperands()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 123
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v3

    throw v3

    .line 125
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;

    invoke-direct {v2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;-><init>()V

    .line 127
    .local v2, "retval":Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "iSize":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 128
    aget-object v3, p1, v0

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->collectValues(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->toArray()[D

    move-result-object v3

    return-object v3
.end method

.method public isSubtotalCounted()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method
