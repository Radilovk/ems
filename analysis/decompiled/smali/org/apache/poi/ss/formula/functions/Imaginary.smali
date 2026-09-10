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

    .prologue
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

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 16
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "inumberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 64
    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 68
    .local v13, "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v13}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "iNumber":Ljava/lang/String;
    sget-object v14, Lorg/apache/poi/ss/formula/functions/Imaginary;->COMPLEX_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 71
    .local v10, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    .line 73
    .local v11, "result":Z
    const-string v7, ""

    .line 74
    .local v7, "imaginary":Ljava/lang/String;
    const/4 v14, 0x1

    if-ne v11, v14, :cond_6

    .line 75
    const/4 v14, 0x5

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "imaginaryGroup":Ljava/lang/String;
    const-string v14, "i"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "j"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 78
    .local v5, "hasImaginaryPart":Z
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 79
    new-instance v14, Lorg/apache/poi/ss/formula/eval/StringEval;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    .line 100
    .end local v5    # "hasImaginaryPart":Z
    .end local v6    # "iNumber":Ljava/lang/String;
    .end local v7    # "imaginary":Ljava/lang/String;
    .end local v8    # "imaginaryGroup":Ljava/lang/String;
    .end local v10    # "m":Ljava/util/regex/Matcher;
    .end local v11    # "result":Z
    .end local v13    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_1
    return-object v14

    .line 65
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v14

    goto :goto_1

    .line 76
    .end local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v6    # "iNumber":Ljava/lang/String;
    .restart local v7    # "imaginary":Ljava/lang/String;
    .restart local v8    # "imaginaryGroup":Ljava/lang/String;
    .restart local v10    # "m":Ljava/util/regex/Matcher;
    .restart local v11    # "result":Z
    .restart local v13    # "veText1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 82
    .restart local v5    # "hasImaginaryPart":Z
    :cond_2
    if-eqz v5, :cond_4

    .line 83
    const-string v12, ""

    .line 84
    .local v12, "sign":Ljava/lang/String;
    const/4 v14, 0x3

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "imaginarySign":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "+"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 86
    move-object v12, v9

    .line 89
    :cond_3
    const/4 v14, 0x4

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "groupImaginaryNumber":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 91
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 100
    .end local v4    # "groupImaginaryNumber":Ljava/lang/String;
    .end local v9    # "imaginarySign":Ljava/lang/String;
    .end local v12    # "sign":Ljava/lang/String;
    :cond_4
    :goto_2
    new-instance v14, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v14, v7}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .restart local v4    # "groupImaginaryNumber":Ljava/lang/String;
    .restart local v9    # "imaginarySign":Ljava/lang/String;
    .restart local v12    # "sign":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 97
    .end local v4    # "groupImaginaryNumber":Ljava/lang/String;
    .end local v5    # "hasImaginaryPart":Z
    .end local v8    # "imaginaryGroup":Ljava/lang/String;
    .end local v9    # "imaginarySign":Ljava/lang/String;
    .end local v12    # "sign":Ljava/lang/String;
    :cond_6
    sget-object v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    .line 104
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 105
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/functions/Imaginary;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    goto :goto_0
.end method
