.class public Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.super Ljava/util/AbstractMap;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final KEY:I = 0x1000193

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final M_MASK:I = -0x789a012d

.field static final SEED:I = -0x7ee3623b

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field volatile transient modCount:I

.field final random:I

.field transient size:I

.field transient table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I

.field volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 130
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 83
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x1869f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    .line 797
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 131
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    .line 132
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 133
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 123
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    .line 124
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 92
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 83
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x1869f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    .line 797
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 93
    if-ltz p1, :cond_3

    .line 96
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_0

    .line 97
    const/high16 p1, 0x40000000    # 2.0f

    .line 98
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const/4 v0, 0x1

    .line 104
    .local v0, "capacity":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 105
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    iput p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    .line 108
    int-to-float v1, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 109
    new-array v1, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 111
    return-void

    .line 99
    .end local v0    # "capacity":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method private containsNullValue()Z
    .locals 4

    .line 588
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 589
    .local v0, "tab":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 590
    aget-object v2, v0, v1

    .local v2, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :goto_1
    if-eqz v2, :cond_1

    .line 591
    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 592
    const/4 v3, 0x1

    return v3

    .line 590
    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 589
    .end local v2    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private entrySet0()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 892
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 893
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method private getForNullKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .local v0, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 249
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 250
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v1

    .line 248
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_0

    .line 252
    .end local v0    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static hash(I)I
    .locals 2
    .param p0, "h"    # I

    .line 177
    mul-int p0, p0, p0

    .line 178
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 179
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private hashString(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 86
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    const v1, -0x7ee3623b

    mul-int v0, v0, v1

    .line 87
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    const v2, 0x1000193

    mul-int v2, v2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int v0, v2, v3

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    shr-int/lit8 v1, v0, 0x1

    xor-int/2addr v1, v0

    const v2, -0x789a012d

    and-int/2addr v1, v2

    return v1
.end method

.method static indexFor(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    .line 186
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private putAllForCreate(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 369
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    nop

    .line 370
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 372
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 374
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_0
    return-void
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 346
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    :goto_0
    nop

    .line 349
    .local v0, "hash":I
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 356
    .local v1, "i":I
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    .local v2, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_4

    .line 358
    iget v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_3

    .line 359
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    :cond_2
    iput-object p2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 361
    return-void

    .line 356
    .end local v4    # "k":Ljava/lang/Object;
    :cond_3
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 365
    .end local v2    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_4
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 366
    return-void
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .local v0, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 328
    iget-object v2, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 329
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 330
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 331
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 332
    return-object v1

    .line 327
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_0

    .line 335
    .end local v0    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 337
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 964
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 967
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 968
    .local v0, "numBuckets":I
    new-array v1, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 970
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 973
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 976
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 977
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 978
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 979
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v3, v4}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 976
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 981
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 937
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 940
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 943
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 946
    if-eqz v0, :cond_1

    .line 947
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 949
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 950
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 951
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_1

    .line 953
    :cond_1
    return-void
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 696
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v0, p4

    .line 697
    .local v1, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v0, p4

    .line 698
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-lt v0, v2, :cond_0

    .line 699
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    .line 700
    :cond_0
    return-void
.end method

.method capacity()I
    .locals 1

    .line 985
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 3

    .line 556
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 557
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 558
    .local v0, "tab":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 559
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 561
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 603
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 605
    .local v0, "result":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 608
    goto :goto_0

    .line 606
    :catch_0
    move-exception v1

    .line 609
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 610
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 611
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 612
    iput v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 613
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 614
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    .line 616
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 265
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 573
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsNullValue()Z

    move-result v0

    return v0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 577
    .local v0, "tab":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 578
    aget-object v2, v0, v1

    .local v2, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :goto_1
    if-eqz v2, :cond_2

    .line 579
    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    const/4 v3, 0x1

    return v3

    .line 578
    :cond_1
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 577
    .end local v2    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "hash"    # I
    .param p4, "bucketIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 711
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v0, p4

    .line 712
    .local v1, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v0, p4

    .line 713
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 714
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 888
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getForNullKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, "hash":I
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 230
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    .local v1, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_4

    .line 235
    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v2, v0, :cond_3

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "k":Ljava/lang/Object;
    if-eq v2, p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    :cond_2
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v2

    .line 233
    .end local v3    # "k":Ljava/lang/Object;
    :cond_3
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 238
    .end local v1    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method final getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    :goto_0
    nop

    .line 276
    .local v0, "hash":I
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    .local v1, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_4

    .line 278
    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v2, v0, :cond_3

    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "k":Ljava/lang/Object;
    if-eq v2, p1, :cond_2

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    :cond_2
    return-object v1

    .line 276
    .end local v3    # "k":Ljava/lang/Object;
    :cond_3
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 282
    .end local v1    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method init()V
    .locals 0

    .line 164
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 204
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 812
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 813
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method loadFactor()F
    .locals 1

    .line 989
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    return v0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 792
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 784
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 788
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 301
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 303
    .local v0, "hash":I
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 304
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 308
    .local v1, "i":I
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    .local v2, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v2, :cond_4

    .line 310
    iget v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;
    if-eq v3, p1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    :cond_2
    iget-object v3, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 312
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 313
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 314
    return-object v3

    .line 308
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v4    # "k":Ljava/lang/Object;
    :cond_3
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 318
    .end local v2    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 319
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 320
    const/4 v2, 0x0

    return-object v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 437
    .local v0, "numKeysToBeAdded":I
    if-nez v0, :cond_0

    .line 438
    return-void

    .line 449
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-le v0, v1, :cond_3

    .line 450
    int-to-float v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 451
    .local v1, "targetCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-le v1, v2, :cond_1

    .line 452
    const/high16 v1, 0x40000000    # 2.0f

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    .line 454
    .local v2, "newCapacity":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 455
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 457
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    .line 460
    .end local v1    # "targetCapacity":I
    .end local v2    # "newCapacity":I
    :cond_3
    nop

    .line 461
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 463
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_1

    .line 465
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    :cond_4
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    .line 479
    .local v0, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method final removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 489
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    :goto_0
    nop

    .line 491
    .local v0, "hash":I
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v1

    .line 492
    .local v1, "i":I
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v2, v2, v1

    .line 493
    .local v2, "prev":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    move-object v3, v2

    .line 495
    .local v3, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_5

    .line 496
    iget-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 498
    .local v4, "next":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    iget v5, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v5, v0, :cond_4

    iget-object v5, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    move-object v6, v5

    .local v6, "k":Ljava/lang/Object;
    if-eq v5, p1, :cond_2

    if-eqz p1, :cond_4

    .line 499
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 500
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 501
    iget v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 502
    if-ne v2, v3, :cond_3

    .line 503
    iget-object v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v4, v5, v1

    goto :goto_2

    .line 505
    :cond_3
    iput-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 506
    :goto_2
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 507
    return-object v3

    .line 509
    .end local v6    # "k":Ljava/lang/Object;
    :cond_4
    move-object v2, v3

    .line 510
    move-object v3, v4

    .line 511
    .end local v4    # "next":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    goto :goto_1

    .line 513
    :cond_5
    return-object v3
.end method

.method final removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 524
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 525
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 526
    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v2

    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v2

    :goto_0
    nop

    .line 528
    .local v2, "hash":I
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v3, v3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v3

    .line 529
    .local v3, "i":I
    iget-object v4, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v4, v4, v3

    .line 530
    .local v4, "prev":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    move-object v5, v4

    .line 532
    .local v5, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :goto_1
    if-eqz v5, :cond_5

    .line 533
    iget-object v6, v5, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 534
    .local v6, "next":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    iget v7, v5, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-ne v7, v2, :cond_4

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 535
    iget v7, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 536
    iget v7, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 537
    if-ne v4, v5, :cond_3

    .line 538
    iget-object v7, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v6, v7, v3

    goto :goto_2

    .line 540
    :cond_3
    iput-object v6, v4, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 541
    :goto_2
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 542
    return-object v5

    .line 544
    :cond_4
    move-object v4, v5

    .line 545
    move-object v5, v6

    .line 546
    .end local v6    # "next":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    goto :goto_1

    .line 548
    :cond_5
    return-object v5
.end method

.method resize(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    .line 391
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 392
    .local v0, "oldTable":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    .line 393
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 394
    const v2, 0x7fffffff

    iput v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 395
    return-void

    .line 398
    :cond_0
    new-array v2, p1, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 399
    .local v2, "newTable":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    .line 400
    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 401
    int-to-float v3, p1

    iget v4, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 402
    return-void
.end method

.method public size()I
    .locals 1

    .line 195
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method

.method transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V
    .locals 7
    .param p1, "newTable"    # [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 408
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 409
    .local v0, "src":[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    array-length v1, p1

    .line 410
    .local v1, "newCapacity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 411
    aget-object v3, v0, v2

    .line 412
    .local v3, "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 413
    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 415
    :cond_0
    iget-object v4, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 416
    .local v4, "next":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    iget v5, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    invoke-static {v5, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v5

    .line 417
    .local v5, "i":I
    aget-object v6, p1, v5

    iput-object v6, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 418
    aput-object v3, p1, v5

    .line 419
    move-object v3, v4

    .line 420
    .end local v4    # "next":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    .end local v5    # "i":I
    if-nez v3, :cond_0

    .line 410
    .end local v3    # "e":Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry<TK;TV;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 851
    .local p0, "this":Lcom/alibaba/fastjson/util/AntiCollisionHashMap;, "Lcom/alibaba/fastjson/util/AntiCollisionHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 852
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
