.class final Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;
.super Ljava/lang/Object;
.source "AnalysisToolPak.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotImplemented"
.end annotation


# instance fields
.field private final _functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;->_functionName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 58
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;->_functionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
