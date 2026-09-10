.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$34;
.super Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;
.source "NumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .line 387
    sget-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->PI_EVAL:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object v0
.end method
