.class public final Lorg/apache/poi/poifs/storage/BATBlock;
.super Lorg/apache/poi/poifs/storage/BigBlock;
.source "BATBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/storage/BATBlock$1;,
        Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    }
.end annotation


# instance fields
.field private _has_free_sectors:Z

.field private _values:[I

.field private ourBlockIndex:I


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 3
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    .line 63
    .local v0, "_entries_per_block":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    .line 66
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[III)V
    .locals 4
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "entries"    # [I
    .param p3, "start_index"    # I
    .param p4, "end_index"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 84
    move v0, p3

    .local v0, "k":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 85
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    sub-int v2, v0, p3

    aget v3, p2, v0

    aput v3, v1, v2

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    sub-int v1, p4, p3

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 90
    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->recomputeFree()V

    .line 92
    :cond_1
    return-void
.end method

.method public static calculateMaximumSize(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)J
    .locals 4
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "numBATs"    # I

    .prologue
    .line 247
    const-wide/16 v0, 0x1

    .line 252
    .local v0, "size":J
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 255
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public static calculateMaximumSize(Lorg/apache/poi/poifs/storage/HeaderBlock;)J
    .locals 2
    .param p0, "header"    # Lorg/apache/poi/poifs/storage/HeaderBlock;

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBATCount()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateMaximumSize(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I
    .locals 2
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "entryCount"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    .line 216
    .local v0, "_entries_per_block":I
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    return v1
.end method

.method public static calculateXBATStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I
    .locals 2
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "entryCount"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v0

    .line 230
    .local v0, "_entries_per_xbat_block":I
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    return v1
.end method

.method public static createBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Ljava/nio/ByteBuffer;)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 5
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 112
    new-instance v0, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 115
    .local v0, "block":Lorg/apache/poi/poifs/storage/BATBlock;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 116
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 117
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v3, v0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v4

    aput v4, v3, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-direct {v0}, Lorg/apache/poi/poifs/storage/BATBlock;->recomputeFree()V

    .line 123
    return-object v0
.end method

.method public static createBATBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[I)[Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 9
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "entries"    # [I

    .prologue
    .line 147
    array-length v7, p1

    invoke-static {p0, v7}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v1

    .line 148
    .local v1, "block_count":I
    new-array v2, v1, [Lorg/apache/poi/poifs/storage/BATBlock;

    .line 149
    .local v2, "blocks":[Lorg/apache/poi/poifs/storage/BATBlock;
    const/4 v3, 0x0

    .line 150
    .local v3, "index":I
    array-length v6, p1

    .line 152
    .local v6, "remaining":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    .line 153
    .local v0, "_entries_per_block":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_1

    .line 155
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    new-instance v8, Lorg/apache/poi/poifs/storage/BATBlock;

    if-le v6, v0, :cond_0

    add-int v7, v5, v0

    :goto_1
    invoke-direct {v8, p0, p1, v5, v7}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[III)V

    aput-object v8, v2, v3

    .line 159
    sub-int/2addr v6, v0

    .line 153
    add-int/2addr v5, v0

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 155
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_0
    array-length v7, p1

    goto :goto_1

    .line 161
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_1
    return-object v2
.end method

.method public static createEmptyBATBlock(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;Z)Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 2
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "isXBAT"    # Z

    .prologue
    .line 130
    new-instance v0, Lorg/apache/poi/poifs/storage/BATBlock;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V

    .line 131
    .local v0, "block":Lorg/apache/poi/poifs/storage/BATBlock;
    if-eqz p1, :cond_0

    .line 132
    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/poifs/storage/BATBlock;->setXBATChain(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)V

    .line 134
    :cond_0
    return-object v0
.end method

.method public static createXBATBlocks(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[II)[Lorg/apache/poi/poifs/storage/BATBlock;
    .locals 9
    .param p0, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p1, "entries"    # [I
    .param p2, "startBlock"    # I

    .prologue
    .line 178
    array-length v7, p1

    invoke-static {p0, v7}, Lorg/apache/poi/poifs/storage/BATBlock;->calculateXBATStorageRequirements(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)I

    move-result v1

    .line 180
    .local v1, "block_count":I
    new-array v2, v1, [Lorg/apache/poi/poifs/storage/BATBlock;

    .line 181
    .local v2, "blocks":[Lorg/apache/poi/poifs/storage/BATBlock;
    const/4 v3, 0x0

    .line 182
    .local v3, "index":I
    array-length v6, p1

    .line 184
    .local v6, "remaining":I
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v0

    .line 185
    .local v0, "_entries_per_xbat_block":I
    if-eqz v1, :cond_3

    .line 187
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_1

    .line 189
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .local v4, "index":I
    new-instance v8, Lorg/apache/poi/poifs/storage/BATBlock;

    if-le v6, v0, :cond_0

    add-int v7, v5, v0

    :goto_1
    invoke-direct {v8, p0, p1, v5, v7}, Lorg/apache/poi/poifs/storage/BATBlock;-><init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;[III)V

    aput-object v8, v2, v3

    .line 194
    sub-int/2addr v6, v0

    .line 187
    add-int/2addr v5, v0

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 189
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_0
    array-length v7, p1

    goto :goto_1

    .line 196
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :cond_1
    const/4 v3, 0x0

    :goto_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    .line 198
    aget-object v7, v2, v3

    add-int v8, p2, v3

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/poifs/storage/BATBlock;->setXBATChain(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)V

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 200
    :cond_2
    aget-object v7, v2, v3

    const/4 v8, -0x2

    invoke-direct {v7, p0, v8}, Lorg/apache/poi/poifs/storage/BATBlock;->setXBATChain(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)V

    .line 202
    .end local v5    # "j":I
    :cond_3
    return-object v2
.end method

.method public static getBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 6
    .param p0, "offset"    # I
    .param p1, "header"    # Lorg/apache/poi/poifs/storage/HeaderBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;)",
            "Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;"
        }
    .end annotation

    .prologue
    .line 269
    .local p2, "bats":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/BATBlock;>;"
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    .line 271
    .local v0, "bigBlockSize":Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v3

    div-int v3, p0, v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 272
    .local v2, "whichBAT":I
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v3

    rem-int v1, p0, v3

    .line 273
    .local v1, "index":I
    new-instance v4, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;-><init>(ILorg/apache/poi/poifs/storage/BATBlock;Lorg/apache/poi/poifs/storage/BATBlock$1;)V

    return-object v4
.end method

.method public static getSBATBlockAndIndex(ILorg/apache/poi/poifs/storage/HeaderBlock;Ljava/util/List;)Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;
    .locals 6
    .param p0, "offset"    # I
    .param p1, "header"    # Lorg/apache/poi/poifs/storage/HeaderBlock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/poifs/storage/HeaderBlock;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/poifs/storage/BATBlock;",
            ">;)",
            "Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;"
        }
    .end annotation

    .prologue
    .line 283
    .local p2, "sbats":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/poifs/storage/BATBlock;>;"
    invoke-virtual {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    move-result-object v0

    .line 286
    .local v0, "bigBlockSize":Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v3

    div-int v3, p0, v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 287
    .local v2, "whichSBAT":I
    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v3

    rem-int v1, p0, v3

    .line 288
    .local v1, "index":I
    new-instance v4, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/poifs/storage/BATBlock;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lorg/apache/poi/poifs/storage/BATBlock$BATBlockAndIndex;-><init>(ILorg/apache/poi/poifs/storage/BATBlock;Lorg/apache/poi/poifs/storage/BATBlock$1;)V

    return-object v4
.end method

.method private recomputeFree()V
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "hasFree":Z
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 97
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 98
    const/4 v0, 0x1

    .line 102
    :cond_0
    iput-boolean v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    .line 103
    return-void

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private serialize()[B
    .locals 4

    .prologue
    .line 369
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/BATBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v3}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v3

    new-array v0, v3, [B

    .line 372
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 373
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 374
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v3, v3, v1

    invoke-static {v0, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 375
    add-int/lit8 v2, v2, 0x4

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-object v0
.end method

.method private setXBATChain(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;I)V
    .locals 2
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .param p2, "chainIndex"    # I

    .prologue
    .line 293
    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v0

    .line 294
    .local v0, "_entries_per_xbat_block":I
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aput p2, v1, v0

    .line 295
    return-void
.end method


# virtual methods
.method public getOurBlockIndex()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->ourBlockIndex:I

    return v0
.end method

.method public getValueAt(I)I
    .locals 3
    .param p1, "relativeOffset"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to fetch offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BAT only contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v0, v0, p1

    return v0
.end method

.method public hasFreeSectors()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    return v0
.end method

.method public setOurBlockIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 332
    iput p1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->ourBlockIndex:I

    .line 333
    return-void
.end method

.method public setValueAt(II)V
    .locals 3
    .param p1, "relativeOffset"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, -0x1

    .line 315
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aget v0, v1, p1

    .line 316
    .local v0, "oldValue":I
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_values:[I

    aput p2, v1, p1

    .line 319
    if-ne p2, v2, :cond_1

    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/poifs/storage/BATBlock;->_has_free_sectors:Z

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-ne v0, v2, :cond_0

    .line 324
    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->recomputeFree()V

    goto :goto_0
.end method

.method public bridge synthetic writeBlocks(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;->writeBlocks(Ljava/io/OutputStream;)V

    return-void
.end method

.method writeData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->serialize()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 358
    return-void
.end method

.method writeData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "block"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lorg/apache/poi/poifs/storage/BATBlock;->serialize()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 365
    return-void
.end method
