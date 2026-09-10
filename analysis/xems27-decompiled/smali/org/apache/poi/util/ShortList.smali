.class public Lorg/apache/poi/util/ShortList;
.super Ljava/lang/Object;
.source "ShortList.java"


# static fields
.field private static final _default_size:I = 0x80


# instance fields
.field private _array:[S

.field private _limit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v0, p1, [S

    iput-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/ShortList;)V
    .locals 4
    .param p1, "list"    # Lorg/apache/poi/util/ShortList;

    .line 70
    iget-object v0, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;-><init>(I)V

    .line 71
    iget-object v0, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 73
    return-void
.end method

.method private growArray(I)V
    .locals 5
    .param p1, "new_size"    # I

    .line 630
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v0, v0

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 632
    .local v0, "size":I
    :goto_0
    new-array v1, v0, [S

    .line 634
    .local v1, "new_array":[S
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v3, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    iput-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    .line 636
    return-void
.end method


# virtual methods
.method public add(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 99
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-gt p1, v0, :cond_2

    .line 103
    if-ne p1, v0, :cond_0

    .line 105
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ShortList;->add(S)Z

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 113
    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;->growArray(I)V

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aput-short p2, v0, p1

    .line 118
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 120
    :goto_0
    return-void

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public add(S)Z
    .locals 3
    .param p1, "value"    # S

    .line 133
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 135
    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;->growArray(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    aput-short p1, v0, v1

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILorg/apache/poi/util/ShortList;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "c"    # Lorg/apache/poi/util/ShortList;

    .line 194
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-gt p1, v0, :cond_2

    .line 198
    iget v1, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    if-eqz v1, :cond_1

    .line 200
    add-int v2, v0, v1

    iget-object v3, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 202
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;->growArray(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v1, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget-object v0, p2, Lorg/apache/poi/util/ShortList;->_array:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v3, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v1, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 213
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public addAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 5
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .line 158
    iget v0, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    if-eqz v0, :cond_1

    .line 160
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int v2, v1, v0

    iget-object v3, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 162
    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/apache/poi/util/ShortList;->growArray(I)V

    .line 164
    :cond_0
    iget-object v0, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v3, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v4, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v1, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 167
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 224
    return-void
.end method

.method public contains(S)Z
    .locals 3
    .param p1, "o"    # S

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 242
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 244
    const/4 v0, 0x1

    .line 240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public containsAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .line 262
    const/4 v0, 0x1

    .line 264
    .local v0, "rval":Z
    if-eq p0, p1, :cond_1

    .line 266
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 268
    iget-object v2, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/ShortList;->contains(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 266
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 297
    .local v2, "rval":Z
    :goto_0
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 299
    move-object v3, p1

    check-cast v3, Lorg/apache/poi/util/ShortList;

    .line 301
    .local v3, "other":Lorg/apache/poi/util/ShortList;
    iget v4, v3, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v5, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne v4, v5, :cond_2

    .line 305
    const/4 v2, 0x1

    .line 306
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v4, v5, :cond_2

    .line 308
    iget-object v5, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v5, v5, v4

    iget-object v6, v3, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v6, v6, v4

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    move v2, v5

    .line 306
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 312
    .end local v3    # "other":Lorg/apache/poi/util/ShortList;
    .end local v4    # "j":I
    :cond_2
    return v2
.end method

.method public get(I)S
    .locals 1
    .param p1, "index"    # I

    .line 328
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge p1, v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v0, v0, p1

    return v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v1, v2, :cond_0

    .line 361
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v3, v3, v1

    add-int v0, v2, v3

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1    # "j":I
    :cond_0
    return v0
.end method

.method public indexOf(S)I
    .locals 2
    .param p1, "o"    # S

    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "rval":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 387
    goto :goto_1

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne v0, v1, :cond_2

    .line 392
    const/4 v0, -0x1

    .line 394
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 405
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(S)I
    .locals 2
    .param p1, "o"    # S

    .line 423
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    .line 425
    .local v0, "rval":I
    :goto_0
    if-ltz v0, :cond_1

    .line 427
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 429
    goto :goto_1

    .line 425
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 432
    :cond_1
    :goto_1
    return v0
.end method

.method public remove(I)S
    .locals 4
    .param p1, "index"    # I

    .line 451
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge p1, v0, :cond_0

    .line 455
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v1, p1

    .line 457
    .local v2, "rval":S
    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 459
    return v2

    .line 453
    .end local v2    # "rval":S
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public removeAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 506
    iget-object v2, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/ShortList;->removeValue(S)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 504
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public removeValue(S)Z
    .locals 5
    .param p1, "o"    # S

    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 480
    iget-object v3, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v4, v3, v1

    if-ne p1, v4, :cond_0

    .line 482
    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {v3, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 484
    const/4 v0, 0x1

    .line 478
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public retainAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "rval":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v1, v2, :cond_1

    .line 532
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/ShortList;->contains(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    invoke-virtual {p0, v1}, Lorg/apache/poi/util/ShortList;->remove(I)S

    .line 535
    const/4 v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public set(IS)S
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # S

    .line 560
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge p1, v0, :cond_0

    .line 564
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v1, v0, p1

    .line 566
    .local v1, "rval":S
    aput-short p2, v0, p1

    .line 567
    return v1

    .line 562
    .end local v1    # "rval":S
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 580
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    return v0
.end method

.method public toArray()[S
    .locals 4

    .line 594
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    new-array v1, v0, [S

    .line 596
    .local v1, "rval":[S
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    return-object v1
.end method

.method public toArray([S)[S
    .locals 3
    .param p1, "a"    # [S

    .line 616
    array-length v0, p1

    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    move-object v0, p1

    .local v0, "rval":[S
    goto :goto_0

    .line 623
    .end local v0    # "rval":[S
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/ShortList;->toArray()[S

    move-result-object v0

    .line 625
    .restart local v0    # "rval":[S
    :goto_0
    return-object v0
.end method
