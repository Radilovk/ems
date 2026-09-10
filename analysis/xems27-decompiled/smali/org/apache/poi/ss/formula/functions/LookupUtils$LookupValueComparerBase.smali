.class abstract Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;
.super Ljava/lang/Object;
.source "LookupUtils.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LookupValueComparerBase"
.end annotation


# instance fields
.field private final _targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 2
    .param p1, "targetValue"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;->_targetClass:Ljava/lang/Class;

    .line 259
    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "targetValue cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
.end method

.method public final compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 261
    if-eqz p1, :cond_1

    .line 264
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;->_targetClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 265
    sget-object v0, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->TYPE_MISMATCH:Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;->compareSameType(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object v0

    return-object v0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "compare to value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getValueAsString()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 271
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparerBase;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
