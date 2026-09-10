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

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private static compareBlank(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    .locals 5
    .param p0, "v"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 120
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 121
    return v1

    .line 123
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 124
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 125
    .local v0, "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1

    .line 127
    .end local v0    # "boolEval":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_2
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_3

    .line 128
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 129
    .local v0, "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v1

    return v1

    .line 131
    .end local v0    # "ne":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_5

    .line 132
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 133
    .local v0, "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 135
    .end local v0    # "se":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doCompare(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    .locals 6
    .param p0, "va"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "vb"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 76
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p0, v0, :cond_0

    .line 77
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->compareBlank(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v0

    return v0

    .line 79
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, v0, :cond_1

    .line 80
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->compareBlank(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v0

    neg-int v0, v0

    return v0

    .line 83
    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 84
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_4

    .line 85
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 86
    .local v0, "bA":Lorg/apache/poi/ss/formula/eval/BoolEval;
    move-object v3, p1

    check-cast v3, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 87
    .local v3, "bB":Lorg/apache/poi/ss/formula/eval/BoolEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v5

    if-ne v4, v5, :cond_2

    .line 88
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 92
    .end local v0    # "bA":Lorg/apache/poi/ss/formula/eval/BoolEval;
    .end local v3    # "bB":Lorg/apache/poi/ss/formula/eval/BoolEval;
    :cond_4
    return v1

    .line 94
    :cond_5
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_6

    .line 95
    return v2

    .line 97
    :cond_6
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_8

    .line 98
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_7

    .line 99
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 100
    .local v0, "sA":Lorg/apache/poi/ss/formula/eval/StringEval;
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 101
    .local v1, "sB":Lorg/apache/poi/ss/formula/eval/StringEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 103
    .end local v0    # "sA":Lorg/apache/poi/ss/formula/eval/StringEval;
    .end local v1    # "sB":Lorg/apache/poi/ss/formula/eval/StringEval;
    :cond_7
    return v1

    .line 105
    :cond_8
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_9

    .line 106
    return v2

    .line 108
    :cond_9
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_a

    .line 109
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_a

    .line 110
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 111
    .local v0, "nA":Lorg/apache/poi/ss/formula/eval/NumberEval;
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 112
    .local v1, "nB":Lorg/apache/poi/ss/formula/eval/NumberEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/poi/ss/util/NumberComparer;->compare(DD)I

    move-result v2

    return v2

    .line 115
    .end local v0    # "nA":Lorg/apache/poi/ss/formula/eval/NumberEval;
    .end local v1    # "nB":Lorg/apache/poi/ss/formula/eval/NumberEval;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operand types ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 64
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .local v1, "vA":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .local v0, "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 69
    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->doCompare(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v2

    .line 70
    .local v2, "cmpResult":I
    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->convertComparisonResult(I)Z

    move-result v3

    .line 71
    .local v3, "result":Z
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v4

    return-object v4

    .line 66
    .end local v0    # "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "cmpResult":I
    .end local v3    # "result":Z
    :catch_0
    move-exception v2

    .restart local v0    # "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .end local v0    # "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "vA":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v2

    move-object v1, v0

    .local v1, "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object v5, v1

    move-object v0, v5

    .line 67
    .restart local v0    # "vB":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v1, "vA":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
