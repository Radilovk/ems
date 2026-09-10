.class Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;
.super Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigestMD5Authenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private md5support:Lcom/sun/mail/smtp/DigestMD5;

.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 969
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    return-void
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 1

    .line 972
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 973
    const-string v0, "DIGEST-MD5"

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method private declared-synchronized getMD5()Lcom/sun/mail/smtp/DigestMD5;
    .locals 2

    monitor-enter p0

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    if-nez v0, :cond_0

    .line 978
    new-instance v0, Lcom/sun/mail/smtp/DigestMD5;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v1}, Lcom/sun/mail/smtp/SMTPTransport;->access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/DigestMD5;-><init>(Lcom/sun/mail/util/MailLogger;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    .line 979
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->md5support:Lcom/sun/mail/smtp/DigestMD5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 984
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->getMD5()Lcom/sun/mail/smtp/DigestMD5;

    move-result-object v6

    .line 985
    .local v6, "md5":Lcom/sun/mail/smtp/DigestMD5;
    nop

    .line 987
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v4

    .line 988
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v5

    .line 987
    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/smtp/DigestMD5;->authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 989
    .local v0, "b":[B
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->resp:I

    .line 990
    iget v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->resp:I

    const/16 v2, 0x14e

    if-ne v1, v2, :cond_1

    .line 991
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sun/mail/smtp/DigestMD5;->authServer(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->resp:I

    .line 994
    goto :goto_0

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;->resp:I

    .line 999
    :cond_1
    :goto_0
    return-void
.end method
