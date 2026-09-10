.class public final Lorg/apache/poi/ss/formula/functions/Lookup;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Lookup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 3
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;

    .prologue
    .line 69
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    .line 70
    .local v0, "result":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    if-eqz v0, :cond_0

    .line 71
    return-object v0

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "non-vector lookup or result areas not supported yet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Two arg version of LOOKUP not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 51
    .local v4, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v0

    .line 52
    .local v0, "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {p5}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v1

    .line 54
    .local v1, "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v5

    .line 55
    .local v5, "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v6

    .line 56
    .local v6, "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v7

    invoke-interface {v6}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 58
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Lookup vector and result vector of differing sizes not supported yet"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v1    # "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v4    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v5    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v6    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v7

    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    return-object v7

    .line 60
    .restart local v0    # "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .restart local v1    # "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .restart local v4    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v5    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local v6    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v4, v5, v7}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I

    move-result v3

    .line 62
    .local v3, "index":I
    invoke-interface {v6, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0
.end method
