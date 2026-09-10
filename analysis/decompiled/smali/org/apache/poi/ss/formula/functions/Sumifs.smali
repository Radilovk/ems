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

    .prologue
    .line 48
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Sumifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Sumifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D
    .locals 4
    .param p0, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "relRowIndex"    # I
    .param p2, "relColIndex"    # I

    .prologue
    .line 129
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 130
    .local v0, "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .end local v0    # "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    .line 134
    :goto_0
    return-wide v2

    .restart local v0    # "addend":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 142
    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object p0

    .line 141
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    .line 142
    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-interface {p0, v1, v1, v1, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    goto :goto_0

    .line 144
    .restart local p0    # "eval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private static sumMatchingCells([Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D
    .locals 12
    .param p0, "ranges"    # [Lorg/apache/poi/ss/formula/eval/AreaEval;
    .param p1, "predicates"    # [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .param p2, "aeSum"    # Lorg/apache/poi/ss/formula/eval/AreaEval;

    .prologue
    .line 99
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v2

    .line 100
    .local v2, "height":I
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v7

    .line 102
    .local v7, "width":I
    const-wide/16 v8, 0x0

    .line 103
    .local v8, "result":D
    const/4 v6, 0x0

    .local v6, "r":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 104
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_1
    if-ge v1, v7, :cond_3

    .line 106
    const/4 v4, 0x1

    .line 107
    .local v4, "matches":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, p0

    if-ge v3, v10, :cond_0

    .line 108
    aget-object v0, p0, v3

    .line 109
    .local v0, "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    aget-object v5, p1, v3

    .line 111
    .local v5, "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    invoke-interface {v0, v6, v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 112
    const/4 v4, 0x0

    .line 118
    .end local v0    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v5    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_0
    if-eqz v4, :cond_1

    .line 119
    invoke-static {p2, v6, v1}, Lorg/apache/poi/ss/formula/functions/Sumifs;->accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .restart local v0    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .restart local v5    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 103
    .end local v0    # "aeRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v3    # "i":I
    .end local v4    # "matches":Z
    .end local v5    # "mp":Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "c":I
    :cond_4
    return-wide v8
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

    .prologue
    .line 82
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

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

    if-eq v4, v5, :cond_1

    .line 85
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v4

    throw v4

    .line 82
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "r":Lorg/apache/poi/ss/formula/eval/AreaEval;
    :cond_2
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 51
    array-length v8, p1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    array-length v8, p1

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    .line 52
    :cond_0
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 71
    :goto_0
    return-object v8

    .line 56
    :cond_1
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p1, v8

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/Sumifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v5

    .line 59
    .local v5, "sumRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x2

    new-array v0, v8, [Lorg/apache/poi/ss/formula/eval/AreaEval;

    .line 60
    .local v0, "ae":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    array-length v8, v0

    new-array v4, v8, [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 61
    .local v4, "mp":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    const/4 v2, 0x1

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    array-length v8, p1

    if-ge v2, v8, :cond_2

    .line 62
    aget-object v8, p1, v2

    invoke-static {v8}, Lorg/apache/poi/ss/formula/functions/Sumifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v8

    aput-object v8, v0, v3

    .line 63
    add-int/lit8 v8, v2, 0x1

    aget-object v8, p1, v8

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v9

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v10

    invoke-static {v8, v9, v10}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v8

    aput-object v8, v4, v3

    .line 61
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_2
    invoke-direct {p0, v0, v5}, Lorg/apache/poi/ss/formula/functions/Sumifs;->validateCriteriaRanges([Lorg/apache/poi/ss/formula/eval/AreaEval;Lorg/apache/poi/ss/formula/eval/AreaEval;)V

    .line 68
    invoke-static {v0, v4, v5}, Lorg/apache/poi/ss/formula/functions/Sumifs;->sumMatchingCells([Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;Lorg/apache/poi/ss/formula/eval/AreaEval;)D

    move-result-wide v6

    .line 69
    .local v6, "result":D
    new-instance v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v8, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "ae":[Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v2    # "i":I
    .end local v3    # "k":I
    .end local v4    # "mp":[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .end local v5    # "sumRange":Lorg/apache/poi/ss/formula/eval/AreaEval;
    .end local v6    # "result":D
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v8

    goto :goto_0
.end method
