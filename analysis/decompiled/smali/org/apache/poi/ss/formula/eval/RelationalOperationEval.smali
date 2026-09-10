.class public abstract Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "RelationalOperationEval.java"


# static fields
.field public static final EqualEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final GreaterEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final GreaterThanEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LessEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LessThanEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final NotEqualEval:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->EqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 143
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->GreaterEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 148
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->GreaterThanEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 153
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->LessEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 158
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->LessThanEval:Lorg/apache/poi/ss/formula/functions/Function;

    .line 163
    new-instance v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$6;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval$6;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->NotEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private static compareBlank(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    .locals 8
    .param p0, "v"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 120
    sget-object v5, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v5, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v4

    .line 123
    :cond_1
    instance-of v5, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v5, :cond_3

    move-object v0, p0

    .line 124
    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 125
    .local v0, "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 127
    .end local v0    # "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_3
    instance-of v5, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v5, :cond_4

    move-object v1, p0

    .line 128
    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 129
    .local v1, "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    const-wide/16 v4, 0x0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v4

    goto :goto_0

    .line 131
    .end local v1    # "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_4
    instance-of v5, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v5, :cond_5

    move-object v2, p0

    .line 132
    check-cast v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 133
    .local v2, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    move v4, v3

    goto :goto_0

    .line 135
    .end local v2    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad value class ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static doCompare(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    .locals 10
    .param p0, "va"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "vb"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 76
    sget-object v8, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v8, :cond_1

    .line 77
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->compareBlank(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v6

    .line 112
    :cond_0
    :goto_0
    return v6

    .line 79
    :cond_1
    sget-object v8, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, v8, :cond_2

    .line 80
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->compareBlank(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v6

    neg-int v6, v6

    goto :goto_0

    .line 83
    :cond_2
    instance-of v8, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v8, :cond_4

    .line 84
    instance-of v8, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v8, :cond_0

    move-object v0, p0

    .line 85
    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .local v0, "bA":Lorg/apache/poi/ss/formula/eval/BoolEval;
    move-object v1, p1

    .line 86
    check-cast v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 87
    .local v1, "bB":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v8

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v9

    if-ne v8, v9, :cond_3

    .line 88
    const/4 v6, 0x0

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 94
    .end local v0    # "bA":Lorg/apache/poi/ss/formula/eval/BoolEval;
    .end local v1    # "bB":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_4
    instance-of v8, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v8, :cond_5

    move v6, v7

    .line 95
    goto :goto_0

    .line 97
    :cond_5
    instance-of v8, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v8, :cond_6

    .line 98
    instance-of v7, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v7, :cond_0

    move-object v4, p0

    .line 99
    check-cast v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    .local v4, "sA":Lorg/apache/poi/ss/formula/eval/StringEval;
    move-object v5, p1

    .line 100
    check-cast v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 101
    .local v5, "sB":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 105
    .end local v4    # "sA":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v5    # "sB":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_6
    instance-of v6, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v6, :cond_7

    move v6, v7

    .line 106
    goto :goto_0

    .line 108
    :cond_7
    instance-of v6, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v6, :cond_8

    .line 109
    instance-of v6, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v6, :cond_8

    move-object v2, p0

    .line 110
    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .local v2, "nA":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object v3, p1

    .line 111
    check-cast v3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 112
    .local v3, "nB":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v6

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v6

    goto :goto_0

    .line 115
    .end local v2    # "nA":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v3    # "nB":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_8
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad operand types ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method protected abstract convertComparisonResult(I)Z
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 64
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 65
    .local v3, "vA":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .local v4, "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->doCompare(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v0

    .line 70
    .local v0, "cmpResult":I
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->convertComparisonResult(I)Z

    move-result v2

    .line 71
    .local v2, "result":Z
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v5

    .end local v0    # "cmpResult":I
    .end local v2    # "result":Z
    .end local v3    # "vA":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v5

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    goto :goto_0
.end method
