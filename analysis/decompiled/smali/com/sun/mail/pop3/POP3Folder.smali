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

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 75
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
    const-string v2, "DEBUG POP3"

    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Store;->getSession()Ljavax/mail/Session;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

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

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    return-void
.end method

.method private checkReadable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 570
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_1
    return-void
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

    .prologue
    .line 377
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Append not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close(Z)V
    .locals 5
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    .line 259
    :cond_0
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 278
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 283
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 288
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 289
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 290
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 291
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 292
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 294
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    .end local v0    # "i":I
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 262
    .restart local v0    # "i":I
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/pop3/POP3Message;

    .local v2, "m":Lcom/sun/mail/pop3/POP3Message;
    if-eqz v2, :cond_4

    .line 263
    sget-object v3, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 261
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    .line 268
    const-string v4, "Exception deleting messages during close"

    .line 267
    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 284
    .end local v0    # "i":I
    .end local v1    # "ioex":Ljava/io/IOException;
    .end local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catch_1
    move-exception v3

    .line 287
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 288
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 289
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 290
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 291
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 292
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 294
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 244
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 279
    .restart local v0    # "i":I
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/pop3/POP3Message;

    .restart local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    if-eqz v2, :cond_6

    .line 280
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/mail/pop3/POP3Message;->invalidate(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 278
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 286
    .end local v0    # "i":I
    .end local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catchall_1
    move-exception v3

    .line 287
    const/4 v4, 0x0

    :try_start_8
    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 288
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v4, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 289
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 290
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 291
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 292
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v4, :cond_7

    .line 293
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 294
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    .line 296
    :cond_7
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public create(I)Z
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .locals 6
    .param p1, "f"    # Ljavax/mail/Folder;
    .param p2, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "m":Lcom/sun/mail/pop3/POP3Message;
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-object v1, v4, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 357
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_0

    .line 359
    const/4 v4, 0x2

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 360
    .local v3, "o":[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v3    # "o":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 366
    new-instance v2, Lcom/sun/mail/pop3/POP3Message;

    .end local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    invoke-direct {v2, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    .line 367
    .restart local v2    # "m":Lcom/sun/mail/pop3/POP3Message;
    :cond_1
    return-object v2

    .line 361
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public delete(Z)Z
    .locals 2
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "delete"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exists()Z
    .locals 1

    .prologue
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

    .prologue
    .line 390
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 8
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 405
    iget-boolean v6, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v6, v6, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    if-eqz v6, :cond_2

    .line 406
    sget-object v6, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p2, v6}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .local v5, "uids":[Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v6, v5}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 446
    .end local v5    # "uids":[Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 419
    .restart local v5    # "uids":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "eex":Ljava/io/EOFException;
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0, v6}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 421
    new-instance v6, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    .end local v0    # "eex":Ljava/io/EOFException;
    .end local v5    # "uids":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 422
    .restart local v5    # "uids":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 423
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "error getting UIDL"

    invoke-direct {v6, v7, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 425
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-lt v2, v6, :cond_3

    .line 431
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 433
    .end local v2    # "i":I
    .end local v5    # "uids":[Ljava/lang/String;
    :cond_2
    sget-object v6, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v6, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ge v2, v6, :cond_0

    .line 436
    :try_start_4
    aget-object v4, p1, v2

    check-cast v4, Lcom/sun/mail/pop3/POP3Message;

    .line 438
    .local v4, "msg":Lcom/sun/mail/pop3/POP3Message;
    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 440
    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Message;->getSize()I
    :try_end_4
    .catch Ljavax/mail/MessageRemovedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 434
    .end local v4    # "msg":Lcom/sun/mail/pop3/POP3Message;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    .restart local v5    # "uids":[Ljava/lang/String;
    :cond_3
    :try_start_5
    aget-object v6, v5, v2

    if-nez v6, :cond_4

    .line 425
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_4
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Message;

    .line 429
    .local v3, "m":Lcom/sun/mail/pop3/POP3Message;
    aget-object v6, v5, v2

    iput-object v6, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 441
    .end local v3    # "m":Lcom/sun/mail/pop3/POP3Message;
    .end local v5    # "uids":[Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
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

    .prologue
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

    .prologue
    .line 170
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "not a directory"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
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

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 346
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    .local v0, "m":Lcom/sun/mail/pop3/POP3Message;
    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_0
    monitor-exit p0

    return-object v0

    .line 341
    .end local v0    # "m":Lcom/sun/mail/pop3/POP3Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, -0x1

    .line 336
    :goto_0
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

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v0, v1}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 485
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 500
    iget v8, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v6, v8, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    .local v6, "sizes":[I
    const/4 v0, 0x0

    .line 502
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 504
    .local v2, "lis":Lcom/sun/mail/util/LineInputStream;
    :try_start_1
    iget-object v8, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v8}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v0

    .line 505
    new-instance v3, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v3, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .local v3, "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 521
    if-eqz v3, :cond_1

    .line 522
    :try_start_3
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 525
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    .line 526
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .line 529
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v6

    .line 509
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_3
    :try_start_5
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 510
    .local v7, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 511
    .local v4, "msgnum":I
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 512
    .local v5, "size":I
    if-lez v4, :cond_0

    iget v8, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v4, v8, :cond_0

    .line 513
    add-int/lit8 v8, v4, -0x1

    aput v5, v6, v8
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 514
    .end local v4    # "msgnum":I
    .end local v5    # "size":I
    .end local v7    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 517
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catch_1
    move-exception v8

    .line 521
    :goto_3
    if-eqz v2, :cond_4

    .line 522
    :try_start_6
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 525
    :cond_4
    :goto_4
    if-eqz v0, :cond_2

    .line 526
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 527
    :catch_2
    move-exception v8

    goto :goto_2

    .line 519
    :catchall_0
    move-exception v8

    .line 521
    :goto_5
    if-eqz v2, :cond_5

    .line 522
    :try_start_8
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 525
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 526
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 528
    :cond_6
    :goto_7
    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 499
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .end local v6    # "sizes":[I
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 527
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v6    # "sizes":[I
    :catch_3
    move-exception v8

    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_2

    .line 523
    .end local v1    # "line":Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_4

    :catch_5
    move-exception v9

    goto :goto_6

    .line 527
    :catch_6
    move-exception v9

    goto :goto_7

    .line 523
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catch_7
    move-exception v8

    goto :goto_1

    .line 519
    .end local v1    # "line":Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_5

    .line 517
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :catch_8
    move-exception v8

    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_3

    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    :cond_7
    move-object v2, v3

    .end local v3    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    goto :goto_2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 458
    instance-of v4, p1, Lcom/sun/mail/pop3/POP3Message;

    if-nez v4, :cond_0

    .line 459
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "message is not a POP3Message"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 460
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/pop3/POP3Message;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .local v3, "m":Lcom/sun/mail/pop3/POP3Message;
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v4, v4, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_1

    .line 463
    const/4 v4, 0x0

    .line 466
    :goto_0
    monitor-exit p0

    return-object v4

    .line 464
    :cond_1
    :try_start_3
    iget-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v5, "UNKNOWN"

    if-ne v4, v5, :cond_2

    .line 465
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 466
    :cond_2
    iget-object v4, v3, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "eex":Ljava/io/EOFException;
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {p0, v4}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 469
    new-instance v4, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v4

    .line 470
    .end local v1    # "eex":Ljava/io/EOFException;
    :catch_1
    move-exception v2

    .line 471
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "error getting UIDL"

    invoke-direct {v4, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 314
    :goto_0
    monitor-exit p0

    return v1

    .line 303
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NOOP failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ioex":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 308
    :catch_1
    move-exception v2

    goto :goto_0

    .line 314
    .end local v0    # "ioex":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .restart local v0    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 300
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
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

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 544
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "m"    # Ljavax/mail/Message;

    .prologue
    .line 597
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    .line 598
    return-void
.end method

.method public declared-synchronized open(I)V
    .locals 6
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    .line 204
    iget-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    if-nez v3, :cond_0

    .line 205
    new-instance v3, Ljavax/mail/FolderNotFoundException;

    const-string v4, "folder is not INBOX"

    invoke-direct {v3, p0, v4}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 208
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 209
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v2

    .line 210
    .local v2, "s":Lcom/sun/mail/pop3/Status;
    iget v3, v2, Lcom/sun/mail/pop3/Status;->total:I

    iput v3, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    .line 211
    iget v3, v2, Lcom/sun/mail/pop3/Status;->size:I

    iput v3, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    .line 212
    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    .line 213
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 215
    :try_start_2
    new-instance v3, Lcom/sun/mail/pop3/TempFile;

    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-object v4, v4, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    invoke-direct {v3, v4}, Lcom/sun/mail/pop3/TempFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :cond_1
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    :try_start_4
    new-instance v3, Ljava/util/Vector;

    iget v4, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    .line 237
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:Ljava/util/Vector;

    iget v4, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    invoke-virtual {v3, v4}, Ljava/util/Vector;->setSize(I)V

    .line 238
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 240
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "failed to create file cache"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "s":Lcom/sun/mail/pop3/Status;
    :catch_1
    move-exception v1

    .line 224
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v3, :cond_2

    .line 225
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 229
    :cond_2
    const/4 v3, 0x0

    :try_start_7
    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 230
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 232
    :goto_0
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Open failed"

    invoke-direct {v3, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 226
    :catch_2
    move-exception v3

    .line 229
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 230
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_0

    .line 228
    :catchall_1
    move-exception v3

    .line 229
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 230
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v4, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 231
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "renameTo"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
