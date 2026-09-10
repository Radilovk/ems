.class final Lorg/apache/poi/ss/formula/functions/BooleanFunction$4;
.super Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;
.source "BooleanFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/BooleanFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .line 141
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BoolEval;->TRUE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    return-object v0
.end method
