.class abstract Lorg/apache/poi/poifs/storage/BlockListImpl;
.super Ljava/lang/Object;
.source "BlockListImpl.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockList;


# instance fields
.field private _bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

.field private _blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    .line 35
    return-void
.end method


# virtual methods
.method public blockCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v0, v0

    return v0
.end method

.method public fetchBlocks(II)[Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 2
    .param p1, "startBlock"    # I
    .param p2, "headerPropertiesStartBlock"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2, p0}, Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;->fetchBlocks(IILorg/apache/poi/poifs/storage/BlockList;)[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly initialized list: no block allocation table provided"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected get(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 1
    .param p1, "index"    # I

    .line 66
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected remainingBlocks()I
    .locals 4

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 154
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public remove(I)Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    .line 86
    .local v0, "result":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    aget-object v1, v1, p1

    move-object v0, v1

    .line 87
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 101
    nop

    .line 102
    return-object v0

    .line 89
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "block[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ] already removed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "does your POIFS have circular or duplicate block references?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .end local p1    # "index":I
    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .restart local v0    # "result":Lorg/apache/poi/poifs/storage/ListManagedBlock;
    .restart local p1    # "index":I
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ignored":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot remove block[ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ]; out of range[ 0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setBAT(Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;)V
    .locals 2
    .param p1, "bat"    # Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    if-nez v0, :cond_0

    .line 139
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_bat:Lorg/apache/poi/poifs/storage/BlockAllocationTableReader;

    .line 140
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to replace existing BlockAllocationTable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setBlocks([Lorg/apache/poi/poifs/storage/ListManagedBlock;)V
    .locals 0
    .param p1, "blocks"    # [Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .line 44
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    .line 45
    return-void
.end method

.method public zap(I)V
    .locals 2
    .param p1, "index"    # I

    .line 55
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BlockListImpl;->_blocks:[Lorg/apache/poi/poifs/storage/ListManagedBlock;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 57
    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 59
    :cond_0
    return-void
.end method
