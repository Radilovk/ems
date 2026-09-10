.class public Lorg/apache/poi/ss/formula/functions/Countifs;
.super Ljava/lang/Object;
.source "Countifs.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Countifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Countifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "result":Ljava/lang/Double;
    array-length v1, p1

    if-eqz v1, :cond_5

    array-length v1, p1

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    goto :goto_3

    .line 41
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 42
    aget-object v3, p1, v1

    .line 43
    .local v3, "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v4, v1, 0x1

    aget-object v4, p1, v4

    .line 44
    .local v4, "secondArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v1, v1, 0x2

    .line 45
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Countif;-><init>()V

    new-array v6, v2, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v7

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/ss/formula/functions/Countif;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 46
    .local v5, "evaluate":Lorg/apache/poi/ss/formula/eval/NumberEval;
    if-nez v0, :cond_1

    .line 47
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v10, v6, v8

    if-gez v10, :cond_2

    .line 49
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 51
    .end local v3    # "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "secondArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "evaluate":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_2
    :goto_1
    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_2
    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1

    .line 39
    :cond_5
    :goto_3
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1
.end method
