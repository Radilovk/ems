.class public Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;
.super Ljava/lang/Object;
.source "LazilyConcatenatedByteArray.java"


# instance fields
.field private final arrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

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

    .line 35
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    return-void
.end method

.method public concatenate([B)V
    .locals 2
    .param p1, "array"    # [B

    .line 46
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[B
    .locals 7

    .line 61
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "totalLength":I
    iget-object v1, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 66
    .local v3, "array":[B
    array-length v4, v3

    add-int/2addr v0, v4

    .line 67
    .end local v3    # "array":[B
    goto :goto_0

    .line 69
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    new-array v1, v0, [B

    .line 70
    .local v1, "concatenated":[B
    const/4 v3, 0x0

    .line 71
    .local v3, "destPos":I
    iget-object v4, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 72
    .local v5, "array":[B
    array-length v6, v5

    invoke-static {v5, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v6, v5

    add-int/2addr v3, v6

    .line 74
    .end local v5    # "array":[B
    goto :goto_1

    .line 76
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 77
    iget-object v4, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v0    # "totalLength":I
    .end local v1    # "concatenated":[B
    .end local v3    # "destPos":I
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/util/LazilyConcatenatedByteArray;->arrays:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
