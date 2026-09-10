.class public Lcom/sun/mail/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "POP3Folder.java"


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private volatile fileCache:Lcom/sun/mail/pop3/TempFile;

.field logger:Lcom/sun/mail/util/MailLogger;

.field private message_cache:Ljava/util/Vector;

.field private name:Ljava/lang/String;

.field private volatile opened:Z

.field private volatile port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private store:Lcom/sun/mail/pop3/POP3Store;

.field private total:I


# direct methods
.method protected constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .locals 4
    .param p1, "store"    # Lcom/sun/mail/pop3/POP3Store;
    .param p2, "name"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 76
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 78
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    .line 85
    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    .line 87
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 89
    :cond_0
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Store;->getSession()Ljavax/mail/Session;

    move-result-object v2

    const-string v3, "DEBUG POP3"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    .line 89
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 91
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 563
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_0

    .line 565
    return-void

    .line 564
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 557
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_0

    .line 559
    return-void

    .line 558
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkReadable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 569
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 571
    :cond_0
    return-void

    .line 570
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .locals 2
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 377
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Append not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close(Z)V
    .locals 8
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 256
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 257
    :try_start_2
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v3

    goto/16 :goto_5

    .line 284
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 259
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget v3, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 261
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_3

    .line 262
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Message;

    move-object v5, v4

    .local v5, "m":Lcom/sun/mail/pop3/POP3Message;
    if-eqz v4, :cond_2

    .line 263
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v5, v4}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 265
    :try_start_3
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v6}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    goto :goto_2

    :catch_1
    move-exception v4

    .line 267
    .local v4, "ioex":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Ljavax/mail/MessagingException;

    .line 268
    const-string v7, "Exception deleting messages during close"

    .line 269
    nop

    .line 267
    invoke-direct {v6, v7, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "expunge":Z
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    .end local v4    # "ioex":Ljava/io/IOException;
    .restart local p1    # "expunge":Z
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v3    # "i":I
    .end local v5    # "m":Lcom/sun/mail/pop3/POP3Message;
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 283
    .end local v3    # "i":I
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 284
    nop

    .line 287
    :try_start_6
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 288
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 289
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 290
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 291
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 292
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 294
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    .line 279
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    .restart local v3    # "i":I
    :cond_4
    :try_start_7
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Message;

    move-object v5, v4

    .restart local v5    # "m":Lcom/sun/mail/pop3/POP3Message;
    if-eqz v4, :cond_5

    .line 280
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/sun/mail/pop3/POP3Message;->invalidate(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 278
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 286
    .end local v3    # "i":I
    .end local v5    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catchall_1
    move-exception v3

    .line 287
    :goto_5
    :try_start_8
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 288
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v4, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 289
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 290
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 291
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 292
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 294
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    .line 296
    :cond_6
    throw v3

    .line 284
    :catch_2
    move-exception v3

    .line 287
    :goto_6
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 288
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 289
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 290
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 291
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 292
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 294
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 297
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 243
    .end local p1    # "expunge":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public create(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .locals 5
    .param p1, "f"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "m":Lcom/sun/mail/pop3/POP3Message;
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-object v1, v1, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 357
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    .line 359
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 360
    .local v2, "o":[Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 361
    .end local v2    # "o":[Ljava/lang/Object;
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 365
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 366
    new-instance v2, Lcom/sun/mail/pop3/POP3Message;

    invoke-direct {v2, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    move-object v0, v2

    .line 367
    :cond_1
    return-object v0
.end method

.method public delete(Z)Z
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 4
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 404
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 405
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    if-eqz v0, :cond_3

    .line 406
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .local v0, "uids":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1, v0}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 418
    monitor-exit p0

    return-void

    .line 425
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 431
    .end local v1    # "i":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    goto :goto_2

    .line 426
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    .line 427
    goto :goto_1

    .line 428
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/pop3/POP3Message;

    .line 429
    .local v2, "m":Lcom/sun/mail/pop3/POP3Message;
    aget-object v3, v0, v1

    iput-object v3, v2, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 425
    .end local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "i":I
    :catch_0
    move-exception v1

    .line 423
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting UIDL"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 419
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 420
    .local v1, "eex":Ljava/io/EOFException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 421
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 433
    .end local v0    # "uids":[Ljava/lang/String;
    .end local v1    # "eex":Ljava/io/EOFException;
    :cond_3
    :goto_2
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v1, :cond_4

    goto :goto_5

    .line 436
    :cond_4
    :try_start_3
    aget-object v1, p1, v0

    check-cast v1, Lcom/sun/mail/pop3/POP3Message;

    .line 438
    .local v1, "msg":Lcom/sun/mail/pop3/POP3Message;
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 440
    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Message;->getSize()I
    :try_end_3
    .catch Ljavax/mail/MessageRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 441
    .end local v1    # "msg":Lcom/sun/mail/pop3/POP3Message;
    :catch_2
    move-exception v1

    :goto_4
    nop

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 446
    .end local v0    # "i":I
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 403
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 551
    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 553
    return-void
.end method

.method getFileCache()Lcom/sun/mail/pop3/TempFile;
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 3
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 346
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    move-object v1, v0

    .local v1, "m":Lcom/sun/mail/pop3/POP3Message;
    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    move-object v1, v0

    .line 348
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 340
    .end local v1    # "m":Lcom/sun/mail/pop3/POP3Message;
    .end local p1    # "msgno":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 333
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 335
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 336
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 332
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 2

    .line 102
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v0, v1}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    .line 324
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method getProtocol()Lcom/sun/mail/pop3/Protocol;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 588
    .local v0, "p":Lcom/sun/mail/pop3/Protocol;
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 590
    return-object v0
.end method

.method public getSeparator()C
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 484
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 485
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 483
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 499
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 500
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v0, v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    .local v0, "sizes":[I
    const/4 v1, 0x0

    .line 502
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 504
    .local v2, "lis":Lcom/sun/mail/util/LineInputStream;
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 505
    new-instance v3, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v3, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 507
    nop

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 517
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 521
    nop

    .line 522
    :try_start_2
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    goto :goto_1

    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :catch_0
    move-exception v3

    .line 525
    :goto_1
    if-eqz v1, :cond_5

    .line 526
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    :goto_2
    goto :goto_a

    :catch_1
    move-exception v3

    goto :goto_2

    .line 509
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 510
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 511
    .local v5, "msgnum":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 512
    .local v6, "size":I
    if-lez v5, :cond_0

    iget v7, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v5, v7, :cond_0

    .line 513
    add-int/lit8 v7, v5, -0x1

    aput v6, v0, v7
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "msgnum":I
    .end local v6    # "size":I
    goto :goto_3

    .line 514
    :catch_2
    move-exception v3

    :goto_3
    goto :goto_0

    .line 519
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 521
    if-eqz v2, :cond_2

    .line 522
    :try_start_5
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 523
    :goto_4
    goto :goto_5

    :catch_3
    move-exception v4

    goto :goto_4

    .line 525
    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    .line 526
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 527
    :goto_6
    goto :goto_7

    :catch_4
    move-exception v4

    goto :goto_6

    .line 528
    :cond_3
    :goto_7
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 517
    :catch_5
    move-exception v3

    .line 521
    if-eqz v2, :cond_4

    .line 522
    :try_start_8
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 523
    :goto_8
    goto :goto_9

    :catch_6
    move-exception v3

    goto :goto_8

    .line 525
    :cond_4
    :goto_9
    if-eqz v1, :cond_5

    .line 526
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 529
    :cond_5
    :goto_a
    monitor-exit p0

    return-object v0

    .line 498
    .end local v0    # "sizes":[I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 458
    instance-of v0, p1, Lcom/sun/mail/pop3/POP3Message;

    if-eqz v0, :cond_2

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    .local v0, "m":Lcom/sun/mail/pop3/POP3Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v1, v1, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 463
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 464
    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    if-ne v1, v2, :cond_1

    .line 465
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 466
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :cond_1
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "error getting UIDL"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 467
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 468
    .local v1, "eex":Ljava/io/EOFException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 469
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 459
    .end local v0    # "m":Lcom/sun/mail/pop3/POP3Message;
    .end local v1    # "eex":Ljava/io/EOFException;
    :cond_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "message is not a POP3Message"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    .end local p1    # "msg":Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 3

    monitor-enter p0

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 301
    monitor-exit p0

    return v1

    .line 303
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 314
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 304
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NOOP failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 305
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :goto_0
    goto :goto_1

    .line 310
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 308
    :catch_1
    move-exception v2

    goto :goto_0

    .line 311
    :goto_1
    monitor-exit p0

    return v1

    .line 299
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 122
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized listCommand()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 544
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 542
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "m"    # Ljavax/mail/Message;

    .line 597
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .line 598
    return-void
.end method

.method public declared-synchronized open(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    .line 204
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 209
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v0

    .line 210
    .local v0, "s":Lcom/sun/mail/pop3/Status;
    iget v1, v0, Lcom/sun/mail/pop3/Status;->total:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    .line 211
    iget v1, v0, Lcom/sun/mail/pop3/Status;->size:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    .line 212
    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    .line 213
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v1, v1, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 215
    :try_start_2
    new-instance v1, Lcom/sun/mail/pop3/TempFile;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-object v2, v2, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    invoke-direct {v1, v2}, Lcom/sun/mail/pop3/TempFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Folder;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "failed to create file cache"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    nop

    .end local p1    # "mode":I
    throw v1

    .line 221
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local p1    # "mode":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    .end local v0    # "s":Lcom/sun/mail/pop3/Status;
    nop

    .line 236
    :try_start_4
    new-instance v0, Ljava/util/Vector;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 237
    iget v2, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->setSize(I)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 240
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 241
    monitor-exit p0

    return-void

    .line 222
    :catch_1
    move-exception v0

    .line 224
    .local v0, "ioex":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    :cond_1
    :try_start_6
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 230
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    :goto_1
    invoke-virtual {v1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_2

    .line 228
    :catchall_0
    move-exception v2

    .line 229
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 230
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 231
    throw v2

    .line 226
    :catch_2
    move-exception v2

    .line 229
    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 230
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    goto :goto_1

    .line 232
    :goto_2
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Open failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 205
    .end local v0    # "ioex":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    const-string v1, "folder is not INBOX"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    .end local p1    # "mode":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "renameTo"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
