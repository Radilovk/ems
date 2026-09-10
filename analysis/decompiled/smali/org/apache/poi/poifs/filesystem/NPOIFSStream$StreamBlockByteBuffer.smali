.class public Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;
.super Ljava/io/OutputStream;
.source "NPOIFSStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StreamBlockByteBuffer"
.end annotation


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

.field nextBlock:I

.field oneByte:[B

.field prevBlock:I

.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->oneByte:[B

    .line 191
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getChainLoopDetector()Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    .line 192
    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    .line 193
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$100(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    .line 194
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;-><init>(Lorg/apache/poi/poifs/filesystem/BlockStore;I)V

    .line 257
    .local v0, "toFree":Lorg/apache/poi/poifs/filesystem/NPOIFSStream;
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$200(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;)V

    .line 260
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    .line 261
    return-void
.end method

.method protected createBlockIfNeeded()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 197
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 199
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    .line 203
    .local v0, "thisBlock":I
    if-ne v0, v3, :cond_3

    .line 204
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getFreeBlock()I

    move-result v0

    .line 205
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 208
    iput v3, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    .line 211
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    if-eq v1, v3, :cond_1

    .line 212
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/apache/poi/poifs/filesystem/BlockStore;->setNextBlock(II)V

    .line 218
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$100(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 219
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$102(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;I)I

    .line 226
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->createBlockIfNeeded(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 229
    iput v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->prevBlock:I

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->loopDetector:Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->claim(I)V

    .line 223
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->this$0:Lorg/apache/poi/poifs/filesystem/NPOIFSStream;

    invoke-static {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream;->access$000(Lorg/apache/poi/poifs/filesystem/NPOIFSStream;)Lorg/apache/poi/poifs/filesystem/BlockStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getNextBlock(I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->nextBlock:I

    goto :goto_1
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->oneByte:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 234
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->oneByte:[B

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->write([B)V

    .line 235
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    if-ltz p2, :cond_0

    array-length v1, p1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-gez v1, :cond_1

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 241
    :cond_1
    if-nez p3, :cond_2

    .line 252
    :goto_0
    return-void

    .line 246
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->createBlockIfNeeded()V

    .line 247
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 248
    .local v0, "writeBytes":I
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/NPOIFSStream$StreamBlockByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 249
    add-int/2addr p2, v0

    .line 250
    sub-int/2addr p3, v0

    .line 251
    if-gtz p3, :cond_2

    goto :goto_0
.end method
