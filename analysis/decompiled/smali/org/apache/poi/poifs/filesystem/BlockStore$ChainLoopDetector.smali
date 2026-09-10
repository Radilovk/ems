.class public Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
.super Ljava/lang/Object;
.source "BlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/BlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChainLoopDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

.field private used_blocks:[Z


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V
    .locals 4
    .param p2, "rawSize"    # J

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getBlockStoreBlockSize()I

    move-result v1

    int-to-long v2, v1

    div-long v2, p2, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 84
    .local v0, "numBlocks":I
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    .line 85
    return-void
.end method


# virtual methods
.method protected claim(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Potential loop detected - Block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already claimed but was just requested again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method
