.class public final Lorg/apache/poi/ss/formula/functions/Hlookup;
.super Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;
.source "Hlookup.java"


# static fields
.field private static final DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->TRUE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Hlookup;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var3or4ArgFunction;-><init>()V

    return-void
.end method

.method private createResultColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1
    .param p1, "tableArray"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p2, "rowIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidRef()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 47
    sget-object v6, Lorg/apache/poi/ss/formula/functions/Hlookup;->DEFAULT_ARG3:Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Hlookup;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p5, "arg2"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p6, "arg3"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 55
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 56
    .local v0, "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveTableArrayArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/TwoDEval;

    move-result-object v1

    .line 57
    .local v1, "tableArray":Lorg/apache/poi/ss/formula/TwoDEval;
    invoke-static {p6, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveRangeLookupArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Z

    move-result v2

    .line 58
    .local v2, "isRangeLookup":Z
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createRowVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->lookupIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Z)I

    move-result v3

    .line 59
    .local v3, "colIndex":I
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->resolveRowOrColIndexArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v4

    .line 60
    .local v4, "rowIndex":I
    invoke-direct {p0, v1, v4}, Lorg/apache/poi/ss/formula/functions/Hlookup;->createResultColumnVector(Lorg/apache/poi/ss/formula/TwoDEval;I)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object v5

    .line 61
    .local v5, "resultCol":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    invoke-interface {v5, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 62
    .end local v0    # "lookupValue":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "tableArray":Lorg/apache/poi/ss/formula/TwoDEval;
    .end local v2    # "isRangeLookup":Z
    .end local v3    # "colIndex":I
    .end local v4    # "rowIndex":I
    .end local v5    # "resultCol":Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method
