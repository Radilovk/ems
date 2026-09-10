.class public abstract Lorg/apache/poi/ss/formula/ptg/ControlPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "ControlPtg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultOperandClass()B
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Control tokens are not classified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBaseToken()Z
    .locals 1

    .line 33
    const/4 v0, 0x1

    return v0
.end method
