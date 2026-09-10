.class public Lorg/apache/poi/ss/formula/functions/Imaginary;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Imaginary.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field public static final GROUP1_REAL_SIGN:I = 0x1

.field public static final GROUP1_REAL_SIGN_REGEX:Ljava/lang/String; = "([+-]?)"

.field public static final GROUP2_IMAGINARY_INTEGER_OR_DOUBLE:I = 0x2

.field public static final GROUP2_REAL_INTEGER_OR_DOUBLE_REGEX:Ljava/lang/String; = "([0-9]+\\.[0-9]+|[0-9]*)"

.field public static final GROUP3_IMAGINARY_SIGN:I = 0x3

.field public static final GROUP3_IMAGINARY_SIGN_REGEX:Ljava/lang/String; = "([+-]?)"

.field public static final GROUP4_IMAGINARY_INTEGER_OR_DOUBLE:I = 0x4

.field public static final GROUP4_IMAGINARY_INTEGER_OR_DOUBLE_REGEX:Ljava/lang/String; = "([0-9]+\\.[0-9]+|[0-9]*)"

.field public static final GROUP5_IMAGINARY_GROUP_REGEX:Ljava/lang/String; = "([ij]?)"

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Imaginary;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Imaginary;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Imaginary;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 52
    const-string v0, "([+-]?)([0-9]+\\.[0-9]+|[0-9]*)([+-]?)([0-9]+\\.[0-9]+|[0-9]*)([ij]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Imaginary;->COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "inumberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 64
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 68
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "iNumber":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Imaginary;->COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 71
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 73
    .local v3, "result":Z
    const-string v4, ""

    .line 74
    .local v4, "imaginary":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 75
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "imaginaryGroup":Ljava/lang/String;
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    const-string v7, "j"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 78
    .local v5, "hasImaginaryPart":Z
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 79
    new-instance v7, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v7

    .line 82
    :cond_2
    if-eqz v5, :cond_5

    .line 83
    const-string v7, ""

    .line 84
    .local v7, "sign":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "imaginarySign":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 86
    move-object v7, v8

    .line 89
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "groupImaginaryNumber":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 91
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 93
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .end local v5    # "hasImaginaryPart":Z
    .end local v6    # "imaginaryGroup":Ljava/lang/String;
    .end local v7    # "sign":Ljava/lang/String;
    .end local v8    # "imaginarySign":Ljava/lang/String;
    .end local v9    # "groupImaginaryNumber":Ljava/lang/String;
    :cond_5
    :goto_1
    nop

    .line 100
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v5, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 97
    :cond_6
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v5

    .line 65
    .end local v0    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "iNumber":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "result":Z
    .end local v4    # "imaginary":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 66
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .local v1, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 104
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 105
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Imaginary;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method
