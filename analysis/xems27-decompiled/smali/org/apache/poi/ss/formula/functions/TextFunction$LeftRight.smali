.class final Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "TextFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeftRight"
.end annotation


# static fields
.field private static final DEFAULT_ARG1:Lorg/apache/poi/ss/formula/eval/ValueEval;


# instance fields
.field private final _isLeft:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 235
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->DEFAULT_ARG1:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "isLeft"    # Z

    .line 237
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    .line 238
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->_isLeft:Z

    .line 239
    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 241
    sget-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->DEFAULT_ARG1:Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 248
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .local v1, "arg":Ljava/lang/String;
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v2
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    .local v2, "index":I
    nop

    .line 254
    if-gez v2, :cond_0

    .line 255
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 259
    :cond_0
    iget-boolean v3, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->_isLeft:Z

    if-eqz v3, :cond_1

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 262
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v3, v0}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 250
    .end local v0    # "result":Ljava/lang/String;
    .end local v2    # "index":I
    :catch_0
    move-exception v2

    .local v0, "index":I
    goto :goto_1

    .end local v0    # "index":I
    .end local v1    # "arg":Ljava/lang/String;
    :catch_1
    move-exception v2

    .restart local v0    # "index":I
    const/4 v1, 0x0

    .line 251
    .restart local v1    # "arg":Ljava/lang/String;
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
