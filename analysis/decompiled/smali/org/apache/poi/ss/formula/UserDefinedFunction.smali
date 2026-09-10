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

    .prologue
    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/UserDefinedFunction;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    array-length v1, p1

    .line 42
    .local v1, "nIncomingArgs":I
    if-ge v1, v8, :cond_0

    .line 43
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "function name argument missing"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 46
    :cond_0
    aget-object v3, p1, v7

    .line 48
    .local v3, "nameArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    instance-of v6, v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    if-eqz v6, :cond_1

    .line 49
    check-cast v3, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    .end local v3    # "nameArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v5

    .line 55
    .local v5, "targetFunc":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-nez v5, :cond_2

    .line 56
    new-instance v6, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    invoke-direct {v6, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    .end local v0    # "functionName":Ljava/lang/String;
    .end local v5    # "targetFunc":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .restart local v3    # "nameArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First argument should be a NameEval, but got ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 58
    .end local v3    # "nameArg":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v0    # "functionName":Ljava/lang/String;
    .restart local v5    # "targetFunc":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 59
    .local v2, "nOutGoingArgs":I
    new-array v4, v2, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 60
    .local v4, "outGoingArgs":[Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {p1, v8, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-interface {v5, v4, p2}, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    return-object v6
.end method
