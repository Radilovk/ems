.class public abstract Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.super Ljava/lang/Object;
.source "BooleanFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final AND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FALSE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final NOT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final OR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TRUE:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->AND:Lorg/apache/poi/ss/formula/functions/Function;

    .line 126
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->OR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 134
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->FALSE:Lorg/apache/poi/ss/formula/functions/Function;

    .line 139
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->TRUE:Lorg/apache/poi/ss/formula/functions/Function;

    .line 144
    new-instance v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->NOT:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 17
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->getInitialResultValue()Z

    move-result v9

    .line 58
    .local v9, "result":Z
    const/4 v3, 0x0

    .line 63
    .local v3, "atleastOneNonBlank":Z
    const/4 v5, 0x0

    .local v5, "i":I
    move-object/from16 v0, p1

    array-length v6, v0

    .local v6, "iSize":I
    :goto_0
    if-ge v5, v6, :cond_7

    .line 65
    aget-object v2, p1, v5

    .line 66
    .local v2, "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v15, v2, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v15, :cond_2

    move-object v1, v2

    .line 67
    check-cast v1, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 68
    .local v1, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v4

    .line 69
    .local v4, "height":I
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v14

    .line 70
    .local v14, "width":I
    const/4 v10, 0x0

    .local v10, "rrIx":I
    :goto_1
    if-ge v10, v4, :cond_5

    .line 71
    const/4 v7, 0x0

    .local v7, "rcIx":I
    :goto_2
    if-ge v7, v14, :cond_1

    .line 72
    invoke-interface {v1, v10, v7}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 73
    .local v13, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 74
    .local v12, "tempVe":Ljava/lang/Boolean;
    if-eqz v12, :cond_0

    .line 75
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v9

    .line 76
    const/4 v3, 0x1

    .line 71
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 70
    .end local v12    # "tempVe":Ljava/lang/Boolean;
    .end local v13    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 82
    .end local v1    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v4    # "height":I
    .end local v7    # "rcIx":I
    .end local v10    # "rrIx":I
    .end local v14    # "width":I
    :cond_2
    instance-of v15, v2, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v15, :cond_4

    move-object v8, v2

    .line 83
    check-cast v8, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 84
    .local v8, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v11

    .local v11, "sIx":I
    :goto_3
    invoke-interface {v8}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v15

    if-gt v11, v15, :cond_5

    .line 85
    invoke-interface {v8, v11}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v13

    .line 86
    .restart local v13    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 87
    .restart local v12    # "tempVe":Ljava/lang/Boolean;
    if-eqz v12, :cond_3

    .line 88
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v9

    .line 89
    const/4 v3, 0x1

    .line 84
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 95
    .end local v8    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .end local v11    # "sIx":I
    .end local v12    # "tempVe":Ljava/lang/Boolean;
    .end local v13    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    sget-object v15, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v2, v15, :cond_6

    .line 96
    const/4 v12, 0x0

    .line 101
    .restart local v12    # "tempVe":Ljava/lang/Boolean;
    :goto_4
    if-eqz v12, :cond_5

    .line 102
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v9

    .line 103
    const/4 v3, 0x1

    .line 63
    .end local v12    # "tempVe":Ljava/lang/Boolean;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :cond_6
    const/4 v15, 0x0

    invoke-static {v2, v15}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v12

    .restart local v12    # "tempVe":Ljava/lang/Boolean;
    goto :goto_4

    .line 107
    .end local v2    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v12    # "tempVe":Ljava/lang/Boolean;
    :cond_7
    if-nez v3, :cond_8

    .line 108
    new-instance v15, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v16, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct/range {v15 .. v16}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v15

    .line 110
    :cond_8
    return v9
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRow"    # I
    .param p3, "srcCol"    # I

    .prologue
    .line 43
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 44
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 52
    :goto_0
    return-object v2

    .line 48
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 52
    .local v0, "boolResult":Z
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v2

    goto :goto_0

    .line 49
    .end local v0    # "boolResult":Z
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getInitialResultValue()Z
.end method

.method protected abstract partialEvaluate(ZZ)Z
.end method
