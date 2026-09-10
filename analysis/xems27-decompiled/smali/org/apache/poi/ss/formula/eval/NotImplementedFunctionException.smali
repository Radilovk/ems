.class public final Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;
.super Lorg/apache/poi/ss/formula/eval/NotImplementedException;
.source "NotImplementedFunctionException.java"


# static fields
.field private static final serialVersionUID:J = 0x10c41a3434246b11L


# instance fields
.field private functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;->functionName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "cause"    # Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/eval/NotImplementedException;)V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;->functionName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;->functionName:Ljava/lang/String;

    return-object v0
.end method
