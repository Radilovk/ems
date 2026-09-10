.class Lcom/sun/mail/pop3/AppendStream;
.super Ljava/io/OutputStream;
.source "TempFile.java"


# instance fields
.field private end:J

.field private raf:Ljava/io/RandomAccessFile;

.field private final start:J

.field private final tf:Lcom/sun/mail/pop3/WritableSharedFile;


# direct methods
.method public constructor <init>(Lcom/sun/mail/pop3/WritableSharedFile;)V
    .locals 3
    .param p1, "tf"    # Lcom/sun/mail/pop3/WritableSharedFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/sun/mail/pop3/AppendStream;->tf:Lcom/sun/mail/pop3/WritableSharedFile;

    .line 168
    invoke-virtual {p1}, Lcom/sun/mail/pop3/WritableSharedFile;->getWritableFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    .line 169
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/pop3/AppendStream;->start:J

    .line 170
    iget-object v2, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->tf:Lcom/sun/mail/pop3/WritableSharedFile;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/WritableSharedFile;->updateLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/pop3/AppendStream;->end:J

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 185
    .end local p0    # "this":Lcom/sun/mail/pop3/AppendStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->tf:Lcom/sun/mail/pop3/WritableSharedFile;

    iget-wide v1, p0, Lcom/sun/mail/pop3/AppendStream;->start:J

    iget-wide v3, p0, Lcom/sun/mail/pop3/AppendStream;->end:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/mail/pop3/WritableSharedFile;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    .end local p0    # "this":Lcom/sun/mail/pop3/AppendStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 175
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 179
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

    .line 182
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 183
    return-void
.end method
