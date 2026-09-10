.class public Lorg/apache/poi/util/IntList;
.super Ljava/lang/Object;
.source "IntList.java"


# static fields
.field private static final _default_size:I = 0x80


# instance fields
.field private _array:[I

.field private _limit:I

.field private fillval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/IntList;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "fillvalue"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/IntList;->fillval:I

    .line 89
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iput p2, p0, Lorg/apache/poi/util/IntList;->fillval:I

    .line 92
    invoke-direct {p0, p2, v1, v0}, Lorg/apache/poi/util/IntList;->fillArray(I[II)V

    .line 94
    :cond_0
    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/IntList;)V
    .locals 4
    .param p1, "list"    # Lorg/apache/poi/util/IntList;

    .line 76
    iget-object v0, p1, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;-><init>(I)V

    .line 77
    iget-object v0, p1, Lorg/apache/poi/util/IntList;->_array:[I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p1, Lorg/apache/poi/util/IntList;->_limit:I

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 79
    return-void
.end method

.method private fillArray(I[II)V
    .locals 2
    .param p1, "val"    # I
    .param p2, "array"    # [I
    .param p3, "index"    # I

    .line 98
    move v0, p3

    .local v0, "k":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 99
    aput p1, p2, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "k":I
    :cond_0
    return-void
.end method

.method private growArray(I)V
    .locals 5
    .param p1, "new_size"    # I

    .line 650
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 652
    .local v0, "size":I
    :goto_0
    new-array v1, v0, [I

    .line 654
    .local v1, "new_array":[I
    iget v2, p0, Lorg/apache/poi/util/IntList;->fillval:I

    if-eqz v2, :cond_1

    .line 655
    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v3, v3

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/poi/util/IntList;->fillArray(I[II)V

    .line 658
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v3, p0, Lorg/apache/poi/util/IntList;->_limit:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iput-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    .line 660
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 115
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-gt p1, v0, :cond_2

    .line 119
    if-ne p1, v0, :cond_0

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntList;->add(I)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 129
    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;->growArray(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aput p2, v0, p1

    .line 134
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 136
    :goto_0
    return-void

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public add(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 149
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 151
    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;->growArray(I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    aput p1, v0, v1

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILorg/apache/poi/util/IntList;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "c"    # Lorg/apache/poi/util/IntList;

    .line 210
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-gt p1, v0, :cond_2

    .line 214
    iget v1, p2, Lorg/apache/poi/util/IntList;->_limit:I

    if-eqz v1, :cond_1

    .line 216
    add-int v2, v0, v1

    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 218
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;->growArray(I)V

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v1, p2, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v0, p2, Lorg/apache/poi/util/IntList;->_array:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v3, p2, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v1, p2, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 229
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public addAll(Lorg/apache/poi/util/IntList;)Z
    .locals 5
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .line 174
    iget v0, p1, Lorg/apache/poi/util/IntList;->_limit:I

    if-eqz v0, :cond_1

    .line 176
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int v2, v1, v0

    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 178
    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/apache/poi/util/IntList;->growArray(I)V

    .line 180
    :cond_0
    iget-object v0, p1, Lorg/apache/poi/util/IntList;->_array:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v3, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v4, p1, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v1, p1, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 183
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 240
    return-void
.end method

.method public contains(I)Z
    .locals 3
    .param p1, "o"    # I

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 258
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 260
    const/4 v0, 0x1

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public containsAll(Lorg/apache/poi/util/IntList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .line 278
    const/4 v0, 0x1

    .line 280
    .local v0, "rval":Z
    if-eq p0, p1, :cond_1

    .line 282
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p1, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 284
    iget-object v2, p1, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/IntList;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 313
    .local v2, "rval":Z
    :goto_0
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 315
    move-object v3, p1

    check-cast v3, Lorg/apache/poi/util/IntList;

    .line 317
    .local v3, "other":Lorg/apache/poi/util/IntList;
    iget v4, v3, Lorg/apache/poi/util/IntList;->_limit:I

    iget v5, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne v4, v5, :cond_2

    .line 321
    const/4 v2, 0x1

    .line 322
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v4, v5, :cond_2

    .line 324
    iget-object v5, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v5, v5, v4

    iget-object v6, v3, Lorg/apache/poi/util/IntList;->_array:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    move v2, v5

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 328
    .end local v3    # "other":Lorg/apache/poi/util/IntList;
    .end local v4    # "j":I
    :cond_2
    return v2
.end method

.method public get(I)I
    .locals 3
    .param p1, "index"    # I

    .line 344
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v0, v0, p1

    return v0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not accessible in a list of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v1, v2, :cond_0

    .line 379
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "j":I
    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "o"    # I

    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "rval":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 405
    goto :goto_1

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne v0, v1, :cond_2

    .line 410
    const/4 v0, -0x1

    .line 412
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 423
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 2
    .param p1, "o"    # I

    .line 441
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    .line 443
    .local v0, "rval":I
    :goto_0
    if-ltz v0, :cond_1

    .line 445
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 447
    goto :goto_1

    .line 443
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 450
    :cond_1
    :goto_1
    return v0
.end method

.method public remove(I)I
    .locals 4
    .param p1, "index"    # I

    .line 469
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge p1, v0, :cond_0

    .line 473
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v1, p1

    .line 475
    .local v2, "rval":I
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 477
    return v2

    .line 471
    .end local v2    # "rval":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeAll(Lorg/apache/poi/util/IntList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p1, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 526
    iget-object v2, p1, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/IntList;->removeValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const/4 v0, 0x1

    .line 524
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public removeValue(I)Z
    .locals 5
    .param p1, "o"    # I

    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-nez v0, :cond_2

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v1, v2, :cond_2

    .line 498
    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v4, v3, v1

    if-ne p1, v4, :cond_1

    .line 500
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_0

    .line 501
    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {v3, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_0
    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 504
    const/4 v0, 0x1

    .line 496
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "j":I
    :cond_2
    return v0
.end method

.method public retainAll(Lorg/apache/poi/util/IntList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .line 548
    const/4 v0, 0x0

    .line 550
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 552
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/IntList;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    invoke-virtual {p0, v1}, Lorg/apache/poi/util/IntList;->remove(I)I

    .line 555
    const/4 v0, 0x1

    goto :goto_0

    .line 559
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public set(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # I

    .line 580
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge p1, v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v1, v0, p1

    .line 586
    .local v1, "rval":I
    aput p2, v0, p1

    .line 587
    return v1

    .line 582
    .end local v1    # "rval":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 600
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    return v0
.end method

.method public toArray()[I
    .locals 4

    .line 614
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    new-array v1, v0, [I

    .line 616
    .local v1, "rval":[I
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    return-object v1
.end method

.method public toArray([I)[I
    .locals 3
    .param p1, "a"    # [I

    .line 636
    array-length v0, p1

    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    move-object v0, p1

    .local v0, "rval":[I
    goto :goto_0

    .line 643
    .end local v0    # "rval":[I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/IntList;->toArray()[I

    move-result-object v0

    .line 645
    .restart local v0    # "rval":[I
    :goto_0
    return-object v0
.end method
