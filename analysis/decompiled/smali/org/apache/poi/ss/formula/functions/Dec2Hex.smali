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

    .prologue
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

    .prologue
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

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 18
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "number"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "places"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 66
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 70
    .local v12, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "strText1":Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 74
    .local v6, "number1":Ljava/lang/Double;
    if-nez v6, :cond_0

    .line 75
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 122
    .end local v6    # "number1":Ljava/lang/Double;
    .end local v11    # "strText1":Ljava/lang/String;
    .end local v12    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v13

    .line 67
    :catch_0
    move-exception v4

    .line 68
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v13

    goto :goto_0

    .line 79
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v6    # "number1":Ljava/lang/Double;
    .restart local v11    # "strText1":Ljava/lang/String;
    .restart local v12    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v14

    sget-wide v16, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->MIN_VALUE:J

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v14

    sget-wide v16, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->MAX_VALUE:J

    cmp-long v13, v14, v16

    if-lez v13, :cond_2

    .line 80
    :cond_1
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 83
    :cond_2
    const/4 v7, 0x0

    .line 84
    .local v7, "placesNumber":I
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_5

    .line 85
    const/16 v7, 0xa

    .line 111
    :cond_3
    if-eqz v7, :cond_7

    .line 112
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "X"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "hex":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_4

    .line 119
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FF"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_4
    new-instance v13, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    .end local v5    # "hex":Ljava/lang/String;
    :cond_5
    if-eqz p4, :cond_3

    .line 90
    :try_start_1
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 94
    .local v10, "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v10}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "placesStr":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    .line 98
    .local v8, "placesNumberDouble":Ljava/lang/Double;
    if-nez v8, :cond_6

    .line 99
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto/16 :goto_0

    .line 91
    .end local v8    # "placesNumberDouble":Ljava/lang/Double;
    .end local v9    # "placesStr":Ljava/lang/String;
    .end local v10    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v4

    .line 92
    .restart local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v13

    goto/16 :goto_0

    .line 103
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v8    # "placesNumberDouble":Ljava/lang/Double;
    .restart local v9    # "placesStr":Ljava/lang/String;
    .restart local v10    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v7

    .line 105
    if-gez v7, :cond_3

    .line 106
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto/16 :goto_0

    .line 115
    .end local v8    # "placesNumberDouble":Ljava/lang/Double;
    .end local v9    # "placesStr":Ljava/lang/String;
    .end local v10    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "hex":Ljava/lang/String;
    goto :goto_1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    array-length v0, p1

    if-ne v0, v3, :cond_0

    .line 131
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 134
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    aget-object v2, p1, v2

    aget-object v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method
