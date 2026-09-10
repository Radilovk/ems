.class public Lcom/sun/mail/imap/DefaultFolder;
.super Lcom/sun/mail/imap/IMAPFolder;
.source "DefaultFolder.java"


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/IMAPStore;)V
    .locals 3
    .param p1, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .prologue
    .line 58
    const-string v0, ""

    const v1, 0xffff

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/DefaultFolder;->exists:Z

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/DefaultFolder;->type:I

    .line 61
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
    .line 130
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot append to Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 120
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot delete Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot expunge Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 115
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    const v1, 0xffff

    invoke-virtual {v0, p1, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->fullName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNewMessages()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    const/4 v3, 0x0

    .line 75
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    new-instance v4, Lcom/sun/mail/imap/DefaultFolder$1;

    invoke-direct {v4, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$1;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v3, v0

    .line 81
    if-nez v3, :cond_1

    .line 82
    const/4 v4, 0x0

    new-array v1, v4, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-object v1

    .line 84
    :cond_1
    :try_start_1
    array-length v4, v3

    new-array v1, v4, [Lcom/sun/mail/imap/IMAPFolder;

    .line 85
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    const/4 v3, 0x0

    .line 94
    .local v3, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    new-instance v4, Lcom/sun/mail/imap/DefaultFolder$2;

    invoke-direct {v4, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$2;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v3, v0

    .line 100
    if-nez v3, :cond_1

    .line 101
    const/4 v4, 0x0

    new-array v1, v4, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-object v1

    .line 103
    :cond_1
    :try_start_1
    array-length v4, v3

    new-array v1, v4, [Lcom/sun/mail/imap/IMAPFolder;

    .line 104
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
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
    .line 125
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot rename Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
