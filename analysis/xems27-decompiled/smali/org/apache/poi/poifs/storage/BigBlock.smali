.class abstract Lorg/apache/poi/poifs/storage/BigBlock;
.super Ljava/lang/Object;
.source "BigBlock.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/BlockWritable;


# instance fields
.field protected bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 0
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/BigBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 50
    return-void
.end method


# virtual methods
.method protected doWriteData(Ljava/io/OutputStream;[B)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 68
    return-void
.end method

.method public writeBlocks(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/storage/BigBlock;->writeData(Ljava/io/OutputStream;)V

    .line 99
    return-void
.end method

.method abstract writeData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
