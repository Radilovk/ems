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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 14
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->getInitialResultValue()Z

    move-result v0

    .line 58
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 63
    .local v1, "atleastOneNonBlank":Z
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "iSize":I
    :goto_0
    if-ge v2, v3, :cond_9

    .line 65
    aget-object v4, p1, v2

    .line 66
    .local v4, "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v5, v4, Lorg/apache/poi/ss/formula/TwoDEval;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 67
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/TwoDEval;

    .line 68
    .local v5, "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-interface {v5}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v7

    .line 69
    .local v7, "height":I
    invoke-interface {v5}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v8

    .line 70
    .local v8, "width":I
    const/4 v9, 0x0

    .local v9, "rrIx":I
    :goto_1
    if-ge v9, v7, :cond_2

    .line 71
    const/4 v10, 0x0

    .local v10, "rcIx":I
    :goto_2
    if-ge v10, v8, :cond_1

    .line 72
    invoke-interface {v5, v9, v10}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v11

    .line 73
    .local v11, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v11, v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 74
    .local v12, "tempVe":Ljava/lang/Boolean;
    if-eqz v12, :cond_0

    .line 75
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {p0, v0, v13}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v0

    .line 76
    const/4 v1, 0x1

    .line 71
    .end local v11    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 70
    .end local v10    # "rcIx":I
    .end local v12    # "tempVe":Ljava/lang/Boolean;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 80
    .end local v9    # "rrIx":I
    :cond_2
    goto :goto_5

    .line 82
    .end local v5    # "ae":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v7    # "height":I
    .end local v8    # "width":I
    :cond_3
    instance-of v5, v4, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v5, :cond_6

    .line 83
    move-object v5, v4

    check-cast v5, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 84
    .local v5, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v7

    .local v7, "sIx":I
    :goto_3
    invoke-interface {v5}, Lorg/apache/poi/ss/formula/eval/RefEval;->getLastSheetIndex()I

    move-result v8

    if-gt v7, v8, :cond_5

    .line 85
    invoke-interface {v5, v7}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    .line 86
    .local v8, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v8, v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 87
    .local v9, "tempVe":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    .line 88
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {p0, v0, v10}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v0

    .line 89
    const/4 v1, 0x1

    .line 84
    .end local v8    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 92
    .end local v7    # "sIx":I
    .end local v9    # "tempVe":Ljava/lang/Boolean;
    :cond_5
    goto :goto_5

    .line 95
    .end local v5    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    :cond_6
    sget-object v5, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v4, v5, :cond_7

    .line 96
    const/4 v5, 0x0

    .local v5, "tempVe":Ljava/lang/Boolean;
    goto :goto_4

    .line 98
    .end local v5    # "tempVe":Ljava/lang/Boolean;
    :cond_7
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 101
    .restart local v5    # "tempVe":Ljava/lang/Boolean;
    :goto_4
    if-eqz v5, :cond_8

    .line 102
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->partialEvaluate(ZZ)Z

    move-result v0

    .line 103
    const/4 v1, 0x1

    .line 63
    .end local v4    # "arg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "tempVe":Ljava/lang/Boolean;
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    .end local v3    # "iSize":I
    :cond_9
    if-eqz v1, :cond_a

    .line 110
    return v0

    .line 108
    :cond_a
    new-instance v2, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v2
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRow"    # I
    .param p3, "srcCol"    # I

    .line 43
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 44
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 48
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->calculate([Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v0, "boolResult":Z
    nop

    .line 52
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v1

    return-object v1

    .line 49
    .end local v0    # "boolResult":Z
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 50
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "boolResult":Z
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method protected abstract getInitialResultValue()Z
.end method

.method protected abstract partialEvaluate(ZZ)Z
.end method
