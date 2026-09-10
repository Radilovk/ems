.class public final Lorg/apache/poi/ss/formula/functions/Sumifs;
.super Ljava/lang/Object;
.source "Sumifs.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Sumifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D
    .locals 3
    .param p0, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "relRowIndex"    # I
    .param p2, "relColIndex"    # I

    .line 129
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 130
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 131
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    return-wide v1

    .line 134
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 138
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object v0

    .line 141
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 142
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static sumMatchingCells([Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D
    .locals 11
    .param p0, "ranges"    # [Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "predicates"    # [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .param p2, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 99
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    .line 100
    .local v0, "height":I
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v1

    .line 102
    .local v1, "width":I
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "result":D
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 104
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 106
    const/4 v6, 0x1

    .line 107
    .local v6, "matches":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, p0

    if-ge v7, v8, :cond_1

    .line 108
    aget-object v8, p0, v7

    .line 109
    .local v8, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    aget-object v9, p1, v7

    .line 111
    .local v9, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    invoke-interface {v8, v4, v5}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 112
    const/4 v6, 0x0

    .line 113
    goto :goto_3

    .line 107
    .end local v8    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v9    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 118
    .end local v7    # "i":I
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    .line 119
    invoke-static {p2, v4, v5}, Lorg/apache/poi/ss/formula/functions/Sumifs;->accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 104
    .end local v6    # "matches":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 103
    .end local v5    # "c":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "r":I
    :cond_4
    return-wide v2
.end method

.method private validateCriteriaRanges([Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)V
    .locals 6
    .param p1, "criteriaRanges"    # [Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p2, "sumRange"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 82
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    .local v3, "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v4

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v4

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 82
    .end local v3    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .restart local v3    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v4

    throw v4

    .line 88
    .end local v0    # "arr$":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_1
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 51
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v0

    .line 59
    .local v0, "sumRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 60
    .local v1, "ae":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 61
    .local v2, "mp":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    const/4 v3, 0x1

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 62
    aget-object v5, p1, v3

    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Sumifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v5

    aput-object v5, v1, v4

    .line 63
    add-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v5

    aput-object v5, v2, v4

    .line 61
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    .end local v4    # "k":I
    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;->validateCriteriaRanges([Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)V

    .line 68
    invoke-static {v1, v2, v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;->sumMatchingCells([Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D

    move-result-wide v3

    .line 69
    .local v3, "result":D
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v5, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 70
    .end local v0    # "sumRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v1    # "ae":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v2    # "mp":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .end local v3    # "result":D
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 52
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
