.class final Lorg/apache/poi/ss/format/CellFormatCondition$3;
.super Lorg/apache/poi/ss/format/CellFormatCondition;
.source "CellFormatCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/format/CellFormatCondition;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:D


# direct methods
.method constructor <init>(D)V
    .locals 1

    .prologue
    .line 83
    iput-wide p1, p0, Lorg/apache/poi/ss/format/CellFormatCondition$3;->val$c:D

    invoke-direct {p0}, Lorg/apache/poi/ss/format/CellFormatCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public pass(D)Z
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellFormatCondition$3;->val$c:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
