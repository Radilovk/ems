.class final Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$4;
.super Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.source "TwoOperandNumericOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate(DD)D
    .locals 2
    .param p1, "d0"    # D
    .param p3, "d1"    # D

    .line 75
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method
