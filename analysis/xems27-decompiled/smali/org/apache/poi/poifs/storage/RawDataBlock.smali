.class public Lorg/apache/poi/poifs/storage/RawDataBlock;
.super Ljava/lang/Object;
.source "RawDataBlock.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/ListManagedBlock;


# static fields
.field private static log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _data:[B

.field private _eof:Z

.field private _hasData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/apache/poi/poifs/storage/RawDataBlock;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/storage/RawDataBlock;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/poifs/storage/RawDataBlock;-><init>(Ljava/io/InputStream;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_data:[B

    .line 70
    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 71
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_hasData:Z

    .line 73
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 74
    iput-boolean v2, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_eof:Z

    goto :goto_2

    .line 76
    :cond_1
    if-eq v0, p2, :cond_3

    .line 80
    iput-boolean v2, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_eof:Z

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " byte"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    const-string v2, "s"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Lorg/apache/poi/poifs/storage/RawDataBlock;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read entire block; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " read before EOF; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes. Your document "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "was either written by software that "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ignores the spec, or has been truncated!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 91
    .end local v1    # "type":Ljava/lang/String;
    goto :goto_2

    .line 93
    :cond_3
    iput-boolean v1, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_eof:Z

    .line 95
    :goto_2
    return-void
.end method


# virtual methods
.method public eof()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_eof:Z

    return v0
.end method

.method public getBigBlockSize()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_data:[B

    array-length v0, v0

    return v0
.end method

.method public getData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/poifs/storage/RawDataBlock;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_data:[B

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot return empty data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasData()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_hasData:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawDataBlock of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/RawDataBlock;->_data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
