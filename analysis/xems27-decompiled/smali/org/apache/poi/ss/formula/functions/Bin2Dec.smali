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

    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Bin2Dec;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method

.method private getDecimalValue(Ljava/lang/String;)I
    .locals 11
    .param p1, "unsigned"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "sum":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 99
    .local v1, "numBits":I
    add-int/lit8 v2, v1, -0x1

    .line 101
    .local v2, "power":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 102
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 103
    .local v4, "bit":I
    int-to-double v5, v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-int v5, v5

    .line 104
    .local v5, "term":I
    add-int/2addr v0, v5

    .line 105
    nop

    .end local v4    # "bit":I
    .end local v5    # "term":I
    add-int/lit8 v2, v2, -0x1

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "i":I
    :cond_0
    return v0
.end method

.method private static toggleBits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 112
    .local v0, "i":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    sub-long/2addr v5, v3

    xor-long v2, v0, v5

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

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 115
    :cond_0
    return-object v4
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 49
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 51
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "number":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "number":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 56
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 64
    move-object v1, v0

    .line 65
    .local v1, "unsigned":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "isPositive":Z
    goto :goto_1

    .line 67
    .end local v1    # "unsigned":Ljava/lang/String;
    .end local v2    # "isPositive":Z
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .restart local v1    # "unsigned":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 73
    .restart local v2    # "isPositive":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 75
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->getDecimalValue(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "sum":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 77
    .local v3, "value":Ljava/lang/String;
    goto :goto_2

    .line 80
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->toggleBits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "inverted":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->getDecimalValue(Ljava/lang/String;)I

    move-result v6

    .line 85
    .local v6, "sum":I
    add-int/2addr v6, v3

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v5    # "inverted":Ljava/lang/String;
    .end local v6    # "sum":I
    .restart local v3    # "value":Ljava/lang/String;
    :goto_2
    nop

    .line 93
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v4

    .line 89
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/NumberFormatException;
    .local v4, "value":Ljava/lang/String;
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 119
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 120
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
