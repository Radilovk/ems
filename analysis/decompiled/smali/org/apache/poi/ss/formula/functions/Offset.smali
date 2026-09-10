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

    .prologue
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

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getFirstRowIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    move-result-object v1

    .line 195
    .local v1, "absRows":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getFirstColumnIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    move-result-object v0

    .line 197
    .local v0, "absCols":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    const v2, 0xffff

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->isOutOfBounds(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 200
    :cond_0
    const/16 v2, 0xff

    invoke-virtual {v0, v3, v2}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->isOutOfBounds(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2

    .line 203
    :cond_1
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
.end method

.method private static evaluateBaseRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 208
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    .line 212
    :goto_0
    return-object v0

    .line 211
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;-><init>(Lorg/apache/poi/ss/formula/eval/AreaEval;)V

    goto :goto_0

    .line 214
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_2

    .line 215
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0

    .line 217
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
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

    .prologue
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
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .prologue
    const/4 v9, 0x3

    .line 164
    array-length v8, p1

    if-lt v8, v9, :cond_0

    array-length v8, p1

    const/4 v9, 0x5

    if-le v8, v9, :cond_1

    .line 165
    :cond_0
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 188
    :goto_0
    return-object v8

    .line 169
    :cond_1
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p1, v8

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateBaseRef(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;

    move-result-object v0

    .line 170
    .local v0, "baseRef":Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-static {v8, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v5

    .line 171
    .local v5, "rowOffset":I
    const/4 v8, 0x2

    aget-object v8, p1, v8

    invoke-static {v8, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2

    .line 172
    .local v2, "columnOffset":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getHeight()I

    move-result v4

    .line 173
    .local v4, "height":I
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;->getWidth()I

    move-result v7

    .line 174
    .local v7, "width":I
    array-length v8, p1

    packed-switch v8, :pswitch_data_0

    .line 181
    :goto_1
    if-eqz v4, :cond_2

    if-nez v7, :cond_3

    .line 182
    :cond_2
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 176
    :pswitch_0
    const/4 v8, 0x4

    aget-object v8, p1, v8

    invoke-static {v8, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v7

    .line 178
    :pswitch_1
    const/4 v8, 0x3

    aget-object v8, p1, v8

    invoke-static {v8, p2, p3}, Lorg/apache/poi/ss/formula/functions/Offset;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    goto :goto_1

    .line 184
    :cond_3
    new-instance v6, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    invoke-direct {v6, v5, v4}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    .line 185
    .local v6, "rowOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    invoke-direct {v1, v2, v7}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    .line 186
    .local v1, "colOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    invoke-static {v0, v6, v1}, Lorg/apache/poi/ss/formula/functions/Offset;->createOffset(Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 187
    .end local v0    # "baseRef":Lorg/apache/poi/ss/formula/functions/Offset$BaseRef;
    .end local v1    # "colOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .end local v2    # "columnOffset":I
    .end local v4    # "height":I
    .end local v5    # "rowOffset":I
    .end local v6    # "rowOffsetRange":Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .end local v7    # "width":I
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
