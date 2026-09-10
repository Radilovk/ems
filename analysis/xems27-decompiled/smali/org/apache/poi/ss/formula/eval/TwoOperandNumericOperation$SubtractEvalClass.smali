.class final Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;
.super Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.source "TwoOperandNumericOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubtractEvalClass"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method protected evaluate(DD)D
    .locals 2
    .param p1, "d0"    # D
    .param p3, "d1"    # D

    .line 83
    sub-double v0, p1, p3

    return-wide v0
.end method
