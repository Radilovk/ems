.class Lcom/sun/mail/imap/IMAPFolder$19;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$im:Lcom/sun/mail/imap/IdleManager;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$19;->val$im:Lcom/sun/mail/imap/IdleManager;

    .line 3032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3037
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->access$0(Lcom/sun/mail/imap/IMAPFolder;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->val$im:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPFolder;->access$1(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/IdleManager;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 3039
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 3040
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->access$0(Lcom/sun/mail/imap/IMAPFolder;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3041
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    .line 3042
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "startIdle: set to IDLE"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3043
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->access$2(Lcom/sun/mail/imap/IMAPFolder;I)V

    .line 3044
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$19;->val$im:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->access$3(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V

    .line 3045
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 3052
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3053
    goto :goto_0

    :catch_0
    move-exception v0

    .line 3056
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3058
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
