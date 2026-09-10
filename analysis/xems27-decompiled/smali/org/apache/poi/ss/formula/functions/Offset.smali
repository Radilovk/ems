.class public final Lorg/apache/poi/ss/formula/functions/Offset;
.super Ljava/lang/Object;
.source "Offset.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;,
        Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    }
.end annotation


# static fields
.field private static final LAST_VALID_COLUMN_INDEX:I = 0xff

.field private static final LAST_VALID_ROW_INDEX:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method private static createOffset(Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 6
    .param p0, "baseRef"    # Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    .param p1, "orRow"    # Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .param p2, "orCol"    # Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getFirstRowIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    move-result-object v0

    .line 195
    .local v0, "absRows":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getFirstColumnIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    move-result-object v1

    .line 197
    .local v1, "absCols":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    const/4 v2, 0x0

    const v3, 0xffff

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->isOutOfBounds(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    const/16 v3, 0xff

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->isOutOfBounds(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getFirstIndex()S

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getFirstIndex()S

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2

    return-object v2

    .line 201
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 198
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method

.method private static evaluateBaseRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 208
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0

    .line 211
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;-><init>(Lorg/apache/poi/ss/formula/eval/AreaEval;)V

    return-object v0

    .line 214
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_2

    .line 215
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 217
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method static evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 224
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 225
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 164
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    array-length v0, p1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    goto :goto_2

    .line 169
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateBaseRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;

    move-result-object v0

    .line 170
    .local v0, "baseRef":Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v3, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v3

    .line 171
    .local v3, "rowOffset":I
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v4, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    .line 172
    .local v4, "columnOffset":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getHeight()I

    move-result v5

    .line 173
    .local v5, "height":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getWidth()I

    move-result v6

    .line 174
    .local v6, "width":I
    array-length v7, p1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    if-eq v7, v2, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    aget-object v2, p1, v8

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2

    move v6, v2

    .line 178
    :cond_2
    aget-object v1, p1, v1

    invoke-static {v1, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v1

    move v5, v1

    .line 181
    :goto_0
    if-eqz v5, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    .line 184
    :cond_3
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    invoke-direct {v1, v3, v5}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    .line 185
    .local v1, "rowOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    new-instance v2, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    invoke-direct {v2, v4, v6}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    .line 186
    .local v2, "colOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Offset;->createOffset(Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v7

    return-object v7

    .line 182
    .end local v1    # "rowOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .end local v2    # "colOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    :cond_4
    :goto_1
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 187
    .end local v0    # "baseRef":Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    .end local v3    # "rowOffset":I
    .end local v4    # "columnOffset":I
    .end local v5    # "height":I
    .end local v6    # "width":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 165
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_5
    :goto_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
