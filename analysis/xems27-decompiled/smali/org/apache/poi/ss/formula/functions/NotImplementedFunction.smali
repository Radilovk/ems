.class public final Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;
.super Ljava/lang/Object;
.source "NotImplementedFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# instance fields
.field private final _functionName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;->_functionName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;->_functionName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "operands"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcRow"    # I
    .param p3, "srcCol"    # I

    .line 40
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;->_functionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;->_functionName:Ljava/lang/String;

    return-object v0
.end method
