.class public Lcom/clj/fastble/utils/BleLruHashMap;
.super Ljava/util/LinkedHashMap;
.source "BleLruHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final MAX_SIZE:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "saveSize"    # I

    .line 13
    .local p0, "this":Lcom/clj/fastble/utils/BleLruHashMap;, "Lcom/clj/fastble/utils/BleLruHashMap<TK;TV;>;"
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 14
    iput p1, p0, Lcom/clj/fastble/utils/BleLruHashMap;->MAX_SIZE:I

    .line 15
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .line 19
    .local p0, "this":Lcom/clj/fastble/utils/BleLruHashMap;, "Lcom/clj/fastble/utils/BleLruHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/clj/fastble/utils/BleLruHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/clj/fastble/utils/BleLruHashMap;->MAX_SIZE:I

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/clj/fastble/bluetooth/BleBluetooth;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v0}, Lcom/clj/fastble/bluetooth/BleBluetooth;->disconnect()V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/clj/fastble/utils/BleLruHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/clj/fastble/utils/BleLruHashMap;->MAX_SIZE:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 27
    .local p0, "this":Lcom/clj/fastble/utils/BleLruHashMap;, "Lcom/clj/fastble/utils/BleLruHashMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/clj/fastble/utils/BleLruHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%s:%s "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
