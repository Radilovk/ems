.class public Lorg/apache/poi/poifs/nio/FileBackedDataSource;
.super Lorg/apache/poi/poifs/nio/DataSource;
.source "FileBackedDataSource.java"


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private srcFile:Ljava/io/RandomAccessFile;

.field private writable:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    const-string v0, "r"

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 46
    if-eqz p2, :cond_0

    const-string v0, "r"

    goto :goto_0

    :cond_0
    const-string v0, "rw"

    :goto_0
    invoke-static {p1, v0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 1
    .param p1, "srcFile"    # Ljava/io/RandomAccessFile;
    .param p2, "readOnly"    # Z

    .line 50
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;-><init>(Ljava/nio/channels/FileChannel;Z)V

    .line 51
    iput-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->srcFile:Ljava/io/RandomAccessFile;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;Z)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "readOnly"    # Z

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/poifs/nio/DataSource;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    .line 56
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    .line 57
    return-void
.end method

.method private static newSrcFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p0, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->srcFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 124
    :goto_0
    return-void
.end method

.method public copyTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    .line 108
    .local v6, "out":Ljava/nio/channels/WritableByteChannel;
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 109
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public isWriteable()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    return v0
.end method

.method public read(IJ)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "length"    # I
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->size()J

    move-result-wide v0

    const-string v2, " past the end of the file"

    const-string v3, "Position "

    cmp-long v4, p2, v0

    if-gez v4, :cond_2

    .line 75
    const/4 v0, -0x1

    .line 76
    .local v0, "worked":I
    iget-boolean v1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->writable:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v4, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v8, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 78
    .local v1, "dst":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .end local v1    # "dst":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p2, p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 82
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 83
    .restart local v1    # "dst":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-static {v4, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 87
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    return-object v1

    .line 88
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    .end local v0    # "worked":I
    .end local v1    # "dst":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/apache/poi/poifs/nio/FileBackedDataSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 101
    return-void
.end method
