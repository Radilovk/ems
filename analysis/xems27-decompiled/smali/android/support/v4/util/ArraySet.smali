.class public final Landroid/support/v4/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/support/v4/util/ArraySet;->INT:[I

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 239
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    .line 240
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 246
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    .line 247
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .line 250
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-boolean p2, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    .line 252
    if-nez p1, :cond_0

    .line 253
    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 254
    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 258
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    .line 269
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    .line 160
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    const-class v0, Landroid/support/v4/util/ArraySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    .line 161
    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 163
    sget-object v4, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 164
    .local v4, "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 165
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 166
    aget-object v5, v4, v3

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 167
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 168
    sget v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 173
    monitor-exit v0

    return-void

    .line 175
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 176
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    .line 177
    monitor-enter v0

    .line 178
    :try_start_1
    sget-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 179
    sget-object v4, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 180
    .restart local v4    # "array":[Ljava/lang/Object;
    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 181
    aget-object v5, v4, v2

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    sput-object v5, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 182
    aget-object v5, v4, v3

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 183
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 184
    sget v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    sub-int/2addr v1, v3

    sput v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 189
    monitor-exit v0

    return-void

    .line 191
    .end local v4    # "array":[Ljava/lang/Object;
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 194
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 195
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 196
    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 8
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 199
    const-class v0, Landroid/support/v4/util/ArraySet;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2

    .line 200
    monitor-enter v0

    .line 201
    :try_start_0
    sget v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_1

    .line 202
    sget-object v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 203
    aput-object p0, p1, v6

    .line 204
    add-int/lit8 v1, p2, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 205
    aput-object v2, p1, v1

    .line 204
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_0
    sput-object p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 208
    sget v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    .line 214
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 215
    :cond_2
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_5

    .line 216
    monitor-enter v0

    .line 217
    :try_start_1
    sget v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    if-ge v1, v5, :cond_4

    .line 218
    sget-object v1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 219
    aput-object p0, p1, v6

    .line 220
    add-int/lit8 v1, p2, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-lt v1, v3, :cond_3

    .line 221
    aput-object v2, p1, v1

    .line 220
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 223
    .end local v1    # "i":I
    :cond_3
    sput-object p1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 224
    sget v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/2addr v1, v6

    sput v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    .line 230
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 232
    :cond_5
    :goto_2
    return-void
.end method

.method private getCollection()Landroid/support/v4/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 663
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Landroid/support/v4/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/support/v4/util/ArraySet$1;-><init>(Landroid/support/v4/util/ArraySet;)V

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    .line 711
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 84
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 87
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 88
    const/4 v1, -0x1

    return v1

    .line 91
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 94
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 95
    return v1

    .line 99
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    return v1

    .line 105
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 106
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 105
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_6

    .line 111
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    .line 110
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 118
    .end local v3    # "i":I
    :cond_6
    not-int v3, v2

    return v3
.end method

.method private indexOfNull()I
    .locals 5

    .line 122
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 125
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 126
    const/4 v1, -0x1

    return v1

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v1

    .line 132
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 133
    return v1

    .line 137
    :cond_1
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 138
    return v1

    .line 143
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .local v2, "end":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 144
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    .line 143
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_4
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v4, v4, v3

    if-nez v4, :cond_6

    .line 149
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    return v3

    .line 148
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 156
    .end local v3    # "i":I
    :cond_6
    not-int v3, v2

    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 361
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "hash":I
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v1

    .local v1, "index":I
    goto :goto_1

    .line 365
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 366
    .restart local v0    # "hash":I
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .line 368
    .restart local v1    # "index":I
    :goto_1
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 369
    return v2

    .line 372
    :cond_2
    not-int v1, v1

    .line 373
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_6

    .line 374
    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_3

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v3

    goto :goto_2

    :cond_3
    if-lt v3, v4, :cond_4

    const/16 v4, 0x8

    :cond_4
    :goto_2
    move v3, v4

    .line 379
    .local v3, "n":I
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 380
    .local v4, "ohashes":[I
    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 381
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v3}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 383
    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v7, v6

    if-lez v7, :cond_5

    .line 385
    array-length v7, v4

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v5

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_5
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 392
    .end local v3    # "n":I
    .end local v4    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_6
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_7

    .line 396
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {v3, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_7
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v0, v2, v1

    .line 401
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 402
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 403
    return v3
.end method

.method public addAll(Landroid/support/v4/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 441
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 442
    .local v0, "N":I
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 443
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v1, :cond_0

    .line 444
    if-lez v0, :cond_1

    .line 445
    iget-object v1, p1, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v1, p1, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    goto :goto_1

    .line 450
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 451
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 749
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 752
    .local v2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 753
    .end local v2    # "value":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 754
    :cond_0
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 413
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 414
    .local v0, "index":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v1, :cond_1

    .line 415
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    nop

    .line 416
    .local v1, "hash":I
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 419
    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le v2, v1, :cond_2

    .line 428
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 429
    return-void

    .line 431
    :cond_2
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 432
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v1, v2, v0

    .line 433
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 434
    return-void

    .line 417
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clear()V
    .locals 3

    .line 284
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 286
    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 287
    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 290
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 317
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 734
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 735
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    const/4 v1, 0x0

    return v1

    .line 740
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 297
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 298
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 299
    .local v0, "ohashes":[I
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 300
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 301
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez v2, :cond_0

    .line 302
    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :cond_0
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 307
    .end local v0    # "ohashes":[I
    .end local v1    # "oarray":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 588
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 589
    return v0

    .line 591
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 592
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 593
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 594
    return v2

    .line 598
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v3, v4, :cond_3

    .line 599
    invoke-virtual {p0, v3}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 600
    .local v4, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_2

    .line 601
    return v2

    .line 598
    .end local v4    # "mine":Ljava/lang/Object;, "TE;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    .end local v3    # "i":I
    :cond_3
    nop

    .line 609
    return v0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2

    .line 604
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 605
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 611
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 619
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 620
    .local v0, "hashes":[I
    const/4 v1, 0x0

    .line 621
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 622
    aget v4, v0, v2

    add-int/2addr v1, v4

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    .end local v2    # "i":I
    .end local v3    # "s":I
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 327
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    .line 328
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    :goto_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 345
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 723
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 464
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 465
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 466
    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 467
    const/4 v1, 0x1

    return v1

    .line 469
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Landroid/support/v4/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 537
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 541
    .local v0, "N":I
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 542
    .local v1, "originalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 543
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 764
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 765
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 766
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 767
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 768
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 478
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 479
    .local v1, "old":Ljava/lang/Object;
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_0

    .line 482
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 483
    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 484
    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 485
    iput v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v5, v0

    const/16 v6, 0x8

    if-le v5, v6, :cond_4

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v2, v0, :cond_4

    .line 491
    if-le v2, v6, :cond_1

    shr-int/lit8 v0, v2, 0x1

    add-int v6, v2, v0

    :cond_1
    move v0, v6

    .line 495
    .local v0, "n":I
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    .line 496
    .local v2, "ohashes":[I
    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 497
    .local v5, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    .line 499
    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 500
    if-lez p1, :cond_2

    .line 502
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v2, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v5, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    :cond_2
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v3, :cond_3

    .line 510
    add-int/lit8 v4, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    sub-int/2addr v3, p1

    invoke-static {v2, v4, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v5, v3, v4, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    .end local v0    # "n":I
    .end local v2    # "ohashes":[I
    .end local v5    # "oarray":[Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 514
    :cond_4
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    .line 515
    if-ge p1, v0, :cond_5

    .line 519
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    :cond_5
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 525
    :goto_0
    return-object v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 779
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 780
    .local v0, "removed":Z
    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 781
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 782
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 783
    const/4 v0, 0x1

    .line 780
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 786
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 553
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 558
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 559
    .local v1, "result":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 565
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v0, v1, :cond_0

    .line 566
    nop

    .line 567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 568
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 570
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v0, v1, :cond_1

    .line 572
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 574
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 636
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "{}"

    return-object v0

    .line 640
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 641
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_3

    .line 643
    if-lez v1, :cond_1

    .line 644
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 647
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 650
    :cond_2
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 337
    .local p0, "this":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
