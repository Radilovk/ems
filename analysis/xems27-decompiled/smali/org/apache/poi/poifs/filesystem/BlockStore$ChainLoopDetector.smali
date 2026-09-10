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
    .locals 2
    .param p2, "rawSize"    # J

    .line 82
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getBlockStoreBlockSize()I

    move-result p1

    int-to-long v0, p1

    div-long v0, p2, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 84
    .local p1, "numBlocks":I
    new-array v0, p1, [Z

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    .line 85
    return-void
.end method


# virtual methods
.method protected claim(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 87
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 91
    return-void

    .line 95
    :cond_0
    aget-boolean v1, v0, p1

    if-nez v1, :cond_1

    .line 101
    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 102
    return-void

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Potential loop detected - Block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was already claimed but was just requested again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
