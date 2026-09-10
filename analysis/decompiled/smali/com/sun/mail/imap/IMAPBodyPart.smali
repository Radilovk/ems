.class public Lcom/sun/mail/imap/IMAPBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "IMAPBodyPart.java"

# interfaces
.implements Lcom/sun/mail/util/ReadableMime;


# static fields
.field private static final decodeFileName:Z


# instance fields
.field private bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field private description:Ljava/lang/String;

.field private headersLoaded:Z

.field private message:Lcom/sun/mail/imap/IMAPMessage;

.field private sectionId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "mail.mime.decodefilename"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    sput-boolean v0, Lcom/sun/mail/imap/IMAPBodyPart;->decodeFileName:Z

    .line 73
    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .locals 4
    .param p1, "bs"    # Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/sun/mail/imap/IMAPMessage;

    .prologue
    .line 76
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z

    .line 77
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 78
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    .line 81
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 82
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private getHeaderStream()Ljava/io/InputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v9

    if-nez v9, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 219
    :cond_0
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 221
    :try_start_0
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v6

    .line 224
    .local v6, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 226
    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 227
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v8

    .line 228
    .local v8, "seqnum":I
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".MIME"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 230
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-nez v0, :cond_1

    .line 231
    new-instance v9, Ljavax/mail/MessagingException;

    const-string v11, "Failed to fetch headers"

    invoke-direct {v9, v11}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v8    # "seqnum":I
    :catch_0
    move-exception v3

    .line 262
    .local v3, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_1
    new-instance v9, Ljavax/mail/FolderClosedException;

    .line 263
    iget-object v11, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v11}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 262
    invoke-direct {v9, v11, v12}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v9

    .line 219
    .end local v3    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 233
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .restart local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v8    # "seqnum":I
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 234
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    if-nez v1, :cond_2

    .line 235
    new-instance v9, Ljavax/mail/MessagingException;

    const-string v11, "Failed to fetch headers"

    invoke-direct {v9, v11}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v8    # "seqnum":I
    :catch_1
    move-exception v7

    .line 265
    .local v7, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v9, Ljavax/mail/MessagingException;

    invoke-virtual {v7}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 236
    .end local v7    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v8    # "seqnum":I
    :cond_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v8    # "seqnum":I
    :goto_0
    return-object v1

    .line 241
    :cond_3
    :try_start_4
    new-instance v2, Lcom/sun/mail/util/SharedByteArrayOutputStream;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lcom/sun/mail/util/SharedByteArrayOutputStream;-><init>(I)V

    .line 242
    .local v2, "bos":Lcom/sun/mail/util/SharedByteArrayOutputStream;
    new-instance v5, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v5, v2}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    .local v5, "los":Lcom/sun/mail/util/LineOutputStream;
    :try_start_5
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v4

    .line 247
    .local v4, "hdrLines":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_4

    .line 251
    invoke-virtual {v5}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    :try_start_6
    invoke-virtual {v5}, Lcom/sun/mail/util/LineOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 259
    .end local v4    # "hdrLines":Ljava/util/Enumeration;
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 248
    .restart local v4    # "hdrLines":Ljava/util/Enumeration;
    :cond_4
    :try_start_9
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 252
    .end local v4    # "hdrLines":Ljava/util/Enumeration;
    :catch_2
    move-exception v9

    .line 256
    :try_start_a
    invoke-virtual {v5}, Lcom/sun/mail/util/LineOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 257
    :catch_3
    move-exception v9

    goto :goto_2

    .line 254
    :catchall_1
    move-exception v9

    .line 256
    :try_start_b
    invoke-virtual {v5}, Lcom/sun/mail/util/LineOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 258
    :goto_3
    :try_start_c
    throw v9
    :try_end_c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 257
    :catch_4
    move-exception v11

    goto :goto_3

    .restart local v4    # "hdrLines":Ljava/util/Enumeration;
    :catch_5
    move-exception v9

    goto :goto_2
.end method

.method private declared-synchronized loadHeaders()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    .line 437
    :goto_0
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v6, :cond_1

    .line 383
    new-instance v6, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v6}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 388
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 390
    :try_start_2
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 393
    .local v3, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 395
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 396
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    .line 397
    .local v5, "seqnum":I
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".MIME"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 399
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    if-nez v0, :cond_2

    .line 400
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v8, "Failed to fetch headers"

    invoke-direct {v6, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "seqnum":I
    :catch_0
    move-exception v2

    .line 430
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_3
    new-instance v6, Ljavax/mail/FolderClosedException;

    .line 431
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 430
    invoke-direct {v6, v8, v9}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6

    .line 388
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 376
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 402
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "seqnum":I
    :cond_2
    :try_start_5
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 403
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    if-nez v1, :cond_3

    .line 404
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v8, "Failed to fetch headers"

    invoke-direct {v6, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 432
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "seqnum":I
    :catch_1
    move-exception v4

    .line 433
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v6, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 406
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v5    # "seqnum":I
    :cond_3
    :try_start_7
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v6, v1}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;)V
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 388
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "seqnum":I
    :cond_4
    :goto_1
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 436
    const/4 v6, 0x1

    :try_start_9
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headersLoaded:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 415
    :cond_5
    :try_start_a
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v8, "Content-Type"

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v8, "Content-Transfer-Encoding"

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v9, v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v6, v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 420
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v8, "Content-Description"

    .line 421
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v9, v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    .line 420
    invoke-virtual {v6, v8, v9}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_6
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v6, v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 424
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v8, "Content-ID"

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v9, v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_7
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v6, v6, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 427
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    const-string v8, "Content-MD5"

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v9, v9, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1
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
    .line 330
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

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
    .line 355
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

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
    .line 359
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 360
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

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
    .line 338
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 339
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "is":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->getPeek()Z

    move-result v6

    .line 176
    .local v6, "pk":Z
    iget-object v9, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 178
    :try_start_0
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 181
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 183
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 184
    new-instance v3, Lcom/sun/mail/imap/IMAPInputStream;

    iget-object v10, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    .line 185
    iget-object v12, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v12}, Lcom/sun/mail/imap/IMAPMessage;->ignoreBodyStructureSize()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 184
    :goto_0
    invoke-direct {v3, v10, v11, v8, v6}, Lcom/sun/mail/imap/IMAPInputStream;-><init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v3

    .line 208
    :goto_1
    return-object v8

    .line 185
    :cond_0
    :try_start_2
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v8, v8, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    goto :goto_0

    .line 189
    :cond_1
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v7

    .line 191
    .local v7, "seqnum":I
    if-eqz v6, :cond_2

    .line 192
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    .line 195
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_2
    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    .line 176
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    if-nez v3, :cond_3

    .line 206
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v9, "No content"

    invoke-direct {v8, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 194
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_2
    :try_start_4
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    goto :goto_2

    .line 197
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v7    # "seqnum":I
    :catch_0
    move-exception v1

    .line 198
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    new-instance v8, Ljavax/mail/FolderClosedException;

    .line 199
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v10}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 198
    invoke-direct {v8, v10, v11}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v8

    .line 176
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 200
    :catch_1
    move-exception v5

    .line 201
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v8, Ljavax/mail/MessagingException;

    invoke-virtual {v5}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v7    # "seqnum":I
    :cond_3
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    move-object v8, v3

    .line 208
    goto :goto_1

    .line 176
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_4

    :cond_4
    move-object v3, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Ljavax/activation/DataHandler;

    .line 290
    new-instance v1, Lcom/sun/mail/imap/IMAPMultipartDataSource;

    .line 291
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    .line 290
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sun/mail/imap/IMAPMultipartDataSource;-><init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-direct {v0, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 289
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 303
    :cond_0
    :goto_0
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 293
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->isNested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isREV1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljavax/activation/DataHandler;

    .line 295
    new-instance v1, Lcom/sun/mail/imap/IMAPNestedMessage;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->message:Lcom/sun/mail/imap/IMAPMessage;

    .line 296
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 297
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    .line 298
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPBodyPart;->sectionId:Ljava/lang/String;

    .line 295
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/mail/imap/IMAPNestedMessage;-><init>(Lcom/sun/mail/imap/IMAPMessage;Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Lcom/sun/mail/imap/protocol/ENVELOPE;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->dh:Ljavax/activation/DataHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    .line 143
    :goto_0
    return-object v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 135
    const/4 v1, 0x0

    goto :goto_0

    .line 138
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPBodyPart;->description:Ljava/lang/String;

    goto :goto_1
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "filename":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_1
    sget-boolean v2, Lcom/sun/mail/imap/IMAPBodyPart;->decodeFileName:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 159
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :cond_2
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Can\'t decode filename"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
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
    .line 319
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 320
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    return v0
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
    .line 365
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 366
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

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
    .line 344
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 345
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMimeStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/io/SequenceInputStream;

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->getHeaderStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

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
    .line 371
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 372
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

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
    .line 350
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPBodyPart;->loadHeaders()V

    .line 351
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPBodyPart;->bs:Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iget v0, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    return v0
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
    .line 334
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 2
    .param p1, "content"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 2
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 325
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "IMAPBodyPart is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected updateHeaders()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
