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

    .prologue
    .line 59
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/IntList;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "fillvalue"    # I

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lorg/apache/poi/util/IntList;->fillval:I

    .line 89
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    .line 90
    iget v0, p0, Lorg/apache/poi/util/IntList;->fillval:I

    if-eqz v0, :cond_0

    .line 91
    iput p2, p0, Lorg/apache/poi/util/IntList;->fillval:I

    .line 92
    iget v0, p0, Lorg/apache/poi/util/IntList;->fillval:I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/util/IntList;->fillArray(I[II)V

    .line 94
    :cond_0
    iput v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/IntList;)V
    .locals 4
    .param p1, "list"    # Lorg/apache/poi/util/IntList;

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p1, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;-><init>(I)V

    .line 77
    iget-object v0, p1, Lorg/apache/poi/util/IntList;->_array:[I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v2, v2

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

    .prologue
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
    :cond_0
    return-void
.end method

.method private growArray(I)V
    .locals 5
    .param p1, "new_size"    # I

    .prologue
    const/4 v4, 0x0

    .line 650
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v2, v2

    if-ne p1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 652
    .local v1, "size":I
    :goto_0
    new-array v0, v1, [I

    .line 654
    .local v0, "new_array":[I
    iget v2, p0, Lorg/apache/poi/util/IntList;->fillval:I

    if-eqz v2, :cond_0

    .line 655
    iget v2, p0, Lorg/apache/poi/util/IntList;->fillval:I

    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v3, v3

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/poi/util/IntList;->fillArray(I[II)V

    .line 658
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v3, p0, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 659
    iput-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    .line 660
    return-void

    .end local v0    # "new_array":[I
    .end local v1    # "size":I
    :cond_1
    move v1, p1

    .line 650
    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-le p1, v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne p1, v0, :cond_1

    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 129
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;->growArray(I)V

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/poi/util/IntList;->_limit:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aput p2, v0, p1

    .line 134
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    goto :goto_0
.end method

.method public add(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 151
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

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

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-le p1, v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 214
    :cond_0
    iget v0, p2, Lorg/apache/poi/util/IntList;->_limit:I

    if-eqz v0, :cond_2

    .line 216
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v1, p2, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 218
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v1, p2, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;->growArray(I)V

    .line 222
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v2, p2, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/apache/poi/util/IntList;->_limit:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Lorg/apache/poi/util/IntList;)Z
    .locals 5
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .prologue
    .line 174
    iget v0, p1, Lorg/apache/poi/util/IntList;->_limit:I

    if-eqz v0, :cond_1

    .line 176
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v1, p1, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 178
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    iget v1, p1, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/IntList;->growArray(I)V

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

    .prologue
    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 240
    return-void
.end method

.method public contains(I)Z
    .locals 3
    .param p1, "o"    # I

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-nez v1, :cond_1

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 260
    const/4 v1, 0x1

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return v1
.end method

.method public containsAll(Lorg/apache/poi/util/IntList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .prologue
    .line 278
    const/4 v1, 0x1

    .line 280
    .local v1, "rval":Z
    if-eq p0, p1, :cond_1

    .line 282
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p1, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 284
    iget-object v2, p1, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/IntList;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    const/4 v1, 0x0

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "j":I
    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 311
    if-ne p0, p1, :cond_0

    move v2, v3

    .line 313
    .local v2, "rval":Z
    :goto_0
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_2

    move-object v1, p1

    .line 315
    check-cast v1, Lorg/apache/poi/util/IntList;

    .line 317
    .local v1, "other":Lorg/apache/poi/util/IntList;
    iget v5, v1, Lorg/apache/poi/util/IntList;->_limit:I

    iget v6, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne v5, v6, :cond_2

    .line 321
    const/4 v2, 0x1

    .line 322
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v5, :cond_2

    .line 324
    iget-object v5, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v5, v5, v0

    iget-object v6, v1, Lorg/apache/poi/util/IntList;->_array:[I

    aget v6, v6, v0

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 322
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "j":I
    .end local v1    # "other":Lorg/apache/poi/util/IntList;
    .end local v2    # "rval":Z
    :cond_0
    move v2, v4

    .line 311
    goto :goto_0

    .restart local v0    # "j":I
    .restart local v1    # "other":Lorg/apache/poi/util/IntList;
    .restart local v2    # "rval":Z
    :cond_1
    move v2, v4

    .line 324
    goto :goto_2

    .line 328
    .end local v0    # "j":I
    .end local v1    # "other":Lorg/apache/poi/util/IntList;
    :cond_2
    return v2
.end method

.method public get(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 344
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-lt p1, v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not accessible in a list of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
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
    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "o"    # I

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "rval":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 408
    :cond_0
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne v0, v1, :cond_1

    .line 410
    const/4 v0, -0x1

    .line 412
    :cond_1
    return v0

    .line 401
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(I)I
    .locals 2
    .param p1, "o"    # I

    .prologue
    .line 441
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v0, v1, -0x1

    .line 443
    .local v0, "rval":I
    :goto_0
    if-ltz v0, :cond_0

    .line 445
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 450
    :cond_0
    return v0

    .line 443
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 469
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-lt p1, v1, :cond_0

    .line 471
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 473
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v0, v1, p1

    .line 475
    .local v0, "rval":I
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v4, p0, Lorg/apache/poi/util/IntList;->_limit:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 477
    return v0
.end method

.method public removeAll(Lorg/apache/poi/util/IntList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v2, p1, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 526
    iget-object v2, p1, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/IntList;->removeValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const/4 v1, 0x1

    .line 524
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    return v1
.end method

.method public removeValue(I)Z
    .locals 6
    .param p1, "o"    # I

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 496
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-nez v1, :cond_2

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v2, :cond_2

    .line 498
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_1

    .line 500
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v2, v3, :cond_0

    .line 501
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v5, p0, Lorg/apache/poi/util/IntList;->_limit:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_0
    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    .line 504
    const/4 v1, 0x1

    .line 496
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_2
    return v1
.end method

.method public retainAll(Lorg/apache/poi/util/IntList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/IntList;

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 552
    iget-object v2, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/IntList;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/IntList;->remove(I)I

    .line 555
    const/4 v1, 0x1

    goto :goto_0

    .line 559
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    return v1
.end method

.method public set(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # I

    .prologue
    .line 580
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-lt p1, v1, :cond_0

    .line 582
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 584
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aget v0, v1, p1

    .line 586
    .local v0, "rval":I
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    aput p2, v1, p1

    .line 587
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lorg/apache/poi/util/IntList;->_limit:I

    return v0
.end method

.method public toArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    iget v1, p0, Lorg/apache/poi/util/IntList;->_limit:I

    new-array v0, v1, [I

    .line 616
    .local v0, "rval":[I
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    return-object v0
.end method

.method public toArray([I)[I
    .locals 4
    .param p1, "a"    # [I

    .prologue
    const/4 v3, 0x0

    .line 636
    array-length v1, p1

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    if-ne v1, v2, :cond_0

    .line 638
    iget-object v1, p0, Lorg/apache/poi/util/IntList;->_array:[I

    iget v2, p0, Lorg/apache/poi/util/IntList;->_limit:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    move-object v0, p1

    .line 645
    .local v0, "rval":[I
    :goto_0
    return-object v0

    .line 643
    .end local v0    # "rval":[I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/IntList;->toArray()[I

    move-result-object v0

    .restart local v0    # "rval":[I
    goto :goto_0
.end method
