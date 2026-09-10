.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "IMAPInputStream.java"


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private lastBuffer:Z

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "msg"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "peek"    # Z

    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 86
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    .line 87
    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    .line 88
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 90
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 91
    return-void
.end method

.method private checkSeen()V
    .locals 4

    .line 263
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    .line 267
    .local v0, "f":Ljavax/mail/Folder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "f":Ljavax/mail/Folder;
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 273
    :cond_1
    return-void
.end method

.method private fill()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-lt v2, v0, :cond_0

    goto/16 :goto_3

    .line 133
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v2, :cond_1

    .line 135
    new-instance v2, Lcom/sun/mail/iap/ByteArray;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 145
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v3

    if-nez v3, :cond_7

    .line 149
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    .line 150
    .local v5, "seqnum":I
    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 151
    .local v3, "cnt":I
    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v6, v1, :cond_2

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/2addr v1, v6

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-le v1, v6, :cond_2

    .line 152
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    sub-int v3, v1, v6

    .line 153
    :cond_2
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v1, :cond_3

    .line 154
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v7, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_3
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move-object v6, v4

    move v7, v5

    move v10, v3

    invoke-virtual/range {v6 .. v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 157
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "seqnum":I
    nop

    .line 165
    :goto_0
    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    move-object v4, v1

    .local v4, "ba":Lcom/sun/mail/iap/ByteArray;
    if-eqz v1, :cond_6

    .line 140
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v1, :cond_4

    .line 173
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 176
    :cond_4
    invoke-virtual {v4}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    .line 177
    invoke-virtual {v4}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 178
    invoke-virtual {v4}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v1

    .line 181
    .local v1, "n":I
    if-ge v1, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    .line 182
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    .line 183
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 184
    return-void

    .line 166
    .end local v1    # "n":I
    .end local v4    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 167
    new-instance v1, Ljava/io/IOException;

    const-string v4, "No content"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v3    # "cnt":I
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_7
    :try_start_3
    new-instance v1, Lcom/sun/mail/util/MessageRemovedIOException;

    .line 147
    const-string v3, "No content for expunged message"

    .line 146
    invoke-direct {v1, v3}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v1
    :try_end_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/mail/FolderClosedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_4
    new-instance v3, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    .line 162
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-direct {v3, v4, v5}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v3

    .line 157
    .end local v1    # "fex":Ljavax/mail/FolderClosedException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 159
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v3

    .line 140
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 127
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_8
    :goto_3
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_9

    .line 128
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 129
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 130
    return-void
.end method

.method private forceCheckExpunged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/util/MessageRemovedIOException;,
            Lcom/sun/mail/util/FolderClosedIOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 99
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    .line 105
    :catch_1
    move-exception v1

    .line 106
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_2
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 107
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-direct {v2, v3, v4}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v1    # "fex":Ljavax/mail/FolderClosedException;
    :catch_2
    move-exception v1

    .line 103
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 104
    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-direct {v2, v3, v4}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 252
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 193
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 194
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 196
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPInputStream;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 216
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int/2addr v0, v1

    .line 217
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 219
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v1, v2

    .line 220
    if-gtz v0, :cond_0

    .line 221
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 223
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPInputStream;
    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p3

    .line 224
    .local v1, "cnt":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return v1

    .line 215
    .end local v0    # "avail":I
    .end local v1    # "cnt":I
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
