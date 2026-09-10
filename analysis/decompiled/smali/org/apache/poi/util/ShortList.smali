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

    .prologue
    .line 59
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
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

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v0, v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;-><init>(I)V

    .line 71
    iget-object v0, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v2, v2

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

    .prologue
    const/4 v4, 0x0

    .line 630
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v2, v2

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 632
    .local v1, "size":I
    :goto_0
    new-array v0, v1, [S

    .line 634
    .local v0, "new_array":[S
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v3, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    iput-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    .line 636
    return-void

    .end local v0    # "new_array":[S
    .end local v1    # "size":I
    :cond_0
    move v1, p1

    .line 630
    goto :goto_0
.end method


# virtual methods
.method public add(IS)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # S

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-le p1, v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne p1, v0, :cond_1

    .line 105
    invoke-virtual {p0, p2}, Lorg/apache/poi/util/ShortList;->add(S)Z

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_1
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 113
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;->growArray(I)V

    .line 115
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aput-short p2, v0, p1

    .line 118
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    goto :goto_0
.end method

.method public add(S)Z
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 133
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 135
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

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

    .prologue
    .line 194
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-le p1, v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 198
    :cond_0
    iget v0, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    if-eqz v0, :cond_2

    .line 200
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v1, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 202
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v1, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;->growArray(I)V

    .line 206
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v2, p2, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 5
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .prologue
    .line 158
    iget v0, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    if-eqz v0, :cond_1

    .line 160
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v1, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 162
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v1, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/ShortList;->growArray(I)V

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

    .prologue
    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 224
    return-void
.end method

.method public contains(S)Z
    .locals 3
    .param p1, "o"    # S

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 240
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-nez v1, :cond_1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 242
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return v1
.end method

.method public containsAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .prologue
    .line 262
    const/4 v1, 0x1

    .line 264
    .local v1, "rval":Z
    if-eq p0, p1, :cond_1

    .line 266
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 268
    iget-object v2, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/ShortList;->contains(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
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

    .line 295
    if-ne p0, p1, :cond_0

    move v2, v3

    .line 297
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

    .line 299
    check-cast v1, Lorg/apache/poi/util/ShortList;

    .line 301
    .local v1, "other":Lorg/apache/poi/util/ShortList;
    iget v5, v1, Lorg/apache/poi/util/ShortList;->_limit:I

    iget v6, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne v5, v6, :cond_2

    .line 305
    const/4 v2, 0x1

    .line 306
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-eqz v2, :cond_2

    iget v5, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v5, :cond_2

    .line 308
    iget-object v5, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v5, v5, v0

    iget-object v6, v1, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v6, v6, v0

    if-ne v5, v6, :cond_1

    move v2, v3

    .line 306
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "j":I
    .end local v1    # "other":Lorg/apache/poi/util/ShortList;
    .end local v2    # "rval":Z
    :cond_0
    move v2, v4

    .line 295
    goto :goto_0

    .restart local v0    # "j":I
    .restart local v1    # "other":Lorg/apache/poi/util/ShortList;
    .restart local v2    # "rval":Z
    :cond_1
    move v2, v4

    .line 308
    goto :goto_2

    .line 312
    .end local v0    # "j":I
    .end local v1    # "other":Lorg/apache/poi/util/ShortList;
    :cond_2
    return v2
.end method

.method public get(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 328
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-lt p1, v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
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
    :cond_0
    return v0
.end method

.method public indexOf(S)I
    .locals 2
    .param p1, "o"    # S

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "rval":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 390
    :cond_0
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne v0, v1, :cond_1

    .line 392
    const/4 v0, -0x1

    .line 394
    :cond_1
    return v0

    .line 383
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastIndexOf(S)I
    .locals 2
    .param p1, "o"    # S

    .prologue
    .line 423
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v0, v1, -0x1

    .line 425
    .local v0, "rval":I
    :goto_0
    if-ltz v0, :cond_0

    .line 427
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 432
    :cond_0
    return v0

    .line 425
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(I)S
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 451
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-lt p1, v1, :cond_0

    .line 453
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 455
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v0, v1, p1

    .line 457
    .local v0, "rval":S
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v4, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 459
    return v0
.end method

.method public removeAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 504
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v2, p1, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 506
    iget-object v2, p1, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/poi/util/ShortList;->removeValue(S)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    const/4 v1, 0x1

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    return v1
.end method

.method public removeValue(S)Z
    .locals 6
    .param p1, "o"    # S

    .prologue
    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-nez v1, :cond_1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 480
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 482
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v5, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    .line 484
    const/4 v1, 0x1

    .line 478
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_1
    return v1
.end method

.method public retainAll(Lorg/apache/poi/util/ShortList;)Z
    .locals 3
    .param p1, "c"    # Lorg/apache/poi/util/ShortList;

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 530
    .local v1, "rval":Z
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ge v0, v2, :cond_1

    .line 532
    iget-object v2, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/ShortList;->contains(S)Z

    move-result v2

    if-nez v2, :cond_0

    .line 534
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/ShortList;->remove(I)S

    .line 535
    const/4 v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_1
    return v1
.end method

.method public set(IS)S
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # S

    .prologue
    .line 560
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-lt p1, v1, :cond_0

    .line 562
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 564
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aget-short v0, v1, p1

    .line 566
    .local v0, "rval":S
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    aput-short p2, v1, p1

    .line 567
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    return v0
.end method

.method public toArray()[S
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    iget v1, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    new-array v0, v1, [S

    .line 596
    .local v0, "rval":[S
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 597
    return-object v0
.end method

.method public toArray([S)[S
    .locals 4
    .param p1, "a"    # [S

    .prologue
    const/4 v3, 0x0

    .line 616
    array-length v1, p1

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    if-ne v1, v2, :cond_0

    .line 618
    iget-object v1, p0, Lorg/apache/poi/util/ShortList;->_array:[S

    iget v2, p0, Lorg/apache/poi/util/ShortList;->_limit:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    move-object v0, p1

    .line 625
    .local v0, "rval":[S
    :goto_0
    return-object v0

    .line 623
    .end local v0    # "rval":[S
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/ShortList;->toArray()[S

    move-result-object v0

    .restart local v0    # "rval":[S
    goto :goto_0
.end method
