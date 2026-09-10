.class public Lorg/apache/poi/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayMoveWithin([Ljava/lang/Object;III)V
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "moveFrom"    # I
    .param p2, "moveTo"    # I
    .param p3, "numToMove"    # I

    .line 61
    if-gtz p3, :cond_0

    return-void

    .line 62
    :cond_0
    if-ne p1, p2, :cond_1

    return-void

    .line 65
    :cond_1
    if-ltz p1, :cond_6

    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 68
    if-ltz p2, :cond_5

    array-length v0, p0

    if-ge p2, v0, :cond_5

    .line 71
    add-int v0, p1, p3

    array-length v1, p0

    if-gt v0, v1, :cond_4

    .line 74
    add-int v0, p2, p3

    array-length v1, p0

    if-gt v0, v1, :cond_3

    .line 79
    new-array v0, p3, [Ljava/lang/Object;

    .line 80
    .local v0, "toMove":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    if-le p1, p2, :cond_2

    .line 88
    sub-int v2, p1, p2

    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    .local v2, "toShift":[Ljava/lang/Object;
    array-length v3, v2

    invoke-static {p0, p2, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int v3, p2, p3

    .local v3, "shiftTo":I
    goto :goto_0

    .line 94
    .end local v2    # "toShift":[Ljava/lang/Object;
    .end local v3    # "shiftTo":I
    :cond_2
    sub-int v2, p2, p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 95
    .restart local v2    # "toShift":[Ljava/lang/Object;
    add-int v3, p1, p3

    array-length v4, v2

    invoke-static {p0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    move v3, p1

    .line 100
    .restart local v3    # "shiftTo":I
    :goto_0
    array-length v4, v0

    invoke-static {v0, v1, p0, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    array-length v4, v2

    invoke-static {v2, v1, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-void

    .line 75
    .end local v0    # "toMove":[Ljava/lang/Object;
    .end local v2    # "toShift":[Ljava/lang/Object;
    .end local v3    # "shiftTo":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asked to move to a position that doesn\'t have enough space"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Asked to move more entries than the array has"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The moveTo must be a valid array index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The moveFrom must be a valid array index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arraycopy([BI[BII)V
    .locals 4
    .param p0, "src"    # [B
    .param p1, "src_position"    # I
    .param p2, "dst"    # [B
    .param p3, "dst_position"    # I
    .param p4, "length"    # I

    .line 35
    if-ltz p1, :cond_5

    .line 37
    array-length v0, p0

    const-string v1, " but the array length is "

    if-ge p1, v0, :cond_4

    .line 39
    add-int v0, p1, p4

    array-length v2, p0

    const-string v3, " actual end at "

    if-gt v0, v2, :cond_3

    .line 41
    if-ltz p3, :cond_2

    .line 43
    array-length v0, p2

    if-ge p3, v0, :cond_1

    .line 45
    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_0

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dst_position + length would overrun the dst array.  Expected end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p3, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dst_position was greater than dst array size.  Tried to write starting at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dst_position was less than 0.  Actual value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src_position + length would overrun the src array.  Expected end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src_position was greater than src array size.  Tried to write starting at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "src_position was less than 0.  Actual value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
