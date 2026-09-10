.class final Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;
.super Ljava/lang/Object;
.source "ArgumentsEvaluator.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 6
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 54
    int-to-short v4, p3

    invoke-static {p1, p2, v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 56
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v4, :cond_1

    .line 57
    check-cast v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "strVal":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 59
    .local v0, "dVal":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 65
    .end local v0    # "dVal":Ljava/lang/Double;
    .end local v2    # "strVal":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 62
    .restart local v0    # "dVal":Ljava/lang/Double;
    .restart local v2    # "strVal":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lorg/apache/poi/ss/formula/atp/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 63
    .local v1, "date":Ljava/util/Calendar;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v4

    goto :goto_0

    .line 65
    .end local v0    # "dVal":Ljava/lang/Double;
    .end local v1    # "date":Ljava/util/Calendar;
    .end local v2    # "strVal":Ljava/lang/String;
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v4

    goto :goto_0
.end method

.method public evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D
    .locals 9
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 79
    new-array v3, v8, [D

    .line 98
    :cond_0
    :goto_0
    return-object v3

    .line 82
    :cond_1
    instance-of v5, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v5, :cond_2

    .line 83
    new-array v3, v6, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    aput-wide v6, v3, v8

    goto :goto_0

    .line 84
    :cond_2
    instance-of v5, p1, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    if-eqz v5, :cond_5

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v0, p1

    .line 86
    check-cast v0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    .line 87
    .local v0, "area":Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v5

    if-gt v1, v5, :cond_4

    .line 88
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v2

    .local v2, "j":I
    :goto_2
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v5

    if-gt v2, v5, :cond_3

    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v2}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 87
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .end local v2    # "j":I
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [D

    .line 93
    .local v3, "values":[D
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 94
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 98
    .end local v0    # "area":Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
    .end local v1    # "i":I
    .end local v3    # "values":[D
    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_5
    new-array v3, v6, [D

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v6

    aput-wide v6, v3, v8

    goto :goto_0
.end method

.method public evaluateNumberArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 2
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-wide/16 v0, 0x0

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    goto :goto_0
.end method
