.class abstract Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.super Ljava/lang/Object;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Authenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mech:Ljava/lang/String;

.field protected resp:I

.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 825
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V
    .locals 1
    .param p2, "mech"    # Ljava/lang/String;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    .line 831
    return-void
.end method


# virtual methods
.method authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xeb

    .line 844
    const/4 v3, 0x0

    .line 847
    .local v3, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "ir":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " command trace suppressed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 850
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$5(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 852
    :cond_0
    if-eqz v1, :cond_5

    .line 853
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 854
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "="

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 853
    invoke-virtual {v5, v4}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 862
    :goto_1
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    const/16 v5, 0x212

    if-ne v4, v5, :cond_1

    .line 863
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 864
    if-eqz v1, :cond_7

    .line 865
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 869
    :cond_1
    :goto_2
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    const/16 v5, 0x14e

    if-ne v4, v5, :cond_2

    .line 870
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 878
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v4, v8, :cond_17

    const-string v4, "succeeded"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 878
    invoke-virtual {v5, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_3
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v4, v8, :cond_1b

    .line 882
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v3, :cond_1a

    .line 884
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_18

    .line 885
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "thrown":Ljava/lang/Throwable;
    throw v3

    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_4
    move-object v4, v1

    .line 854
    goto/16 :goto_0

    .line 856
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 871
    .end local v1    # "ir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AUTH "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 877
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 878
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v4, v8, :cond_9

    const-string v4, "succeeded"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 878
    invoke-virtual {v5, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_6
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v4, v8, :cond_1b

    .line 882
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v3, :cond_c

    .line 884
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_a

    .line 885
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "thrown":Ljava/lang/Throwable;
    throw v3

    .line 867
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "ir":Ljava/lang/String;
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_7
    :try_start_3
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 873
    .end local v1    # "ir":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 874
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AUTH "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 875
    move-object v3, v2

    .line 877
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 878
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "AUTH "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v4, v8, :cond_d

    const-string v4, "succeeded"

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 878
    invoke-virtual {v5, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_8
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v4, v8, :cond_1b

    .line 882
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v3, :cond_10

    .line 884
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_e

    .line 885
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "thrown":Ljava/lang/Throwable;
    throw v3

    .line 879
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_9
    const-string v4, "failed"

    goto/16 :goto_4

    .line 886
    :cond_a
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_b

    .line 887
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 889
    check-cast v3, Ljava/lang/Exception;

    .line 887
    .end local v3    # "thrown":Ljava/lang/Throwable;
    invoke-direct {v4, v5, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 890
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_b
    sget-boolean v4, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "unknown Throwable"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 892
    :cond_c
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-direct {v4, v5}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 879
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_d
    const-string v4, "failed"

    goto :goto_5

    .line 886
    :cond_e
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_f

    .line 887
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 889
    check-cast v3, Ljava/lang/Exception;

    .line 887
    .end local v3    # "thrown":Ljava/lang/Throwable;
    invoke-direct {v4, v5, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 890
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_f
    sget-boolean v4, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->$assertionsDisabled:Z

    if-nez v4, :cond_10

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "unknown Throwable"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 892
    :cond_10
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-direct {v4, v5}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 876
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    move-object v5, v4

    .line 877
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 878
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "AUTH "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 879
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v4, v8, :cond_12

    const-string v4, "succeeded"

    :goto_6
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 878
    invoke-virtual {v6, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_11
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v4, v8, :cond_16

    .line 882
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v4}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v3, :cond_15

    .line 884
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_13

    .line 885
    check-cast v3, Ljava/lang/Error;

    .end local v3    # "thrown":Ljava/lang/Throwable;
    throw v3

    .line 879
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_12
    const-string v4, "failed"

    goto :goto_6

    .line 886
    :cond_13
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_14

    .line 887
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 889
    check-cast v3, Ljava/lang/Exception;

    .line 887
    .end local v3    # "thrown":Ljava/lang/Throwable;
    invoke-direct {v4, v5, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 890
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_14
    sget-boolean v4, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->$assertionsDisabled:Z

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "unknown Throwable"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 892
    :cond_15
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-direct {v4, v5}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 895
    :cond_16
    throw v5

    .line 879
    .restart local v1    # "ir":Ljava/lang/String;
    :cond_17
    const-string v4, "failed"

    goto/16 :goto_3

    .line 886
    :cond_18
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_19

    .line 887
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 889
    check-cast v3, Ljava/lang/Exception;

    .line 887
    .end local v3    # "thrown":Ljava/lang/Throwable;
    invoke-direct {v4, v5, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 890
    .restart local v3    # "thrown":Ljava/lang/Throwable;
    :cond_19
    sget-boolean v4, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->$assertionsDisabled:Z

    if-nez v4, :cond_1a

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "unknown Throwable"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 892
    :cond_1a
    new-instance v4, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-direct {v4, v5}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 896
    .end local v1    # "ir":Ljava/lang/String;
    :cond_1b
    const/4 v4, 0x1

    return v4
.end method

.method abstract doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method getMechanism()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    return-object v0
.end method
