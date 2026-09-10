.class public Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;
.super Ljava/lang/Object;
.source "LazilyConcatenatedByteArray.java"


# instance fields
.field private final arrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    return-void
.end method

.method public concatenate([B)V
    .locals 2
    .param p1, "array"    # [B

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public toArray()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 61
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    const/4 v5, 0x0

    .line 80
    :goto_0
    return-object v5

    .line 63
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, "totalLength":I
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 66
    .local v0, "array":[B
    array-length v5, v0

    add-int/2addr v4, v5

    .line 67
    goto :goto_1

    .line 69
    .end local v0    # "array":[B
    :cond_1
    new-array v1, v4, [B

    .line 70
    .local v1, "concatenated":[B
    const/4 v2, 0x0

    .line 71
    .local v2, "destPos":I
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 72
    .restart local v0    # "array":[B
    array-length v5, v0

    invoke-static {v0, v7, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v5, v0

    add-int/2addr v2, v5

    .line 74
    goto :goto_2

    .line 76
    .end local v0    # "array":[B
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 77
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v1    # "concatenated":[B
    .end local v2    # "destPos":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "totalLength":I
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_0
.end method
