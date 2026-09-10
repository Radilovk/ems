.class public Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
.super Ljava/lang/Object;
.source "NPOIFSStream.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;,
        Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

.field private outStream:Ljava/io/OutputStream;

.field private startBlock:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;)V
    .locals 1
    .param p1, "blockStore"    # Lorg/apache/poi/poifs/filesystem/BlockStore;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    .line 69
    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V
    .locals 0
    .param p1, "blockStore"    # Lorg/apache/poi/poifs/filesystem/BlockStore;
    .param p2, "startBlock"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    .line 60
    iput p2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 47
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    .line 47
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return v0
.end method

.method static synthetic access$102(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return p1
.end method

.method static synthetic access$200(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    .param p1, "x1"    # Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->free(Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    return-void
.end method

.method private free(Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V
    .locals 4
    .param p1, "loopDetector"    # Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    .line 129
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    .line 130
    .local v0, "nextBlock":I
    :goto_0
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 131
    move v1, v0

    .line 132
    .local v1, "thisBlock":I
    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 133
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getNextBlock(I)I

    move-result v0

    .line 134
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    .line 135
    .end local v1    # "thisBlock":I
    goto :goto_0

    .line 136
    :cond_0
    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    .line 137
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->blockStore:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    .line 126
    .local v0, "loopDetector":Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->free(Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    .line 127
    return-void
.end method

.method public getBlockIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 90
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 95
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBufferIterator;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)V

    return-object v1

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t read from a new stream before it has been written to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->outStream:Ljava/io/OutputStream;

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getStartBlock()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->startBlock:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getBlockIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public updateContents([B)V
    .locals 1
    .param p1, "contents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 106
    .local v0, "os":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 108
    return-void
.end method
