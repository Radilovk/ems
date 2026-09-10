.class final Lorg/apache/poi/ss/formula/functions/TextFunction$11;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "TextFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 318
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateDoubleArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 319
    .local v1, "s0":D
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    .local v0, "s1":Ljava/lang/String;
    nop

    .line 326
    :try_start_2
    sget-object v3, Lorg/apache/poi/ss/formula/functions/TextFunction;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v2, v4, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "formattedStr":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v4, v3}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    .line 328
    .end local v3    # "formattedStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v4

    .line 320
    .end local v0    # "s1":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .restart local v0    # "s1":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s0":D
    :catch_2
    move-exception v3

    .restart local v0    # "s1":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 321
    .restart local v1    # "s0":D
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    return-object v4
.end method
