.class Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;
.super Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginAuthenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 1

    .line 917
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 918
    const-string v0, "LOGIN"

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V

    .line 919
    return-void
.end method


# virtual methods
.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    .line 924
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 925
    invoke-static {p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v1

    .line 924
    invoke-virtual {v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->resp:I

    .line 926
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->resp:I

    const/16 v1, 0x14e

    if-ne v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 929
    invoke-static {p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v1

    .line 928
    invoke-virtual {v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->resp:I

    .line 931
    :cond_0
    return-void
.end method
