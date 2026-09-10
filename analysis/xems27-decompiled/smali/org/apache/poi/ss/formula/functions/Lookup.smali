.class public final Lorg/apache/poi/ss/formula/functions/Lookup;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "Lookup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 3
    .param p0, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;

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

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Two arg version of LOOKUP not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 50
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 51
    .local v0, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v1

    .line 52
    .local v1, "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {p5}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v2

    .line 54
    .local v2, "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    .line 55
    .local v3, "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Lookup;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v4

    .line 56
    .local v4, "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v5

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 60
    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I

    move-result v5

    .line 62
    .local v5, "index":I
    invoke-interface {v4, v5}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    return-object v6

    .line 58
    .end local v5    # "index":I
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Lookup vector and result vector of differing sizes not supported yet"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "srcRowIndex":I
    .end local p2    # "srcColumnIndex":I
    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    throw v5
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "aeLookupVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v2    # "aeResultVector":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v3    # "lookupVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .end local v4    # "resultVector":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .restart local p1    # "srcRowIndex":I
    .restart local p2    # "srcColumnIndex":I
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p4    # "arg1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local p5    # "arg2":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
