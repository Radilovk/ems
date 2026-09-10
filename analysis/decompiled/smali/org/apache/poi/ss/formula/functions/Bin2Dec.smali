.class public Lorg/apache/poi/ss/formula/functions/Bin2Dec;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Bin2Dec.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Bin2Dec;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private getDecimalValue(Ljava/lang/String;)I
    .locals 12
    .param p1, "unsigned"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v4, 0x0

    .line 98
    .local v4, "sum":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    .local v2, "numBits":I
    add-int/lit8 v3, v2, -0x1

    .line 101
    .local v3, "power":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "bit":I
    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 104
    .local v5, "term":I
    add-int/2addr v4, v5

    .line 105
    add-int/lit8 v3, v3, -0x1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "bit":I
    .end local v5    # "term":I
    :cond_0
    return v4
.end method

.method private static toggleBits(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x1

    .line 111
    const/4 v5, 0x2

    invoke-static {p0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 112
    .local v0, "i":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    shl-long v6, v8, v5

    sub-long/2addr v6, v8

    xor-long v2, v0, v6

    .line 113
    .local v2, "i2":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "s2":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 115
    :cond_0
    return-object v4
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/16 v9, 0xa

    .line 49
    instance-of v8, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v8, :cond_0

    move-object v4, p3

    .line 50
    check-cast v4, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 51
    .local v4, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v4}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v8

    invoke-interface {v4, v8}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .end local v4    # "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    .local v3, "number":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_1

    .line 56
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 93
    :goto_1
    return-object v8

    .line 53
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "number":Ljava/lang/String;
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v9, :cond_2

    .line 64
    move-object v6, v3

    .line 65
    .local v6, "unsigned":Ljava/lang/String;
    const/4 v2, 0x1

    .line 73
    .local v2, "isPositive":Z
    :goto_2
    if-eqz v2, :cond_3

    .line 75
    :try_start_0
    invoke-direct {p0, v6}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->getDecimalValue(Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "sum":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 93
    .local v7, "value":Ljava/lang/String;
    :goto_3
    new-instance v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-double v10, v10

    invoke-direct {v8, v10, v11}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_1

    .line 67
    .end local v2    # "isPositive":Z
    .end local v5    # "sum":I
    .end local v6    # "unsigned":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 68
    .restart local v6    # "unsigned":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .restart local v2    # "isPositive":Z
    goto :goto_2

    .line 80
    :cond_3
    :try_start_1
    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->toggleBits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "inverted":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->getDecimalValue(Ljava/lang/String;)I

    move-result v5

    .line 85
    .restart local v5    # "sum":I
    add-int/lit8 v5, v5, 0x1

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_3

    .line 89
    .end local v1    # "inverted":Ljava/lang/String;
    .end local v5    # "sum":I
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 119
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 120
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method
