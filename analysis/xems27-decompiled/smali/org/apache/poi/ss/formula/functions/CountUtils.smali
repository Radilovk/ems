.class final Lorg/apache/poi/ss/formula/functions/CountUtils;
.super Ljava/lang/Object;
.source "CountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;,
        Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static countArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 87
    if-eqz p0, :cond_3

    .line 90
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ThreeDEval;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    return v0

    .line 93
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-nez v0, :cond_2

    .line 96
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 97
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v0

    return v0

    .line 99
    :cond_1
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    return v0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count requires 3D Evals, 2D ones aren\'t supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eval must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 9
    .param p0, "areaEval"    # Lorg/apache/poi/ss/formula/ThreeDEval;
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "result":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getFirstSheetIndex()I

    move-result v1

    .local v1, "sIx":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getLastSheetIndex()I

    move-result v2

    if-gt v1, v2, :cond_4

    .line 53
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getHeight()I

    move-result v2

    .line 54
    .local v2, "height":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/ThreeDEval;->getWidth()I

    move-result v3

    .line 55
    .local v3, "width":I
    const/4 v4, 0x0

    .local v4, "rrIx":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 56
    const/4 v5, 0x0

    .local v5, "rcIx":I
    :goto_2
    if-ge v5, v3, :cond_2

    .line 57
    invoke-interface {p0, v1, v4, v5}, Lorg/apache/poi/ss/formula/ThreeDEval;->getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    .line 59
    .local v6, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v7, p1, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;

    if-eqz v7, :cond_0

    .line 60
    move-object v7, p1

    check-cast v7, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;

    .line 61
    .local v7, "areaPredicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;
    invoke-interface {v7, p0, v4, v5}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;->matches(Lorg/apache/poi/ss/formula/TwoDEval;II)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_3

    .line 64
    .end local v7    # "areaPredicate":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;
    :cond_0
    invoke-interface {p1, v6}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 56
    .end local v6    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 55
    .end local v5    # "rcIx":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    .end local v2    # "height":I
    .end local v3    # "width":I
    .end local v4    # "rrIx":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "sIx":I
    :cond_4
    return v0
.end method

.method public static countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I
    .locals 4
    .param p0, "refEval"    # Lorg/apache/poi/ss/formula/eval/RefEval;
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "result":I
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    .local v1, "sIx":I
    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 79
    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 80
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p1, v2}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 78
    .end local v2    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "sIx":I
    :cond_1
    return v0
.end method
