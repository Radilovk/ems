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

    .line 825
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    return-void
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V
    .locals 0
    .param p2, "mech"    # Ljava/lang/String;

    .line 829
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 830
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    .line 831
    return-void
.end method


# virtual methods
.method authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 844
    move-object v1, p0

    const-string v2, " failed"

    const-string v3, "succeeded"

    const-string v4, "failed"

    const-string v5, " "

    const-string v6, "AUTH "

    const/4 v7, 0x0

    .line 847
    .local v7, "thrown":Ljava/lang/Throwable;
    const/16 v8, 0xeb

    :try_start_0
    invoke-virtual/range {p0 .. p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "ir":Ljava/lang/String;
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 849
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " command trace suppressed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 850
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->access$5(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 852
    :cond_0
    if-eqz v0, :cond_2

    .line 853
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "="

    goto :goto_0

    :cond_1
    move-object v11, v0

    :goto_0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 853
    invoke-virtual {v9, v10}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 854
    goto :goto_1

    .line 856
    :cond_2
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 862
    :goto_1
    iget v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    const/16 v10, 0x212

    if-ne v9, v10, :cond_4

    .line 863
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v9}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 864
    if-eqz v0, :cond_3

    .line 865
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    goto :goto_2

    .line 867
    :cond_3
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 869
    :cond_4
    :goto_2
    iget v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    const/16 v10, 0x14e

    if-ne v9, v10, :cond_5

    .line 870
    invoke-virtual/range {p0 .. p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .end local v0    # "ir":Ljava/lang/String;
    :cond_5
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 878
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget v5, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v5, v8, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_7
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v0, v8, :cond_14

    .line 882
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v7, :cond_a

    .line 884
    instance-of v0, v7, Ljava/lang/Error;

    if-nez v0, :cond_9

    .line 886
    instance-of v0, v7, Ljava/lang/Exception;

    if-nez v0, :cond_8

    .line 890
    goto :goto_4

    .line 887
    :cond_8
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 889
    move-object v3, v7

    check-cast v3, Ljava/lang/Exception;

    .line 887
    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 885
    :cond_9
    move-object v0, v7

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 892
    :cond_a
    :goto_4
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :catchall_0
    move-exception v0

    .line 874
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 875
    move-object v7, v0

    .line 877
    .end local v0    # "t":Ljava/lang/Throwable;
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 878
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget v5, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v5, v8, :cond_b

    goto :goto_5

    :cond_b
    move-object v3, v4

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_c
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v0, v8, :cond_14

    .line 882
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    nop

    .line 884
    instance-of v0, v7, Ljava/lang/Error;

    if-nez v0, :cond_e

    .line 886
    instance-of v0, v7, Ljava/lang/Exception;

    if-nez v0, :cond_d

    .line 890
    nop

    .line 892
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_d
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 889
    move-object v3, v7

    check-cast v3, Ljava/lang/Exception;

    .line 887
    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 885
    :cond_e
    move-object v0, v7

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v9, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v9}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v10, v2, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 877
    .end local v0    # "ex":Ljava/io/IOException;
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 878
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget v5, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v5, v8, :cond_f

    goto :goto_6

    :cond_f
    move-object v3, v4

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_10
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v0, v8, :cond_14

    .line 882
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v7, :cond_13

    .line 884
    instance-of v0, v7, Ljava/lang/Error;

    if-nez v0, :cond_12

    .line 886
    instance-of v0, v7, Ljava/lang/Exception;

    if-nez v0, :cond_11

    .line 890
    goto :goto_7

    .line 887
    :cond_11
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 889
    move-object v3, v7

    check-cast v3, Ljava/lang/Exception;

    .line 887
    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 885
    :cond_12
    move-object v0, v7

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 892
    :cond_13
    :goto_7
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 876
    :catchall_1
    move-exception v0

    .line 877
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 878
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget v5, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v5, v8, :cond_15

    goto :goto_8

    :cond_15
    move-object v3, v4

    :goto_8
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 878
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 880
    :cond_16
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$3(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 881
    iget v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v2, v8, :cond_1a

    .line 882
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$4(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 883
    if-eqz v7, :cond_19

    .line 884
    instance-of v0, v7, Ljava/lang/Error;

    if-nez v0, :cond_18

    .line 886
    instance-of v0, v7, Ljava/lang/Exception;

    if-nez v0, :cond_17

    .line 890
    goto :goto_9

    .line 887
    :cond_17
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 888
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 889
    move-object v3, v7

    check-cast v3, Ljava/lang/Exception;

    .line 887
    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 885
    :cond_18
    move-object v0, v7

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 892
    :cond_19
    :goto_9
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    .line 893
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_1a
    throw v0
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

    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method getMechanism()Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    return-object v0
.end method
