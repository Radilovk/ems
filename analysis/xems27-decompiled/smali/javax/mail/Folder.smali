.class public abstract Ljavax/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# static fields
.field public static final HOLDS_FOLDERS:I = 0x2

.field public static final HOLDS_MESSAGES:I = 0x1

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x2


# instance fields
.field private volatile connectionListeners:Ljava/util/Vector;

.field private volatile folderListeners:Ljava/util/Vector;

.field private volatile messageChangedListeners:Ljava/util/Vector;

.field private volatile messageCountListeners:Ljava/util/Vector;

.field protected mode:I

.field private final q:Ljavax/mail/EventQueue;

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .locals 4
    .param p1, "store"    # Ljavax/mail/Store;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1394
    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1475
    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1563
    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 144
    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    .line 147
    invoke-virtual {p1}, Ljavax/mail/Store;->getSession()Ljavax/mail/Session;

    move-result-object v0

    .line 149
    .local v0, "session":Ljavax/mail/Session;
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "mail.event.scope"

    const-string v3, "folder"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    nop

    .line 151
    .local v1, "scope":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "mail.event.executor"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 150
    nop

    .line 152
    .local v2, "executor":Ljava/util/concurrent/Executor;
    const-string v3, "application"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-static {v2}, Ljavax/mail/EventQueue;->getApplicationEventQueue(Ljava/util/concurrent/Executor;)Ljavax/mail/EventQueue;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    goto :goto_0

    .line 154
    :cond_0
    const-string v3, "session"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v0}, Ljavax/mail/Session;->getEventQueue()Ljavax/mail/EventQueue;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    goto :goto_0

    .line 156
    :cond_1
    const-string v3, "store"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    invoke-virtual {p1}, Ljavax/mail/Store;->getEventQueue()Ljavax/mail/EventQueue;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    goto :goto_0

    .line 159
    :cond_2
    new-instance v3, Ljavax/mail/EventQueue;

    invoke-direct {v3, v2}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v3, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    .line 160
    :goto_0
    return-void
.end method

.method private queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .param p2, "vector"    # Ljava/util/Vector;

    .line 1629
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 1630
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1631
    return-void
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    monitor-enter p0

    .line 1340
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1341
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1342
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    monitor-exit p0

    return-void

    .line 1339
    .end local p1    # "l":Ljavax/mail/event/ConnectionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1407
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1408
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    monitor-exit p0

    return-void

    .line 1405
    .end local p1    # "l":Ljavax/mail/event/FolderListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageChangedListener;

    monitor-enter p0

    .line 1576
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1577
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 1578
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    monitor-exit p0

    return-void

    .line 1575
    .end local p1    # "l":Ljavax/mail/event/MessageChangedListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    monitor-enter p0

    .line 1487
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1488
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1489
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    monitor-exit p0

    return-void

    .line 1486
    .end local p1    # "l":Ljavax/mail/event/MessageCountListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract appendMessages([Ljavax/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 3
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1192
    invoke-virtual {p2}, Ljavax/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p2, p1}, Ljavax/mail/Folder;->appendMessages([Ljavax/mail/Message;)V

    .line 1198
    return-void

    .line 1193
    :cond_0
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    nop

    .line 1193
    invoke-direct {v0, v1, p2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljava/lang/String;Ljavax/mail/Folder;)V

    throw v0
.end method

.method public abstract create(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 0
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1035
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1634
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1635
    iget-object v0, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0}, Ljavax/mail/EventQueue;->terminateQueue()V

    .line 1636
    return-void
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 829
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 830
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 832
    :cond_0
    const/4 v0, 0x0

    .line 833
    .local v0, "deleted":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    .local v1, "total":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 843
    .end local v2    # "i":I
    monitor-exit p0

    return v0

    .line 836
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_2
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 837
    add-int/lit8 v0, v0, 0x1

    .line 838
    goto :goto_1

    .end local p0    # "this":Ljavax/mail/Folder;
    :catch_0
    move-exception v3

    .line 834
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    .end local v0    # "deleted":I
    .end local v1    # "total":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 967
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0

    .line 970
    .local v0, "total":I
    new-array v1, v0, [Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .local v1, "msgs":[Ljavax/mail/Message;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v0, :cond_0

    .line 973
    .end local v2    # "i":I
    monitor-exit p0

    return-object v1

    .line 972
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v3, v2, -0x1

    :try_start_1
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v1, v3

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .end local v0    # "total":I
    .end local v1    # "msgs":[Ljavax/mail/Message;
    .end local v2    # "i":I
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages(II)[Ljavax/mail/Message;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 907
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    .local v0, "msgs":[Ljavax/mail/Message;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-le v1, p2, :cond_0

    .line 910
    .end local v1    # "i":I
    monitor-exit p0

    return-object v0

    .line 909
    .restart local v1    # "i":I
    :cond_0
    sub-int v2, v1, p1

    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "msgs":[Ljavax/mail/Message;
    .end local v1    # "i":I
    .end local p0    # "this":Ljavax/mail/Folder;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages([I)[Ljavax/mail/Message;
    .locals 4
    .param p1, "msgnums"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 937
    :try_start_0
    array-length v0, p1

    .line 938
    .local v0, "len":I
    new-array v1, v0, [Ljavax/mail/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    .local v1, "msgs":[Ljavax/mail/Message;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 941
    .end local v2    # "i":I
    monitor-exit p0

    return-object v1

    .line 940
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    .end local v0    # "len":I
    .end local v1    # "msgs":[Ljavax/mail/Message;
    .end local v2    # "i":I
    .end local p0    # "this":Ljavax/mail/Folder;
    .end local p1    # "msgnums":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMode()I
    .locals 2

    monitor-enter p0

    .line 666
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget v0, p0, Ljavax/mail/Folder;->mode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 667
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 737
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 738
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 740
    :cond_0
    const/4 v0, 0x0

    .line 741
    .local v0, "newmsgs":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    .local v1, "total":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 751
    .end local v2    # "i":I
    monitor-exit p0

    return v0

    .line 744
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_2
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 745
    add-int/lit8 v0, v0, 0x1

    .line 746
    goto :goto_1

    .end local p0    # "this":Ljavax/mail/Folder;
    :catch_0
    move-exception v3

    .line 742
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    .end local v0    # "newmsgs":I
    .end local v1    # "total":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getParent()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getPermanentFlags()Ljavax/mail/Flags;
.end method

.method public abstract getSeparator()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getStore()Ljavax/mail/Store;
    .locals 1

    .line 235
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-object v0
.end method

.method public abstract getType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getURLName()Ljavax/mail/URLName;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Store;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 194
    .local v0, "storeURL":Ljavax/mail/URLName;
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "fullname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v2, "encodedName":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_0
    new-instance v10, Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v0}, Ljavax/mail/URLName;->getPort()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-virtual {v0}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 225
    const/4 v9, 0x0

    .line 222
    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 783
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 784
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 786
    :cond_0
    const/4 v0, 0x0

    .line 787
    .local v0, "unread":I
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    .local v1, "total":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-le v2, v1, :cond_1

    .line 797
    .end local v2    # "i":I
    monitor-exit p0

    return v0

    .line 790
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_2
    .catch Ljavax/mail/MessageRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 791
    add-int/lit8 v0, v0, 0x1

    .line 792
    goto :goto_1

    .end local p0    # "this":Ljavax/mail/Folder;
    :catch_0
    move-exception v3

    .line 788
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    .end local v0    # "unread":I
    .end local v1    # "total":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract hasNewMessages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public isSubscribed()Z
    .locals 1

    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public list()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 350
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public listSubscribed()[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 368
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method protected notifyConnectionListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1374
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1375
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 1376
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1389
    .end local v0    # "e":Ljavax/mail/event/ConnectionEvent;
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1390
    iget-object v0, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0}, Ljavax/mail/EventQueue;->terminateQueue()V

    .line 1391
    :cond_1
    return-void
.end method

.method protected notifyFolderListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1441
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1442
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p0, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 1443
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1445
    .end local v0    # "e":Ljavax/mail/event/FolderEvent;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p1, p0}, Ljavax/mail/Store;->notifyFolderListeners(ILjavax/mail/Folder;)V

    .line 1446
    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    .locals 2
    .param p1, "folder"    # Ljavax/mail/Folder;

    .line 1466
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1467
    new-instance v0, Ljavax/mail/event/FolderEvent;

    .line 1468
    const/4 v1, 0x3

    .line 1467
    invoke-direct {v0, p0, p0, p1, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 1469
    .local v0, "e":Ljavax/mail/event/FolderEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1471
    .end local v0    # "e":Ljavax/mail/event/FolderEvent;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p0, p1}, Ljavax/mail/Store;->notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V

    .line 1472
    return-void
.end method

.method protected notifyMessageAddedListeners([Ljavax/mail/Message;)V
    .locals 3
    .param p1, "msgs"    # [Ljavax/mail/Message;

    .line 1522
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1523
    return-void

    .line 1525
    :cond_0
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    .line 1526
    nop

    .line 1527
    const/4 v1, 0x1

    .line 1528
    const/4 v2, 0x0

    .line 1529
    nop

    .line 1525
    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1531
    .local v0, "e":Ljavax/mail/event/MessageCountEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1532
    return-void
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljavax/mail/Message;

    .line 1610
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1611
    return-void

    .line 1613
    :cond_0
    new-instance v0, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    .line 1614
    .local v0, "e":Ljavax/mail/event/MessageChangedEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1615
    return-void
.end method

.method protected notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    .locals 2
    .param p1, "removed"    # Z
    .param p2, "msgs"    # [Ljavax/mail/Message;

    .line 1551
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1552
    return-void

    .line 1554
    :cond_0
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    .line 1555
    nop

    .line 1556
    const/4 v1, 0x2

    .line 1557
    nop

    .line 1558
    nop

    .line 1554
    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1559
    .local v0, "e":Ljavax/mail/event/MessageCountEvent;
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1560
    return-void
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    monitor-enter p0

    .line 1356
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    monitor-exit p0

    return-void

    .line 1355
    .end local p1    # "l":Ljavax/mail/event/ConnectionListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/FolderListener;

    monitor-enter p0

    .line 1421
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    monitor-exit p0

    return-void

    .line 1420
    .end local p1    # "l":Ljavax/mail/event/FolderListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageChangedListener;

    monitor-enter p0

    .line 1592
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    monitor-exit p0

    return-void

    .line 1591
    .end local p1    # "l":Ljavax/mail/event/MessageChangedListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    monitor-enter p0

    .line 1503
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    .end local p0    # "this":Ljavax/mail/Folder;
    :cond_0
    monitor-exit p0

    return-void

    .line 1502
    .end local p1    # "l":Ljavax/mail/event/MessageCountListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract renameTo(Ljavax/mail/Folder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 1
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 3
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1290
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1293
    .local v0, "matchedMsgs":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_0

    .line 1300
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Message;

    .line 1301
    .local v1, "m":[Ljavax/mail/Message;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1302
    return-object v1

    .line 1295
    .local v1, "i":I
    :cond_0
    :try_start_0
    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Ljavax/mail/Message;->match(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1297
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 1293
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flag"    # Ljavax/mail/Flags;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1110
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_0

    .line 1118
    .end local v0    # "i":I
    monitor-exit p0

    return-void

    .line 1112
    .restart local v0    # "i":I
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1113
    .local v1, "msg":Ljavax/mail/Message;
    invoke-virtual {v1, p3, p4}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    .end local v1    # "msg":Ljavax/mail/Message;
    goto :goto_1

    .line 1109
    .end local v0    # "i":I
    .end local p0    # "this":Ljavax/mail/Folder;
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "flag":Ljavax/mail/Flags;
    .end local p4    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1114
    .restart local v0    # "i":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    .restart local p3    # "flag":Ljavax/mail/Flags;
    .restart local p4    # "value":Z
    :catch_0
    move-exception v1

    .line 1110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .locals 2
    .param p1, "msgnums"    # [I
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 1160
    .end local v0    # "i":I
    monitor-exit p0

    return-void

    .line 1154
    .restart local v0    # "i":I
    :cond_0
    :try_start_1
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1155
    .local v1, "msg":Ljavax/mail/Message;
    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    .end local v1    # "msg":Ljavax/mail/Message;
    goto :goto_1

    .end local p0    # "this":Ljavax/mail/Folder;
    :catch_0
    move-exception v1

    .line 1152
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    .end local v0    # "i":I
    .end local p1    # "msgnums":[I
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 2
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1067
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 1074
    .end local v0    # "i":I
    monitor-exit p0

    return-void

    .line 1069
    .restart local v0    # "i":I
    :cond_0
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    goto :goto_1

    .end local p0    # "this":Ljavax/mail/Folder;
    :catch_0
    move-exception v1

    .line 1067
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    .end local v0    # "i":I
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSubscribed(Z)V
    .locals 1
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 454
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    invoke-direct {v0}, Ljavax/mail/MethodNotSupportedException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1645
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1647
    return-object v0

    .line 1649
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
