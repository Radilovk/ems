.class public abstract Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "OperandPtg.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    .locals 2

    .line 33
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isBaseToken()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method
