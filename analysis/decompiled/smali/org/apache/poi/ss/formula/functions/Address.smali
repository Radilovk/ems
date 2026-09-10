.class public Lorg/apache/poi/ss/formula/functions/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final REF_ABSOLUTE:I = 0x1

.field public static final REF_RELATIVE:I = 0x4

.field public static final REF_ROW_ABSOLUTE_COLUMN_RELATIVE:I = 0x2

.field public static final REF_ROW_RELATIVE_RELATIVE_ABSOLUTE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .prologue
    .line 36
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x2

    if-lt v13, v14, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x5

    if-le v13, v14, :cond_1

    .line 37
    :cond_0
    sget-object v13, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 100
    :goto_0
    return-object v13

    .line 42
    :cond_1
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, p1, v13

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v14

    double-to-int v9, v14

    .line 43
    .local v9, "row":I
    const/4 v13, 0x1

    aget-object v13, p1, v13

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v14

    double-to-int v3, v14

    .line 46
    .local v3, "col":I
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x2

    if-le v13, v14, :cond_2

    const/4 v13, 0x2

    aget-object v13, p1, v13

    sget-object v14, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq v13, v14, :cond_2

    .line 47
    const/4 v13, 0x2

    aget-object v13, p1, v13

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v14

    double-to-int v8, v14

    .line 51
    .local v8, "refType":I
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 69
    new-instance v13, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v13, v14}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v13
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v3    # "col":I
    .end local v8    # "refType":I
    .end local v9    # "row":I
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v13

    goto :goto_0

    .line 49
    .end local v4    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v3    # "col":I
    .restart local v9    # "row":I
    :cond_2
    const/4 v8, 0x1

    .restart local v8    # "refType":I
    goto :goto_1

    .line 53
    :pswitch_0
    const/4 v6, 0x1

    .line 54
    .local v6, "pAbsRow":Z
    const/4 v5, 0x1

    .line 73
    .local v5, "pAbsCol":Z
    :goto_2
    :try_start_1
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x3

    if-le v13, v14, :cond_5

    .line 74
    const/4 v13, 0x3

    aget-object v13, p1, v13

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    .line 76
    .local v12, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v13, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v12, v13, :cond_4

    const/4 v2, 0x1

    .line 82
    .end local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v2, "a1":Z
    :goto_3
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v14, 0x5

    if-ne v13, v14, :cond_7

    .line 83
    const/4 v13, 0x4

    aget-object v13, p1, v13

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    .line 84
    .restart local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v13, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v12, v13, :cond_6

    const/4 v11, 0x0

    .line 89
    .end local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v11, "sheetName":Ljava/lang/String;
    :goto_4
    new-instance v7, Lorg/apache/poi/ss/util/CellReference;

    add-int/lit8 v13, v9, -0x1

    add-int/lit8 v14, v3, -0x1

    invoke-direct {v7, v13, v14, v6, v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 90
    .local v7, "ref":Lorg/apache/poi/ss/util/CellReference;
    new-instance v10, Ljava/lang/StringBuffer;

    const/16 v13, 0x20

    invoke-direct {v10, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 91
    .local v10, "sb":Ljava/lang/StringBuffer;
    if-eqz v11, :cond_3

    .line 92
    invoke-static {v10, v11}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 93
    const/16 v13, 0x21

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    :cond_3
    invoke-virtual {v7}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    new-instance v13, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    .end local v2    # "a1":Z
    .end local v5    # "pAbsCol":Z
    .end local v6    # "pAbsRow":Z
    .end local v7    # "ref":Lorg/apache/poi/ss/util/CellReference;
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    .end local v11    # "sheetName":Ljava/lang/String;
    :pswitch_1
    const/4 v6, 0x1

    .line 58
    .restart local v6    # "pAbsRow":Z
    const/4 v5, 0x0

    .line 59
    .restart local v5    # "pAbsCol":Z
    goto :goto_2

    .line 61
    .end local v5    # "pAbsCol":Z
    .end local v6    # "pAbsRow":Z
    :pswitch_2
    const/4 v6, 0x0

    .line 62
    .restart local v6    # "pAbsRow":Z
    const/4 v5, 0x1

    .line 63
    .restart local v5    # "pAbsCol":Z
    goto :goto_2

    .line 65
    .end local v5    # "pAbsCol":Z
    .end local v6    # "pAbsRow":Z
    :pswitch_3
    const/4 v6, 0x0

    .line 66
    .restart local v6    # "pAbsRow":Z
    const/4 v5, 0x0

    .line 67
    .restart local v5    # "pAbsCol":Z
    goto :goto_2

    .line 76
    .restart local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    .line 78
    .end local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "a1":Z
    goto :goto_3

    .line 84
    .restart local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_6
    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_4

    .line 86
    .end local v12    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "sheetName":Ljava/lang/String;
    goto :goto_4

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
