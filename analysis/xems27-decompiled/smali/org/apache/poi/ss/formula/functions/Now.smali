.class public final Lorg/apache/poi/ss/formula/functions/Now;
.super Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;
.source "Now.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed0ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 35
    .local v0, "now":Ljava/util/Date;
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v1
.end method
