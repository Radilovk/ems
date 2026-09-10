.class public Lcom/sun/mail/pop3/POP3Message;
.super Ljavax/mail/internet/MimeMessage;
.source "POP3Message.java"

# interfaces
.implements Lcom/sun/mail/util/ReadableMime;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private folder:Lcom/sun/mail/pop3/POP3Folder;

.field private hdrSize:I

.field private msgSize:I

.field private rawData:Ljava/lang/ref/SoftReference;

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sun/mail/pop3/POP3Message;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/pop3/POP3Message;->$assertionsDisabled:Z

    .line 67
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/mail/Folder;I)V
    .locals 2
    .param p1, "folder"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 79
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 70
    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 71
    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 72
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    .line 80
    sget-boolean v0, Lcom/sun/mail/pop3/POP3Message;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    check-cast p1, Lcom/sun/mail/pop3/POP3Folder;

    .end local p1    # "folder":Ljavax/mail/Folder;
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 82
    return-void
.end method

.method private getRawStream(Z)Ljava/io/InputStream;
    .locals 16
    .param p1, "skipHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v10, 0x0

    .line 158
    .local v10, "rawcontent":Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/io/InputStream;

    move-object v10, v0

    .line 160
    if-nez v10, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v11}, Lcom/sun/mail/pop3/POP3Folder;->getFileCache()Lcom/sun/mail/pop3/TempFile;

    move-result-object v4

    .line 162
    .local v4, "cache":Lcom/sun/mail/pop3/TempFile;
    if-eqz v4, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v11, v11, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v11, v11, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "caching message #"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 165
    const-string v13, " in temp file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 164
    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {v4}, Lcom/sun/mail/pop3/TempFile;->getAppendStream()Lcom/sun/mail/pop3/AppendStream;

    move-result-object v9

    .line 167
    .local v9, "os":Lcom/sun/mail/pop3/AppendStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v11}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v11, v12, v2}, Lcom/sun/mail/pop3/Protocol;->retr(ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 173
    invoke-virtual {v9}, Lcom/sun/mail/pop3/AppendStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 178
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "os":Lcom/sun/mail/pop3/AppendStream;
    :goto_0
    if-nez v10, :cond_3

    .line 179
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 180
    new-instance v11, Ljavax/mail/MessageRemovedException;

    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "can\'t retrieve message #"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 182
    const-string v13, " in POP3Message.getContentStream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 181
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 180
    invoke-direct {v11, v12}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 158
    .end local v4    # "cache":Lcom/sun/mail/pop3/TempFile;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 243
    :catch_0
    move-exception v5

    .line 244
    .local v5, "eex":Ljava/io/EOFException;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 245
    new-instance v11, Ljavax/mail/FolderClosedException;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v11

    .line 170
    .end local v5    # "eex":Ljava/io/EOFException;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "cache":Lcom/sun/mail/pop3/TempFile;
    .restart local v9    # "os":Lcom/sun/mail/pop3/AppendStream;
    :catchall_1
    move-exception v11

    .line 171
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 172
    throw v11

    .line 175
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v9    # "os":Lcom/sun/mail/pop3/AppendStream;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v11}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    .line 176
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v11, :cond_2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    add-int/2addr v11, v14

    .line 175
    :goto_1
    invoke-virtual {v12, v13, v11}, Lcom/sun/mail/pop3/Protocol;->retr(II)Ljava/io/InputStream;

    move-result-object v10

    goto :goto_0

    .line 176
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 185
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v11, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v11}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v11

    check-cast v11, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v11, v11, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    if-eqz v11, :cond_6

    .line 187
    :cond_4
    new-instance v11, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v11, v10}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 189
    move-object v0, v10

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v11, v0

    invoke-interface {v11}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v12

    long-to-int v11, v12

    .line 188
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 238
    :goto_2
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 240
    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v10}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    .line 158
    .end local v4    # "cache":Lcom/sun/mail/pop3/TempFile;
    :cond_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 255
    check-cast v10, Ljavax/mail/internet/SharedInputStream;

    .line 256
    .end local v10    # "rawcontent":Ljava/io/InputStream;
    if-eqz p1, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    :goto_3
    int-to-long v12, v11

    const-wide/16 v14, -0x1

    .line 255
    invoke-interface {v10, v12, v13, v14, v15}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v10

    .line 257
    .restart local v10    # "rawcontent":Ljava/io/InputStream;
    return-object v10

    .line 203
    .restart local v4    # "cache":Lcom/sun/mail/pop3/TempFile;
    :cond_6
    const/4 v8, 0x0

    .line 205
    .local v8, "offset":I
    :cond_7
    const/4 v7, 0x0

    .line 207
    .local v7, "len":I
    :goto_4
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "c1":I
    if-gez v3, :cond_9

    .line 226
    :cond_8
    :goto_5
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v11

    if-nez v11, :cond_b

    .line 234
    :goto_6
    move-object v0, v10

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v11, v0

    invoke-interface {v11}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v12

    long-to-int v11, v12

    .line 233
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    goto :goto_2

    .line 208
    :cond_9
    const/16 v11, 0xa

    if-eq v3, v11, :cond_8

    .line 210
    const/16 v11, 0xd

    if-ne v3, v11, :cond_a

    .line 212
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v11

    if-lez v11, :cond_8

    .line 213
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/io/InputStream;->mark(I)V

    .line 214
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v11

    const/16 v12, 0xa

    if-eq v11, v12, :cond_8

    .line 215
    invoke-virtual {v10}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 221
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 230
    :cond_b
    if-nez v7, :cond_7

    goto :goto_6

    .line 246
    .end local v3    # "c1":I
    .end local v4    # "cache":Lcom/sun/mail/pop3/TempFile;
    .end local v7    # "len":I
    .end local v8    # "offset":I
    :catch_1
    move-exception v6

    .line 247
    .local v6, "ex":Ljava/io/IOException;
    new-instance v11, Ljavax/mail/MessagingException;

    const-string v12, "error fetching POP3 content"

    invoke-direct {v11, v12, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .line 256
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v10    # "rawcontent":Ljava/io/InputStream;
    :cond_c
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private loadHeaders()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 600
    sget-boolean v5, Lcom/sun/mail/pop3/POP3Message;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 602
    :cond_0
    const/4 v3, 0x0

    .line 603
    .local v3, "fetchContent":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 604
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v5, :cond_2

    .line 605
    monitor-exit p0

    .line 648
    :cond_1
    :goto_0
    return-void

    .line 606
    :cond_2
    const/4 v4, 0x0

    .line 607
    .local v4, "hdrs":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v5, v5, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    if-nez v5, :cond_3

    .line 608
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v5

    iget v6, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_4

    .line 612
    :cond_3
    const/4 v3, 0x1

    .line 603
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    if-eqz v3, :cond_1

    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, "cs":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Message;->getContentStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 638
    if-eqz v0, :cond_1

    .line 639
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 642
    .end local v0    # "cs":Ljava/io/InputStream;
    .end local v4    # "hdrs":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 643
    .local v1, "eex":Ljava/io/EOFException;
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5, v8}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 644
    new-instance v5, Ljavax/mail/FolderClosedException;

    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v5

    .line 615
    .end local v1    # "eex":Ljava/io/EOFException;
    .restart local v4    # "hdrs":Ljava/io/InputStream;
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    iput v5, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 616
    new-instance v5, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v5, v4}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 618
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 603
    .end local v4    # "hdrs":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 645
    :catch_1
    move-exception v2

    .line 646
    .local v2, "ex":Ljava/io/IOException;
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "error loading POP3 headers"

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 617
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v4    # "hdrs":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    .line 618
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 619
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 637
    .restart local v0    # "cs":Ljava/io/InputStream;
    :catchall_2
    move-exception v5

    .line 638
    if-eqz v0, :cond_5

    .line 639
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 640
    :cond_5
    throw v5
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getContentStream()Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    check-cast v4, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    invoke-interface {v4, v6, v7, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 281
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 271
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Message;->getRawStream(Z)Ljava/io/InputStream;

    move-result-object v3

    .line 277
    .local v3, "cstream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getFileCache()Lcom/sun/mail/pop3/TempFile;

    move-result-object v2

    .line 278
    .local v2, "cache":Lcom/sun/mail/pop3/TempFile;
    if-nez v2, :cond_2

    .line 279
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v4, v4, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    if-eqz v4, :cond_0

    .line 280
    :cond_2
    move-object v0, v3

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v4, v0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    invoke-interface {v4, v6, v7, v8, v9}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    .end local v2    # "cache":Lcom/sun/mail/pop3/TempFile;
    .end local v3    # "cstream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMimeStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Message;->getRawStream(Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :try_start_1
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v2, :cond_0

    .line 115
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    .line 139
    :goto_0
    return v2

    .line 112
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v2, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 136
    :cond_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    :try_start_3
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-gez v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/Protocol;->list(I)I

    move-result v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 139
    :cond_2
    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 143
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "eex":Ljava/io/EOFException;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 144
    :catch_1
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting size"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public declared-synchronized invalidate(Z)V
    .locals 3
    .param p1, "invalidateHeaders"    # Z

    .prologue
    .line 303
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->content:[B

    .line 304
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .local v0, "rstream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 309
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    .line 323
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 324
    if-eqz p1, :cond_2

    .line 325
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 326
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    :cond_2
    monitor-exit p0

    return-void

    .line 310
    :catch_0
    move-exception v1

    goto :goto_0

    .line 303
    .end local v0    # "rstream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 318
    .restart local v0    # "rstream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveChanges()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 3
    .param p1, "newFlags"    # Ljavax/mail/Flags;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    .line 93
    .local v0, "oldFlags":Ljavax/mail/Flags;
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V

    .line 94
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 96
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2, p0}, Lcom/sun/mail/pop3/POP3Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "oldFlags":Ljavax/mail/Flags;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public top(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v2

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3, p1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 341
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 346
    new-instance v2, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 347
    .end local v0    # "eex":Ljava/io/EOFException;
    :catch_1
    move-exception v1

    .line 348
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting size"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 8
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ignoreList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 568
    .local v3, "rawcontent":Ljava/io/InputStream;
    if-nez v3, :cond_1

    if-nez p2, :cond_1

    .line 569
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v4, v4, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    if-nez v4, :cond_1

    .line 570
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v4, v4, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v4, v4, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "streaming msg "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v4

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v4, v5, p1}, Lcom/sun/mail/pop3/Protocol;->retr(ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 573
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 574
    new-instance v4, Ljavax/mail/MessageRemovedException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can\'t retrieve message #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    iget v6, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in POP3Message.writeTo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    invoke-direct {v4, v5}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .end local v3    # "rawcontent":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 577
    .restart local v3    # "rawcontent":Ljava/io/InputStream;
    :cond_1
    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    .line 579
    :try_start_1
    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    .end local v3    # "rawcontent":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 581
    .local v1, "in":Ljava/io/InputStream;
    const/16 v4, 0x4000

    :try_start_2
    new-array v0, v4, [B

    .line 583
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_3

    .line 587
    if-eqz v1, :cond_2

    .line 588
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    .end local v0    # "buf":[B
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "len":I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 584
    .restart local v0    # "buf":[B
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "len":I
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {p1, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 585
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catchall_1
    move-exception v4

    .line 587
    if-eqz v1, :cond_4

    .line 588
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 590
    :cond_4
    :goto_2
    :try_start_6
    throw v4

    .line 592
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "rawcontent":Ljava/io/InputStream;
    :cond_5
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 589
    .end local v3    # "rawcontent":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    goto :goto_2

    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method
