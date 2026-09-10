.class public Lorg/apache/poi/ss/formula/functions/Hex2Dec;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Hex2Dec.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field static final HEXADECIMAL_BASE:I = 0x10

.field static final MAX_NUMBER_OF_PLACES:I = 0xa

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Hex2Dec;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Hex2Dec;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Hex2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 47
    instance-of v0, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p3

    check-cast v0, Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 49
    .local v0, "re":Lorg/apache/poi/ss/formula/eval/RefEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "hex":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "hex":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .restart local v0    # "hex":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const/16 v2, 0x10

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;->convertToDecimal(Ljava/lang/String;II)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 61
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 62
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Hex2Dec;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
