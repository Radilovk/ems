.class final Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;
.super Ljava/lang/Object;
.source "ArgumentsEvaluator.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

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

    .line 54
    int-to-short v0, p3

    invoke-static {p1, p2, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 56
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "strVal":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 59
    .local v2, "dVal":Ljava/lang/Double;
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    return-wide v3

    .line 62
    :cond_0
    invoke-static {v1}, Lorg/apache/poi/ss/formula/atp/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 63
    .local v3, "date":Ljava/util/Calendar;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide v4

    return-wide v4

    .line 65
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v2    # "dVal":Ljava/lang/Double;
    .end local v3    # "date":Ljava/util/Calendar;
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    return-wide v1
.end method

.method public evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D
    .locals 6
    .param p1, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 79
    new-array v0, v0, [D

    return-object v0

    .line 82
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 83
    new-array v1, v2, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    return-object v1

    .line 84
    :cond_1
    instance-of v1, p1, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    if-eqz v1, :cond_5

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    .line 87
    .local v1, "area":Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 88
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v3

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 89
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    .line 93
    .local v2, "values":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 94
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    .end local v3    # "i":I
    :cond_4
    return-object v2

    .line 98
    .end local v0    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v1    # "area":Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
    .end local v2    # "values":[D
    :cond_5
    new-array v1, v2, [D

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v2

    aput-wide v2, v1, v0

    return-object v1
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

    .line 111
    if-nez p1, :cond_0

    .line 112
    const-wide/16 v0, 0x0

    return-wide v0

    .line 115
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    return-wide v0
.end method
