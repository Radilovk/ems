.class public final Lorg/apache/poi/ss/formula/functions/Dec2Hex;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "Dec2Hex.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final DEFAULT_PLACES_VALUE:I = 0xa

.field private static final MAX_VALUE:J

.field private static final MIN_VALUE:J

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Dec2Hex;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 59
    const-string v0, "-549755813888"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->MIN_VALUE:J

    .line 60
    const-string v0, "549755813887"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->MAX_VALUE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "number"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "places"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 66
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    .local v1, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 70
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "strText1":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 74
    .local v3, "number1":Ljava/lang/Double;
    if-nez v3, :cond_0

    .line 75
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    sget-wide v6, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->MIN_VALUE:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_7

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    sget-wide v6, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->MAX_VALUE:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    goto/16 :goto_2

    .line 83
    :cond_1
    const/4 v4, 0x0

    .line 84
    .local v4, "placesNumber":I
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_2

    .line 85
    const/16 v4, 0xa

    goto :goto_0

    .line 87
    :cond_2
    if-eqz p4, :cond_4

    .line 90
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .local v0, "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 94
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "placesStr":Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 98
    .local v6, "placesNumberDouble":Ljava/lang/Double;
    if-nez v6, :cond_3

    .line 99
    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v7

    .line 103
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v4

    .line 105
    if-gez v4, :cond_4

    .line 106
    sget-object v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v7

    .line 91
    .end local v0    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "placesStr":Ljava/lang/String;
    .end local v6    # "placesNumberDouble":Ljava/lang/Double;
    :catch_0
    move-exception v5

    .line 92
    .restart local v0    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v5, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v6

    return-object v6

    .line 111
    .end local v0    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "X"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "hex":Ljava/lang/String;
    goto :goto_1

    .line 115
    .end local v0    # "hex":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "hex":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpg-double v9, v5, v7

    if-gez v9, :cond_6

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_6
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 80
    .end local v0    # "hex":Ljava/lang/String;
    .end local v4    # "placesNumber":I
    :cond_7
    :goto_2
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 67
    .end local v1    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "strText1":Ljava/lang/String;
    .end local v3    # "number1":Ljava/lang/Double;
    :catch_1
    move-exception v1

    .line 68
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

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 131
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 134
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
