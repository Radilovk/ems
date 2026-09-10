.class final Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;
.super Ljava/lang/Object;
.source "OperationEvaluatorFactory.java"


# static fields
.field private static final _instancesByPtgClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/ptg/OperationPtg;",
            "Lorg/apache/poi/ss/formula/functions/Function;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    invoke-static {}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->initialiseInstancesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->_instancesByPtgClass:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static evaluate(Lorg/apache/poi/ss/formula/ptg/OperationPtg;[Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 113
    if-eqz p0, :cond_4

    .line 116
    sget-object v0, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->_instancesByPtgClass:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/Function;

    .line 118
    .local v0, "result":Lorg/apache/poi/ss/formula/functions/Function;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    int-to-short v2, v2

    invoke-interface {v0, p1, v1, v2}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 122
    :cond_0
    instance-of v1, p0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v1, :cond_3

    .line 123
    move-object v1, p0

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 124
    .local v1, "fptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getFunctionIndex()S

    move-result v2

    .line 125
    .local v2, "functionIndex":I
    const/16 v3, 0x94

    if-eq v2, v3, :cond_2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    .line 132
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->getBasicFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v5

    int-to-short v5, v5

    invoke-interface {v3, p1, v4, v5}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 129
    :cond_1
    sget-object v3, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-interface {v3, p1, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 127
    :cond_2
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Indirect;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-interface {v3, p1, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    return-object v3

    .line 134
    .end local v1    # "fptg":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v2    # "functionIndex":I
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected operation ptg class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "result":Lorg/apache/poi/ss/formula/functions/Function;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ptg must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static initialiseInstancesMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/ptg/OperationPtg;",
            "Lorg/apache/poi/ss/formula/functions/Function;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;>;"
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->EqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 76
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->GreaterEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 77
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->GreaterThanEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 78
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->LessEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 79
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->LessThanEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 80
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RelationalOperationEval;->NotEqualEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 82
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ConcatEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 83
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->AddEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 84
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->DivideEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 85
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->MultiplyEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 86
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/PercentEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 87
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->PowerEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 88
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->SubtractEval:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 89
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 90
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/UnaryPlusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 91
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/RangeEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 92
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/IntersectionEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluatorFactory;->put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V

    .line 93
    return-object v0
.end method

.method private static put(Ljava/util/Map;Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 4
    .param p1, "ptgKey"    # Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    .param p2, "instance"    # Lorg/apache/poi/ss/formula/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/ptg/OperationPtg;",
            "Lorg/apache/poi/ss/formula/functions/Function;",
            ">;",
            "Lorg/apache/poi/ss/formula/ptg/OperationPtg;",
            "Lorg/apache/poi/ss/formula/functions/Function;",
            ")V"
        }
    .end annotation

    .line 99
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/poi/ss/formula/ptg/OperationPtg;Lorg/apache/poi/ss/formula/functions/Function;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 100
    .local v0, "cc":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to verify instance ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is a singleton."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
