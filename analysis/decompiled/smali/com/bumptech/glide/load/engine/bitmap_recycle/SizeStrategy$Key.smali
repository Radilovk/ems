.class final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private final pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

.field private size:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V
    .locals 0
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    .line 145
    return-void
.end method

.method static synthetic access$100(Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;)I
    .locals 1
    .param p0, "x0"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .prologue
    .line 139
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 153
    instance-of v2, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 154
    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 155
    .local v0, "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    iget v3, v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 157
    .end local v0    # "other":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    return v0
.end method

.method public init(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    .line 149
    return-void
.end method

.method public offer()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->pool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->size:I

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;->access$200(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
