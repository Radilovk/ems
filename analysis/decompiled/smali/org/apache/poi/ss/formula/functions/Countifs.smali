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

    .prologue
    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Countifs;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Countifs;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 37
    const/4 v3, 0x0

    .line 38
    .local v3, "result":Ljava/lang/Double;
    array-length v5, p1

    if-eqz v5, :cond_0

    array-length v5, p1

    rem-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_1

    .line 39
    :cond_0
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 52
    :goto_0
    return-object v5

    .line 41
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_2
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 42
    aget-object v1, p1, v2

    .line 43
    .local v1, "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v5, v2, 0x1

    aget-object v4, p1, v5

    .line 44
    .local v4, "secondArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    add-int/lit8 v2, v2, 0x2

    .line 45
    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Countif;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v7

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/poi/ss/formula/functions/Countif;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 46
    .local v0, "evaluate":Lorg/apache/poi/ss/formula/eval/NumberEval;
    if-nez v3, :cond_3

    .line 47
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 49
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    .line 52
    .end local v0    # "evaluate":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v1    # "firstArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "secondArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    new-instance v5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-nez v3, :cond_5

    const-wide/16 v6, 0x0

    :goto_2
    invoke-direct {v5, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_2
.end method
