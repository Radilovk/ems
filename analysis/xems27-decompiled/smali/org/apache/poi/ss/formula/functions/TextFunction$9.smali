.class final Lorg/apache/poi/ss/formula/functions/TextFunction$9;
.super Ljava/lang/Object;
.source "TextFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


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

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRowIndex"    # I
    .param p3, "srcColumnIndex"    # I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "iSize":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    :try_start_0
    aget-object v3, p1, v1

    invoke-static {v3, p2, p3}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v3

    .line 279
    .local v3, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    return-object v4

    .line 282
    .end local v1    # "i":I
    .end local v2    # "iSize":I
    .end local v3    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
