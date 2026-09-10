.class Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;
.super Ljava/util/TreeMap;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrettyPrintTreeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$1;

    .prologue
    .line 96
    .local p0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 99
    .local p0, "this":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap<TK;TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$PrettyPrintTreeMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "result":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 108
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_1
.end method
