.class Lcom/sun/mail/imap/IdleManager$1;
.super Ljava/lang/Object;
.source "IdleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IdleManager;-><init>(Ljavax/mail/Session;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IdleManager;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IdleManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->access$0(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    const-string v1, "IdleManager select starting"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->access$1(Lcom/sun/mail/imap/IdleManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->access$0(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    const-string v1, "IdleManager select terminating"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 166
    return-void

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v1}, Lcom/sun/mail/imap/IdleManager;->access$0(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    const-string v2, "IdleManager select terminating"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 165
    throw v0
.end method
