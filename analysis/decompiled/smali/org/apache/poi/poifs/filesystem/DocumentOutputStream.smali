.class public final Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
.super Ljava/io/OutputStream;
.source "DocumentOutputStream.java"


# instance fields
.field private final _limit:I

.field private final _stream:Ljava/io/OutputStream;

.field private _written:I


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "limit"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Ljava/io/OutputStream;

    .line 45
    iput p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_written:I

    .line 47
    return-void
.end method

.method private limitCheck(I)V
    .locals 2
    .param p1, "toBeWritten"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_written:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_limit:I

    if-le v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "tried to write too much data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_written:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_written:I

    .line 162
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 118
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->limitCheck(I)V

    .line 65
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 66
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->write([BII)V

    .line 79
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p3}, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->limitCheck(I)V

    .line 105
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    return-void
.end method

.method writeFiller(IB)V
    .locals 2
    .param p1, "totalLimit"    # I
    .param p2, "fill"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_written:I

    if-le p1, v1, :cond_0

    .line 147
    iget v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_written:I

    sub-int v1, p1, v1

    new-array v0, v1, [B

    .line 149
    .local v0, "filler":[B
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 150
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 152
    .end local v0    # "filler":[B
    :cond_0
    return-void
.end method
