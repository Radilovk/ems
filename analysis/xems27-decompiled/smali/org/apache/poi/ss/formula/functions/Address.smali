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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 11
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 36
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    array-length v0, p1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    goto/16 :goto_7

    .line 42
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v3, p1, v0

    invoke-static {v3, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v3

    double-to-int v3, v3

    .line 43
    .local v3, "row":I
    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-static {v5, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v5

    double-to-int v5, v5

    .line 46
    .local v5, "col":I
    array-length v6, p1

    if-le v6, v1, :cond_1

    aget-object v6, p1, v1

    sget-object v7, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq v6, v7, :cond_1

    .line 47
    aget-object v6, p1, v1

    invoke-static {v6, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    double-to-int v6, v6

    .local v6, "refType":I
    goto :goto_0

    .line 49
    .end local v6    # "refType":I
    :cond_1
    const/4 v6, 0x1

    .line 51
    .restart local v6    # "refType":I
    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq v6, v4, :cond_5

    if-eq v6, v1, :cond_4

    if-eq v6, v8, :cond_3

    if-ne v6, v7, :cond_2

    move v1, v0

    .local v1, "pAbsRow":Z
    move v9, v0

    .line 65
    .local v9, "pAbsCol":Z
    const/4 v1, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    goto :goto_1

    .line 51
    .end local v1    # "pAbsRow":Z
    .end local v9    # "pAbsCol":Z
    :cond_2
    move v1, v0

    .line 69
    .local v0, "pAbsCol":Z
    .restart local v1    # "pAbsRow":Z
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v4}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    .end local p1    # "args":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p2    # "srcRowIndex":I
    .end local p3    # "srcColumnIndex":I
    throw v2

    .line 51
    .end local v0    # "pAbsCol":Z
    .end local v1    # "pAbsRow":Z
    .restart local p1    # "args":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p2    # "srcRowIndex":I
    .restart local p3    # "srcColumnIndex":I
    :cond_3
    move v1, v0

    .restart local v1    # "pAbsRow":Z
    move v9, v0

    .line 61
    .restart local v9    # "pAbsCol":Z
    const/4 v1, 0x0

    .line 62
    const/4 v9, 0x1

    .line 63
    goto :goto_1

    .line 51
    .end local v1    # "pAbsRow":Z
    .end local v9    # "pAbsCol":Z
    :cond_4
    move v1, v0

    .restart local v1    # "pAbsRow":Z
    move v9, v0

    .line 57
    .restart local v9    # "pAbsCol":Z
    const/4 v1, 0x1

    .line 58
    const/4 v9, 0x0

    .line 59
    goto :goto_1

    .line 53
    .end local v1    # "pAbsRow":Z
    .end local v9    # "pAbsCol":Z
    :cond_5
    const/4 v1, 0x1

    .line 54
    .restart local v1    # "pAbsRow":Z
    const/4 v9, 0x1

    .line 55
    .restart local v9    # "pAbsCol":Z
    nop

    .line 73
    :goto_1
    array-length v10, p1

    if-le v10, v8, :cond_7

    .line 74
    aget-object v8, p1, v8

    invoke-static {v8, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 76
    .local v8, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v10, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v8, v10, :cond_6

    :goto_2
    goto :goto_3

    :cond_6
    invoke-static {v8, v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    :goto_3
    move v0, v4

    .line 77
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v0, "a1":Z
    goto :goto_4

    .line 78
    .end local v0    # "a1":Z
    :cond_7
    const/4 v0, 0x1

    .line 82
    .restart local v0    # "a1":Z
    :goto_4
    array-length v4, p1

    if-ne v4, v2, :cond_9

    .line 83
    aget-object v2, p1, v7

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 84
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v4, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v2, v4, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object v2, v4

    .line 85
    .local v2, "sheetName":Ljava/lang/String;
    goto :goto_6

    .line 86
    .end local v2    # "sheetName":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    .line 89
    .restart local v2    # "sheetName":Ljava/lang/String;
    :goto_6
    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v5, -0x1

    invoke-direct {v4, v7, v8, v1, v9}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 90
    .local v4, "ref":Lorg/apache/poi/ss/util/CellReference;
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 91
    .local v7, "sb":Ljava/lang/StringBuffer;
    if-eqz v2, :cond_a

    .line 92
    invoke-static {v7, v2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 93
    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    :cond_a
    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    new-instance v8, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 99
    .end local v0    # "a1":Z
    .end local v1    # "pAbsRow":Z
    .end local v2    # "sheetName":Ljava/lang/String;
    .end local v3    # "row":I
    .end local v4    # "ref":Lorg/apache/poi/ss/util/CellReference;
    .end local v5    # "col":I
    .end local v6    # "refType":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v9    # "pAbsCol":Z
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1

    .line 37
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_b
    :goto_7
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
