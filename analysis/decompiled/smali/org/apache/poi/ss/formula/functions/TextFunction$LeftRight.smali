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
    .locals 4

    .prologue
    .line 235
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->DEFAULT_ARG1:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "isLeft"    # Z

    .prologue
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

    .prologue
    .line 241
    sget-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->DEFAULT_ARG1:Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v5, 0x0

    .line 248
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "arg":Ljava/lang/String;
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 254
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 255
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 264
    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "index":I
    :goto_0
    return-object v4

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 259
    .end local v1    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_0
    iget-boolean v4, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;->_isLeft:Z

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "result":Ljava/lang/String;
    :goto_1
    new-instance v4, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v4, v3}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_1
.end method
