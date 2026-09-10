.class public Lorg/apache/poi/ss/formula/functions/Dec2Bin;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "Dec2Bin.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final DEFAULT_PLACES_VALUE:I = 0xa

.field private static final MAX_VALUE:J = 0x1ffL

.field private static final MIN_VALUE:J = -0x200L

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Dec2Bin;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "placesVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 62
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .local v1, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 66
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "strText1":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 70
    .local v3, "number":Ljava/lang/Double;
    if-nez v3, :cond_0

    .line 71
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x200

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1ff

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_5

    if-nez p4, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .local v0, "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 89
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "placesStr":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 93
    .local v5, "placesNumberDouble":Ljava/lang/Double;
    if-nez v5, :cond_3

    .line 94
    sget-object v6, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v6

    .line 98
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v6

    .line 100
    .local v6, "placesNumber":I
    if-ltz v6, :cond_4

    if-nez v6, :cond_6

    .line 101
    :cond_4
    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v7

    .line 86
    .end local v0    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "placesStr":Ljava/lang/String;
    .end local v5    # "placesNumberDouble":Ljava/lang/Double;
    .end local v6    # "placesNumber":I
    :catch_0
    move-exception v4

    .line 87
    .restart local v0    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v5

    return-object v5

    .line 81
    .end local v0    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_5
    :goto_0
    const/16 v6, 0xa

    .line 104
    .restart local v6    # "placesNumber":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "binary":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_7

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 111
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 114
    :cond_8
    new-instance v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v4, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 76
    .end local v0    # "binary":Ljava/lang/String;
    .end local v6    # "placesNumber":I
    :cond_9
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 63
    .end local v1    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "strText1":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/Double;
    :catch_1
    move-exception v1

    .line 64
    .local v0, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 123
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 126
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
