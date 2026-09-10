.class public Lcom/danikula/videocache/file/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcom/danikula/videocache/Cache;


# static fields
.field private static final TEMP_POSTFIX:Ljava/lang/String; = ".download"


# instance fields
.field private dataFile:Ljava/io/RandomAccessFile;

.field private final diskUsage:Lcom/danikula/videocache/file/DiskUsage;

.field public file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/danikula/videocache/file/UnlimitedDiskUsage;

    invoke-direct {v0}, Lcom/danikula/videocache/file/UnlimitedDiskUsage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/danikula/videocache/file/FileCache;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/DiskUsage;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/danikula/videocache/file/DiskUsage;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "diskUsage"    # Lcom/danikula/videocache/file/DiskUsage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p2, :cond_2

    .line 32
    :try_start_0
    iput-object p2, p0, Lcom/danikula/videocache/file/FileCache;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 34
    .local v0, "directory":Ljava/io/File;
    invoke-static {v0}, Lcom/danikula/videocache/file/Files;->makeDir(Ljava/io/File;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 36
    .local v1, "completed":Z
    if-eqz v1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    iput-object v2, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    .line 37
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    const-string v4, "r"

    goto :goto_1

    :cond_1
    const-string v4, "rw"

    :goto_1
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    .line 40
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "completed":Z
    nop

    .line 41
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_2

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "diskUsage":Lcom/danikula/videocache/file/DiskUsage;
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "diskUsage":Lcom/danikula/videocache/file/DiskUsage;
    :goto_2
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error using file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isTempFile(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized append([BI)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .line 75
    monitor-exit p0

    return-void

    .line 67
    .end local p0    # "this":Lcom/danikula/videocache/file/FileCache;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error append cache: cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    .end local p1    # "data":[B
    .end local p2    # "length":I
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 71
    .restart local p1    # "data":[B
    .restart local p2    # "length":I
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "Error writing %d bytes to %s from buffer with size %d"

    .line 73
    .local v2, "format":Ljava/lang/String;
    new-instance v3, Lcom/danikula/videocache/ProxyCacheException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "format":Ljava/lang/String;
    .end local p1    # "data":[B
    .end local p2    # "length":I
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized available()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v0

    int-to-long v0, v1

    monitor-exit p0

    return-wide v0

    .line 45
    .end local p0    # "this":Lcom/danikula/videocache/file/FileCache;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading length of file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 81
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/danikula/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .line 85
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Lcom/danikula/videocache/file/FileCache;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized complete()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 90
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->close()V

    .line 94
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".download"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v1, "completedFile":Ljava/io/File;
    iget-object v2, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 97
    .local v2, "renamed":Z
    if-eqz v2, :cond_1

    .line 100
    iput-object v1, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    .line 103
    iget-object v3, p0, Lcom/danikula/videocache/file/FileCache;->diskUsage:Lcom/danikula/videocache/file/DiskUsage;

    iget-object v4, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/danikula/videocache/file/DiskUsage;->touch(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    nop

    .line 107
    monitor-exit p0

    return-void

    .line 104
    .end local p0    # "this":Lcom/danikula/videocache/file/FileCache;
    :catch_0
    move-exception v3

    .line 105
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as disc cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 98
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v3, Lcom/danikula/videocache/ProxyCacheException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error renaming file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for completion!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "completedFile":Ljava/io/File;
    .end local v2    # "renamed":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized isCompleted()Z
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/danikula/videocache/file/FileCache;->isTempFile(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 111
    .end local p0    # "this":Lcom/danikula/videocache/file/FileCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BJI)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    monitor-enter p0

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    iget-object v1, p0, Lcom/danikula/videocache/file/FileCache;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 54
    .end local p0    # "this":Lcom/danikula/videocache/file/FileCache;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":J
    .end local p4    # "length":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 57
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":J
    .restart local p4    # "length":I
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    .line 59
    .local v2, "format":Ljava/lang/String;
    new-instance v3, Lcom/danikula/videocache/ProxyCacheException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "format":Ljava/lang/String;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":J
    .end local p4    # "length":I
    :goto_0
    monitor-exit p0

    throw p1
.end method
