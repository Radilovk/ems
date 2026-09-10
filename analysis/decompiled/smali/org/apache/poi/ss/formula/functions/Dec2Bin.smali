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

    .prologue
    .line 53
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Dec2Bin;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
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

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 18
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "placesVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 62
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 66
    .local v12, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "strText1":Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 70
    .local v6, "number":Ljava/lang/Double;
    if-nez v6, :cond_0

    .line 71
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 114
    .end local v6    # "number":Ljava/lang/Double;
    .end local v11    # "strText1":Ljava/lang/String;
    .end local v12    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v13

    .line 63
    :catch_0
    move-exception v5

    .line 64
    .local v5, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v13

    goto :goto_0

    .line 75
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v6    # "number":Ljava/lang/Double;
    .restart local v11    # "strText1":Ljava/lang/String;
    .restart local v12    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v14

    const-wide/16 v16, -0x200

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    invoke-virtual {v6}, Ljava/lang/Double;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1ff

    cmp-long v13, v14, v16

    if-lez v13, :cond_2

    .line 76
    :cond_1
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v13, v14, v16

    if-ltz v13, :cond_3

    if-nez p4, :cond_6

    .line 81
    :cond_3
    const/16 v7, 0xa

    .line 104
    .local v7, "placesNumber":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "binary":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xa

    if-le v13, v14, :cond_5

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0xa

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 110
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v7, :cond_9

    .line 111
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 85
    .end local v4    # "binary":Ljava/lang/String;
    .end local v7    # "placesNumber":I
    :cond_6
    :try_start_1
    move-object/from16 v0, p4

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 89
    .local v10, "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v10}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "placesStr":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    .line 93
    .local v8, "placesNumberDouble":Ljava/lang/Double;
    if-nez v8, :cond_7

    .line 94
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 86
    .end local v8    # "placesNumberDouble":Ljava/lang/Double;
    .end local v9    # "placesStr":Ljava/lang/String;
    .end local v10    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v5

    .line 87
    .restart local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v13

    goto :goto_0

    .line 98
    .end local v5    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v8    # "placesNumberDouble":Ljava/lang/Double;
    .restart local v9    # "placesStr":Ljava/lang/String;
    .restart local v10    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v7

    .line 100
    .restart local v7    # "placesNumber":I
    if-ltz v7, :cond_8

    if-nez v7, :cond_4

    .line 101
    :cond_8
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 114
    .end local v8    # "placesNumberDouble":Ljava/lang/Double;
    .end local v9    # "placesStr":Ljava/lang/String;
    .end local v10    # "placesValueEval":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v4    # "binary":Ljava/lang/String;
    :cond_9
    new-instance v13, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v13, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    array-length v0, p1

    if-ne v0, v3, :cond_0

    .line 123
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 125
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 126
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    aget-object v2, p1, v2

    aget-object v3, p1, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0
.end method
