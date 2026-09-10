.class Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;
.super Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NtlmAuthenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private flags:I

.field private ntlm:Lcom/sun/mail/auth/Ntlm;

.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1005
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    return-void
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 1

    .line 1009
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1010
    const-string v0, "NTLM"

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V

    .line 1011
    return-void
.end method


# virtual methods
.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    .line 1028
    nop

    .line 1029
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->ntlm:Lcom/sun/mail/auth/Ntlm;

    .line 1030
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-virtual {v0, v1}, Lcom/sun/mail/auth/Ntlm;->generateType3Msg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "type3":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->resp:I

    .line 1033
    return-void
.end method

.method getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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

    .line 1015
    new-instance v6, Lcom/sun/mail/auth/Ntlm;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->getNTLMDomain()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    .line 1016
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v5

    move-object v0, v6

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/auth/Ntlm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V

    .line 1015
    iput-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->ntlm:Lcom/sun/mail/auth/Ntlm;

    .line 1018
    nop

    .line 1019
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$6(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$7(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".auth.ntlm.flags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->flags:I

    .line 1022
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->ntlm:Lcom/sun/mail/auth/Ntlm;

    invoke-virtual {v1, v0}, Lcom/sun/mail/auth/Ntlm;->generateType1Msg(I)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "type1":Ljava/lang/String;
    return-object v0
.end method
