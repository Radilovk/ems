.class Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;
.super Ljava/lang/Object;
.source "SMTPSaslAuthenticator.java"

# interfaces
.implements Ljavax/security/auth/callback/CallbackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPSaslAuthenticator;

.field private final synthetic val$p:Ljava/lang/String;

.field private final synthetic val$realm:Ljava/lang/String;

.field private final synthetic val$u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->this$0:Lcom/sun/mail/smtp/SMTPSaslAuthenticator;

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$u:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$p:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle([Ljavax/security/auth/callback/Callback;)V
    .locals 6
    .param p1, "callbacks"    # [Ljavax/security/auth/callback/Callback;

    .line 102
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->this$0:Lcom/sun/mail/smtp/SMTPSaslAuthenticator;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->access$0(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->this$0:Lcom/sun/mail/smtp/SMTPSaslAuthenticator;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->access$0(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SASL callback length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 134
    .end local v0    # "i":I
    return-void

    .line 105
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->this$0:Lcom/sun/mail/smtp/SMTPSaslAuthenticator;

    invoke-static {v1}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->access$0(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->this$0:Lcom/sun/mail/smtp/SMTPSaslAuthenticator;

    invoke-static {v1}, Lcom/sun/mail/smtp/SMTPSaslAuthenticator;->access$0(Lcom/sun/mail/smtp/SMTPSaslAuthenticator;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SASL callback "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 107
    :cond_2
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/security/auth/callback/NameCallback;

    if-eqz v1, :cond_3

    .line 108
    aget-object v1, p1, v0

    check-cast v1, Ljavax/security/auth/callback/NameCallback;

    .line 109
    .local v1, "ncb":Ljavax/security/auth/callback/NameCallback;
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    .line 110
    .end local v1    # "ncb":Ljavax/security/auth/callback/NameCallback;
    goto :goto_4

    :cond_3
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v1, :cond_4

    .line 111
    aget-object v1, p1, v0

    check-cast v1, Ljavax/security/auth/callback/PasswordCallback;

    .line 112
    .local v1, "pcb":Ljavax/security/auth/callback/PasswordCallback;
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    .line 113
    .end local v1    # "pcb":Ljavax/security/auth/callback/PasswordCallback;
    goto :goto_4

    :cond_4
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/security/sasl/RealmCallback;

    if-eqz v1, :cond_6

    .line 114
    aget-object v1, p1, v0

    check-cast v1, Ljavax/security/sasl/RealmCallback;

    .line 115
    .local v1, "rcb":Ljavax/security/sasl/RealmCallback;
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 116
    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljavax/security/sasl/RealmCallback;->getDefaultText()Ljava/lang/String;

    move-result-object v2

    .line 115
    :goto_1
    invoke-virtual {v1, v2}, Ljavax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V

    .end local v1    # "rcb":Ljavax/security/sasl/RealmCallback;
    goto :goto_3

    .line 117
    :cond_6
    aget-object v1, p1, v0

    instance-of v1, v1, Ljavax/security/sasl/RealmChoiceCallback;

    if-eqz v1, :cond_a

    .line 119
    aget-object v1, p1, v0

    check-cast v1, Ljavax/security/sasl/RealmChoiceCallback;

    .line 118
    nop

    .line 120
    .local v1, "rcb":Ljavax/security/sasl/RealmChoiceCallback;
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 121
    invoke-virtual {v1}, Ljavax/security/sasl/RealmChoiceCallback;->getDefaultChoice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    goto :goto_4

    .line 124
    :cond_7
    invoke-virtual {v1}, Ljavax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "choices":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    array-length v4, v2

    if-lt v3, v4, :cond_8

    goto :goto_4

    .line 126
    :cond_8
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPSaslAuthenticator$1;->val$realm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 127
    invoke-virtual {v1, v3}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V

    .line 128
    goto :goto_4

    .line 125
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 117
    .end local v1    # "rcb":Ljavax/security/sasl/RealmChoiceCallback;
    .end local v2    # "choices":[Ljava/lang/String;
    .end local v3    # "k":I
    :cond_a
    :goto_3
    nop

    .line 104
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
