.class public final Lorg/apache/poi/ss/formula/eval/ExternalNameEval;
.super Ljava/lang/Object;
.source "ExternalNameEval.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# instance fields
.field private final _name:Lorg/apache/poi/ss/formula/EvaluationName;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/EvaluationName;)V
    .locals 0
    .param p1, "name"    # Lorg/apache/poi/ss/formula/EvaluationName;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 38
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;->_name:Lorg/apache/poi/ss/formula/EvaluationName;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
