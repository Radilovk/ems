.class public Lcom/sun/mail/pop3/POP3Message;
.super Ljavax/mail/internet/MimeMessage;
.source "POP3Message.java"

# interfaces
.implements Lcom/sun/mail/util/ReadableMime;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private folder:Lcom/sun/mail/pop3/POP3Folder;

.field private hdrSize:I

.field private msgSize:I

.field private rawData:Ljava/lang/ref/SoftReference;

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    nop

    .line 67
    return-void
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

    .line 79
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 70
    const/4 v0, -0x1

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
    nop

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/pop3/POP3Folder;

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 82
    return-void
.end method

.method private getRawStream(Z)Ljava/io/InputStream;
    .locals 9
    .param p1, "skipHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "rawcontent":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    move-object v0, v2

    .line 160
    if-nez v0, :cond_c

    .line 161
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/POP3Folder;->getFileCache()Lcom/sun/mail/pop3/TempFile;

    move-result-object v2

    .line 162
    .local v2, "cache":Lcom/sun/mail/pop3/TempFile;
    if-eqz v2, :cond_1

    .line 163
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v3, v3, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v3, v3, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "caching message #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v5, " in temp file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 166
    :cond_0
    invoke-virtual {v2}, Lcom/sun/mail/pop3/TempFile;->getAppendStream()Lcom/sun/mail/pop3/AppendStream;

    move-result-object v3

    .line 167
    .local v3, "os":Lcom/sun/mail/pop3/AppendStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v5

    iget v6, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v5, v6, v4}, Lcom/sun/mail/pop3/Protocol;->retr(ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    nop

    .line 171
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 173
    invoke-virtual {v3}, Lcom/sun/mail/pop3/AppendStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 174
    .end local v3    # "os":Lcom/sun/mail/pop3/AppendStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 170
    .restart local v3    # "os":Lcom/sun/mail/pop3/AppendStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v5

    .line 171
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 172
    nop

    .end local v0    # "rawcontent":Ljava/io/InputStream;
    .end local p1    # "skipHeader":Z
    throw v5

    .line 175
    .end local v3    # "os":Lcom/sun/mail/pop3/AppendStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "rawcontent":Ljava/io/InputStream;
    .restart local p1    # "skipHeader":Z
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    .line 176
    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    iget v6, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    add-int/2addr v5, v6

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 175
    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/pop3/Protocol;->retr(II)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 178
    :goto_1
    const/4 v3, 0x1

    if-eqz v0, :cond_b

    .line 185
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v4, :cond_a

    .line 186
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v4, v4, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    if-eqz v4, :cond_3

    goto :goto_5

    .line 203
    :cond_3
    const/4 v4, 0x0

    .line 205
    .local v4, "offset":I
    :cond_4
    const/4 v5, 0x0

    .line 207
    .local v5, "len":I
    nop

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    move v7, v6

    .local v7, "c1":I
    if-gez v6, :cond_5

    goto :goto_3

    .line 208
    :cond_5
    const/16 v6, 0xa

    if-ne v7, v6, :cond_6

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    const/16 v8, 0xd

    if-ne v7, v8, :cond_9

    .line 212
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v8

    if-lez v8, :cond_7

    .line 213
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 214
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v6, :cond_7

    .line 215
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 226
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_8

    .line 227
    goto :goto_4

    .line 230
    :cond_8
    if-nez v5, :cond_4

    .line 233
    .end local v5    # "len":I
    .end local v7    # "c1":I
    :goto_4
    nop

    .line 234
    move-object v3, v0

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v5

    long-to-int v3, v5

    .line 233
    iput v3, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    goto :goto_6

    .line 221
    .restart local v5    # "len":I
    .restart local v7    # "c1":I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 187
    .end local v4    # "offset":I
    .end local v5    # "len":I
    .end local v7    # "c1":I
    :cond_a
    :goto_5
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 188
    nop

    .line 189
    move-object v3, v0

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v3

    long-to-int v4, v3

    .line 188
    iput v4, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 190
    nop

    .line 238
    :goto_6
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 240
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    goto :goto_7

    .line 179
    :cond_b
    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 180
    new-instance v3, Ljavax/mail/MessageRemovedException;

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can\'t retrieve message #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v5, " in POP3Message.getContentStream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rawcontent":Ljava/io/InputStream;
    .end local p1    # "skipHeader":Z
    throw v3

    .line 158
    .end local v2    # "cache":Lcom/sun/mail/pop3/TempFile;
    .restart local v0    # "rawcontent":Ljava/io/InputStream;
    .restart local p1    # "skipHeader":Z
    :cond_c
    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    move-object v2, v0

    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    .line 256
    if-eqz p1, :cond_d

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    :cond_d
    int-to-long v3, v1

    const-wide/16 v5, -0x1

    .line 255
    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    .line 257
    return-object v0

    .line 158
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "rawcontent":Ljava/io/InputStream;
    .end local p1    # "skipHeader":Z
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 246
    .restart local v0    # "rawcontent":Ljava/io/InputStream;
    .restart local p1    # "skipHeader":Z
    :catch_0
    move-exception v1

    .line 247
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error fetching POP3 content"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 243
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 244
    .local v2, "eex":Ljava/io/EOFException;
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 245
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method private loadHeaders()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 600
    nop

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "fetchContent":Z
    const/4 v1, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v2, :cond_0

    .line 605
    monitor-exit p0

    return-void

    .line 606
    :cond_0
    const/4 v2, 0x0

    .line 607
    .local v2, "hdrs":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    if-nez v3, :cond_2

    .line 608
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v3, v4, v1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 616
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3, v2}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    nop

    .line 618
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 617
    :catchall_0
    move-exception v3

    .line 618
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 619
    nop

    .end local v0    # "fetchContent":Z
    throw v3

    .line 612
    .restart local v0    # "fetchContent":Z
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 613
    nop

    .line 603
    .end local v2    # "hdrs":Ljava/io/InputStream;
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 633
    if-eqz v0, :cond_4

    .line 634
    const/4 v2, 0x0

    .line 636
    .local v2, "cs":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Message;->getContentStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .line 637
    nop

    .line 638
    if-eqz v2, :cond_4

    .line 639
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 642
    .end local v0    # "fetchContent":Z
    .end local v2    # "cs":Ljava/io/InputStream;
    goto :goto_2

    .line 637
    .restart local v0    # "fetchContent":Z
    .restart local v2    # "cs":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    .line 638
    if-eqz v2, :cond_3

    .line 639
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 640
    :cond_3
    throw v3
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 648
    .end local v0    # "fetchContent":Z
    .end local v2    # "cs":Ljava/io/InputStream;
    :cond_4
    :goto_2
    return-void

    .line 603
    .restart local v0    # "fetchContent":Z
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 645
    .end local v0    # "fetchContent":Z
    :catch_0
    move-exception v0

    .line 646
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error loading POP3 headers"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 642
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 643
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 644
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 271
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Message;
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Message;->getRawStream(Z)Ljava/io/InputStream;

    move-result-object v0

    .line 277
    .local v0, "cstream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5}, Lcom/sun/mail/pop3/POP3Folder;->getFileCache()Lcom/sun/mail/pop3/TempFile;

    move-result-object v5

    .line 278
    .local v5, "cache":Lcom/sun/mail/pop3/TempFile;
    if-nez v5, :cond_1

    .line 279
    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v6}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v6

    check-cast v6, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v6, v6, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    if-eqz v6, :cond_2

    .line 280
    :cond_1
    move-object v6, v0

    check-cast v6, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v6, v3, v4, v1, v2}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :cond_2
    monitor-exit p0

    return-object v0

    .line 267
    .end local v0    # "cstream":Ljava/io/InputStream;
    .end local v5    # "cache":Lcom/sun/mail/pop3/TempFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 112
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v0, :cond_0

    .line 115
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    return v0

    .line 112
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 136
    :cond_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :try_start_3
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-gez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->list(I)I

    move-result v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 139
    :cond_2
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 112
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting size"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 141
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 143
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized invalidate(Z)V
    .locals 3
    .param p1, "invalidateHeaders"    # Z

    monitor-enter p0

    .line 303
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->content:[B

    .line 304
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .local v1, "rstream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 309
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Message;
    :catch_0
    move-exception v2

    .line 313
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 317
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 318
    :catch_1
    move-exception v2

    :goto_1
    nop

    .line 321
    :try_start_4
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    .line 323
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 324
    if-eqz p1, :cond_2

    .line 325
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 326
    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    :cond_2
    monitor-exit p0

    return-void

    .line 302
    .end local v1    # "rstream":Ljava/io/InputStream;
    .end local p1    # "invalidateHeaders":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

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
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Message;
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    .end local v0    # "oldFlags":Ljavax/mail/Flags;
    .end local p1    # "newFlags":Ljavax/mail/Flags;
    .end local p2    # "set":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 404
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public top(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 341
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "n":I
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    .restart local p1    # "n":I
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting size"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 344
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 345
    .local v0, "eex":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 346
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ignoreList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 568
    .local v0, "rawcontent":Ljava/io/InputStream;
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 569
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v1, v1, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    if-nez v1, :cond_2

    .line 570
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v1, v1, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v1, v1, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "streaming msg "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 572
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Message;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v1, v2, p1}, Lcom/sun/mail/pop3/Protocol;->retr(ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 573
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 574
    new-instance v1, Ljavax/mail/MessageRemovedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t retrieve message #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in POP3Message.writeTo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_2
    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 579
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 581
    .local v1, "in":Ljava/io/InputStream;
    const/16 v2, 0x4000

    :try_start_1
    new-array v2, v2, [B

    .line 583
    .local v2, "buf":[B
    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v3

    .local v4, "len":I
    if-gtz v3, :cond_3

    .line 585
    .end local v2    # "buf":[B
    .end local v4    # "len":I
    nop

    .line 587
    if-eqz v1, :cond_6

    .line 588
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 589
    goto :goto_3

    :catch_0
    move-exception v2

    .line 591
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 584
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "len":I
    :cond_3
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 585
    .end local v2    # "buf":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v2

    .line 587
    if-eqz v1, :cond_4

    .line 588
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 589
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    .line 590
    :cond_4
    :goto_2
    :try_start_5
    throw v2

    .line 592
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_5
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 593
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 566
    .end local v0    # "rawcontent":Ljava/io/InputStream;
    .end local p1    # "os":Ljava/io/OutputStream;
    .end local p2    # "ignoreList":[Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
