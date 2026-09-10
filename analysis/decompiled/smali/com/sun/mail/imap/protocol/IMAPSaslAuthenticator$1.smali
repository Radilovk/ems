.class Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;
.super Ljava/lang/Object;
.source "IMAPSaslAuthenticator.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

.field private final synthetic val$p:Ljava/lang/String;

.field private final synthetic val$realm:Ljava/lang/String;

.field private final synthetic val$u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 9
    .param p1, "callbacks"    # [Ljavax/security/auth/callback/Callback;

    .prologue
    .line 107
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SASL callback length: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 109
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-lt v1, v6, :cond_1

    .line 139
    return-void

    .line 110
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;

    invoke-static {v6}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SASL callback "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 112
    :cond_2
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/auth/callback/NameCallback;

    if-eqz v6, :cond_4

    .line 113
    aget-object v3, p1, v1

    check-cast v3, Ljavax/security/auth/callback/NameCallback;

    .line 114
    .local v3, "ncb":Ljavax/security/auth/callback/NameCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 109
    .end local v3    # "ncb":Ljavax/security/auth/callback/NameCallback;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_4
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v6, :cond_5

    .line 116
    aget-object v4, p1, v1

    check-cast v4, Ljavax/security/auth/callback/PasswordCallback;

    .line 117
    .local v4, "pcb":Ljavax/security/auth/callback/PasswordCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v4, v6}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1

    .line 118
    .end local v4    # "pcb":Ljavax/security/auth/callback/PasswordCallback;
    :cond_5
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/sasl/RealmCallback;

    if-eqz v6, :cond_7

    .line 119
    aget-object v5, p1, v1

    check-cast v5, Ljavax/security/sasl/RealmCallback;

    .line 120
    .local v5, "rcb":Ljavax/security/sasl/RealmCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 121
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    .line 120
    :goto_2
    invoke-virtual {v5, v6}, Ljavax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {v5}, Ljavax/security/sasl/RealmCallback;->getDefaultText()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 122
    .end local v5    # "rcb":Ljavax/security/sasl/RealmCallback;
    :cond_7
    aget-object v6, p1, v1

    instance-of v6, v6, Ljavax/security/sasl/RealmChoiceCallback;

    if-eqz v6, :cond_3

    .line 124
    aget-object v5, p1, v1

    check-cast v5, Ljavax/security/sasl/RealmChoiceCallback;

    .line 125
    .local v5, "rcb":Ljavax/security/sasl/RealmChoiceCallback;
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 126
    invoke-virtual {v5}, Ljavax/security/sasl/RealmChoiceCallback;->getDefaultChoice()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_1

    .line 129
    :cond_8
    invoke-virtual {v5}, Ljavax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "choices":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 131
    aget-object v6, v0, v2

    iget-object v7, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 132
    invoke-virtual {v5, v2}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_1

    .line 130
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
