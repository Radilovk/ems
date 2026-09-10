.class public final Lorg/apache/poi/ss/formula/functions/Column;
.super Ljava/lang/Object;
.source "Column.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function0Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function1Arg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .line 29
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v1, p2, 0x1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 34
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result v0

    .local v0, "rnum":I
    goto :goto_0

    .line 36
    .end local v0    # "rnum":I
    :cond_0
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 37
    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result v0

    .line 43
    .restart local v0    # "rnum":I
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v2, v0, 0x1

    int-to-double v2, v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1

    .line 40
    .end local v0    # "rnum":I
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 46
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 52
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Column;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 v1, p3, 0x1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0
.end method
