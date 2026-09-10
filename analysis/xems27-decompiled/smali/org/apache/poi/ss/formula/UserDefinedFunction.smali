.class final Lorg/apache/poi/ss/formula/UserDefinedFunction;
.super Ljava/lang/Object;
.source "UserDefinedFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/UserDefinedFunction;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 41
    array-length v0, p1

    .line 42
    .local v0, "nIncomingArgs":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 46
    const/4 v2, 0x0

    aget-object v3, p1, v2

    .line 48
    .local v3, "nameArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    if-eqz v4, :cond_1

    .line 49
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "functionName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v5

    .line 55
    .local v5, "targetFunc":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v5, :cond_0

    .line 58
    add-int/lit8 v6, v0, -0x1

    .line 59
    .local v6, "nOutGoingArgs":I
    new-array v7, v6, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 60
    .local v7, "outGoingArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p1, v1, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-interface {v5, v7, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 56
    .end local v6    # "nOutGoingArgs":I
    .end local v7    # "outGoingArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    invoke-direct {v1, v4}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v4    # "functionName":Ljava/lang/String;
    .end local v5    # "targetFunc":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First argument should be a NameEval, but got ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v3    # "nameArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "function name argument missing"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
