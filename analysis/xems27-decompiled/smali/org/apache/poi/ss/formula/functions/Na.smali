.class public final Lorg/apache/poi/ss/formula/functions/Na;
.super Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;
.source "Na.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I

    .line 31
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0
.end method
