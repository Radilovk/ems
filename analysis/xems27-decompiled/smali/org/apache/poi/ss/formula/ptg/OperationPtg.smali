.class public abstract Lorg/apache/poi/ss/formula/ptg/OperationPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "OperationPtg.java"


# static fields
.field public static final TYPE_BINARY:I = 0x1

.field public static final TYPE_FUNCTION:I = 0x2

.field public static final TYPE_UNARY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 43
    const/16 v0, 0x20

    return v0
.end method

.method public abstract getNumberOfOperands()I
.end method

.method public abstract toFormulaString([Ljava/lang/String;)Ljava/lang/String;
.end method
