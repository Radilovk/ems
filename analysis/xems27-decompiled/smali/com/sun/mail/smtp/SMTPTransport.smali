.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/smtp/SMTPTransport$Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final UNKNOWN_SA:[Ljava/lang/String;

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private authenticators:Ljava/util/Map;

.field private authorizationID:Ljava/lang/String;

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private defaultAuthenticationMechanisms:Ljava/lang/String;

.field private defaultPort:I

.field private enableSASL:Z

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;

.field private host:Ljava/lang/String;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private noauthdebug:Z

.field private noopStrict:Z

.field private notificationDone:Z

.field private ntlmDomain:Ljava/lang/String;

.field private quitWait:Z

.field private reportSuccess:Z

.field private requireStartTLS:Z

.field private saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private useCanonicalHostName:Z

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    nop

    .line 142
    const-string v0, "Bcc"

    const-string v1, "Content-Length"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    .line 145
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    .line 2433
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    .line 2434
    nop

    .line 2435
    nop

    .line 2433
    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    .line 2436
    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 155
    const-string v0, "smtp"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .line 168
    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 91
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 92
    const/16 v0, 0x19

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 102
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    .line 114
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 116
    const-string v2, "UNKNOWN"

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 119
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 120
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 139
    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 169
    new-instance v3, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "DEBUG SMTP"

    invoke-direct {v3, v4, v5, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 170
    const-string v4, "protocol"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 171
    nop

    .line 172
    nop

    .line 171
    const-string v3, "mail.debug.auth"

    invoke-static {p1, v3, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v3

    .line 172
    nop

    .line 171
    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 173
    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 175
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 176
    const-string v3, "mail."

    if-nez p4, :cond_1

    .line 177
    nop

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".ssl.enable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-static {p1, v4, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result p4

    .line 179
    :cond_1
    if-eqz p4, :cond_2

    .line 180
    const/16 v0, 0x1d1

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    goto :goto_0

    .line 182
    :cond_2
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 183
    :goto_0
    iput-boolean p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 187
    nop

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".quitwait"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {p1, v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 191
    nop

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".reportsuccess"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    .line 195
    nop

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".starttls.enable"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    .line 199
    nop

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".starttls.required"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    .line 204
    nop

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".userset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    .line 208
    nop

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".noop.strict"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {p1, v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 212
    nop

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".sasl.enable"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 214
    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "enable SASL"

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 216
    :cond_3
    nop

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sasl.usecanonicalhostname"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {p1, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 218
    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "use canonical host name"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 222
    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    .line 223
    new-instance v3, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;

    invoke-direct {v3, p0}, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v3, v0, v1

    .line 224
    new-instance v1, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;

    invoke-direct {v1, p0}, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 225
    new-instance v2, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;

    invoke-direct {v2, p0}, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 226
    new-instance v2, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;

    invoke-direct {v2, p0}, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v2, v0, v1

    .line 222
    nop

    .line 228
    .local v0, "a":[Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_5

    .line 233
    .end local v2    # "i":I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 234
    return-void

    .line 230
    .restart local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    return p0
.end method

.method static synthetic access$1(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .locals 0

    .line 2127
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method

.method static synthetic access$3(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0

    .line 2145
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    return-void
.end method

.method static synthetic access$4(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1301
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return-void
.end method

.method static synthetic access$5(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0

    .line 2135
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    return-void
.end method

.method static synthetic access$6(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    return-object p0
.end method

.method static synthetic access$7(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    return-object p0
.end method

.method private addressesFailed()V
    .locals 6

    .line 1263
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_1

    .line 1264
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1266
    array-length v3, v0

    array-length v1, v1

    add-int/2addr v3, v1

    new-array v1, v3, [Ljavax/mail/Address;

    .line 1265
    nop

    .line 1267
    .local v1, "newa":[Ljavax/mail/Address;
    nop

    .line 1268
    array-length v3, v0

    .line 1267
    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1270
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    array-length v5, v0

    .line 1269
    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1272
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1273
    .end local v1    # "newa":[Ljavax/mail/Address;
    goto :goto_0

    .line 1274
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1275
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1278
    :cond_1
    :goto_0
    return-void
.end method

.method private authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".auth.mechanisms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "mechs":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getAuthorizationId()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "authzid":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 763
    move-object v1, p1

    .line 764
    :cond_1
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_3

    .line 765
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "Authenticate with SASL"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 767
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLMechanisms()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v5

    .line 768
    nop

    .line 767
    move-object v3, p0

    move-object v6, v1

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/smtp/SMTPTransport;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 768
    if-eqz v3, :cond_2

    .line 769
    const/4 v2, 0x1

    return v2

    .line 771
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "SASL authentication failed"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    return v9

    .line 774
    :catch_0
    move-exception v3

    .line 775
    .local v3, "ex":Ljava/lang/UnsupportedOperationException;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "SASL support failed"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    .end local v3    # "ex":Ljava/lang/UnsupportedOperationException;
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 781
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt to authenticate using mechanisms: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 789
    :cond_4
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 790
    .local v3, "st":Ljava/util/StringTokenizer;
    nop

    :cond_5
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 791
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, "m":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".auth."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".disable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 795
    .local v5, "dprop":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v6, v5, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v6

    .line 794
    nop

    .line 796
    .local v6, "disabled":Z
    if-eqz v6, :cond_6

    .line 797
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 798
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 799
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "mechanism "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " disabled by property: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 798
    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 800
    goto :goto_0

    .line 802
    :cond_6
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 803
    invoke-virtual {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 804
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 805
    nop

    .line 804
    const-string v10, "mechanism {0} not supported by server"

    invoke-virtual {v7, v8, v10, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    goto :goto_0

    .line 808
    :cond_7
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    .line 809
    .local v7, "a":Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    if-nez v7, :cond_8

    .line 810
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v11, "no authenticator for mechanism {0}"

    invoke-virtual {v8, v10, v11, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    goto/16 :goto_0

    .line 814
    :cond_8
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v7, v2, v1, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 818
    .end local v4    # "m":Ljava/lang/String;
    .end local v5    # "dprop":Ljava/lang/String;
    .end local v6    # "disabled":Z
    .end local v7    # "a":Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    :cond_9
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    .line 819
    nop

    .line 818
    const-string v4, "No authentication mechanisms supported by both server and client"

    invoke-direct {v2, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private closeConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1303
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1309
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1310
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1311
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1312
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1315
    :cond_1
    return-void

    .line 1307
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1305
    :catch_0
    move-exception v1

    .line 1306
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Server Close Failed"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1308
    .end local v1    # "ioex":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1309
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1310
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1311
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1312
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1313
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1314
    :cond_2
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .locals 5
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .line 1441
    const/4 v0, 0x0

    .line 1443
    .local v0, "changed":Z
    :try_start_0
    const-string v1, "text/*"

    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1444
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1445
    .local v1, "enc":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v2, "quoted-printable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1446
    const-string v2, "base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_7

    .line 1447
    :cond_0
    const/4 v2, 0x0

    .line 1449
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 1450
    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1460
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v3

    .line 1461
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 1460
    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1462
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "8bit"

    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    const/4 v0, 0x1

    .line 1466
    :cond_1
    if-eqz v2, :cond_7

    .line 1468
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1469
    goto :goto_4

    :catch_0
    move-exception v3

    .line 1475
    .end local v1    # "enc":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_2
    goto :goto_4

    .line 1465
    .restart local v1    # "enc":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v3

    .line 1466
    if-eqz v2, :cond_3

    .line 1468
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1469
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_0

    .line 1473
    :cond_3
    :goto_1
    nop

    .end local v0    # "changed":Z
    .end local p1    # "part":Ljavax/mail/internet/MimePart;
    :try_start_4
    throw v3

    .line 1475
    .end local v1    # "enc":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "changed":Z
    .restart local p1    # "part":Ljavax/mail/internet/MimePart;
    :cond_4
    const-string v1, "multipart/*"

    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1476
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    .line 1477
    .local v1, "mp":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v2

    .line 1478
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v2, :cond_5

    .end local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    goto :goto_3

    .line 1479
    .restart local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_5
    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v4, :cond_6

    .line 1480
    const/4 v0, 0x1

    .line 1478
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1485
    .end local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :catch_2
    move-exception v1

    goto :goto_4

    .line 1483
    :catch_3
    move-exception v1

    :goto_3
    nop

    .line 1488
    :cond_7
    :goto_4
    return v0
.end method

.method private expandGroups()V
    .locals 6

    .line 1393
    const/4 v0, 0x0

    .line 1394
    .local v0, "groups":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 1423
    .end local v1    # "i":I
    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/internet/InternetAddress;

    .line 1425
    .local v1, "newa":[Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1426
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1428
    .end local v1    # "newa":[Ljavax/mail/internet/InternetAddress;
    :cond_0
    return-void

    .line 1395
    .local v1, "i":I
    :cond_1
    aget-object v2, v2, v1

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    .line 1396
    .local v2, "a":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1397
    if-nez v0, :cond_3

    .line 1399
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1400
    .end local v0    # "groups":Ljava/util/Vector;
    .local v3, "groups":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    if-lt v0, v1, :cond_2

    move-object v0, v3

    goto :goto_2

    .line 1401
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1405
    .end local v3    # "groups":Ljava/util/Vector;
    .local v0, "groups":Ljava/util/Vector;
    :cond_3
    :goto_2
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 1406
    .local v3, "ia":[Ljavax/mail/internet/InternetAddress;
    if-eqz v3, :cond_5

    .line 1407
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v5, v3

    if-lt v4, v5, :cond_4

    .line 1409
    .end local v4    # "j":I
    goto :goto_4

    .line 1408
    .restart local v4    # "j":I
    :cond_4
    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1407
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1410
    .end local v4    # "j":I
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    .end local v3    # "ia":[Ljavax/mail/internet/InternetAddress;
    goto :goto_4

    :catch_0
    move-exception v3

    .line 1413
    .local v3, "pex":Ljavax/mail/internet/ParseException;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1415
    .end local v3    # "pex":Ljavax/mail/internet/ParseException;
    goto :goto_4

    .line 1417
    :cond_6
    if-eqz v0, :cond_7

    .line 1418
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1394
    .end local v2    # "a":Ljavax/mail/internet/InternetAddress;
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initStreams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2106
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 2107
    nop

    .line 2106
    const-string v1, "mail.debug.quote"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    .line 2109
    .local v0, "quote":Z
    nop

    .line 2110
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 2109
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 2111
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 2113
    nop

    .line 2114
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 2113
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 2115
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 2117
    nop

    .line 2118
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2117
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2119
    nop

    .line 2120
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2119
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2121
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2122
    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, "linelen":I
    const/4 v1, 0x0

    .line 1503
    .local v1, "need8bit":Z
    nop

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .local v4, "b":I
    if-gez v3, :cond_2

    .line 1517
    nop

    .line 1520
    if-eqz v1, :cond_1

    .line 1521
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "found an 8bit part"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1522
    :cond_1
    return v1

    .line 1504
    :cond_2
    and-int/lit16 v3, v4, 0xff

    .line 1505
    .end local v4    # "b":I
    .local v3, "b":I
    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 1507
    :cond_3
    if-nez v3, :cond_4

    .line 1508
    return v2

    .line 1510
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1511
    const/16 v4, 0x3e6

    if-le v0, v4, :cond_6

    .line 1512
    return v2

    .line 1506
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 1514
    :cond_6
    const/16 v2, 0x7f

    if-le v3, v2, :cond_0

    .line 1515
    const/4 v1, 0x1

    goto :goto_0

    .line 1517
    .end local v3    # "b":I
    :catch_0
    move-exception v3

    .line 1518
    .local v3, "ex":Ljava/io/IOException;
    return v2
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 2360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTracing()Z
    .locals 2

    .line 2128
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .locals 17
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2177
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    move v10, v1

    move/from16 v11, p2

    .local v10, "ret":I
    if-eq v1, v11, :cond_6

    .line 2185
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v1

    .line 2186
    .local v1, "vsl":I
    :goto_0
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v12, v3

    .line 2187
    .local v12, "vul":I
    add-int v3, v1, v12

    new-array v13, v3, [Ljavax/mail/Address;

    .line 2188
    .local v13, "valid":[Ljavax/mail/Address;
    if-lez v1, :cond_2

    .line 2189
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-static {v3, v2, v13, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2190
    :cond_2
    if-lez v12, :cond_3

    .line 2191
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v3, v2, v13, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2192
    :cond_3
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 2193
    iput-object v13, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 2194
    iget-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2195
    iget-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got response code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2196
    const-string v4, ", with response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2195
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2197
    :cond_4
    iget-object v14, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2198
    .local v14, "_lsr":Ljava/lang/String;
    iget v15, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2199
    .local v15, "_lrc":I
    iget-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v2, :cond_5

    .line 2200
    const/4 v2, -0x1

    const-string v3, "RSET"

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 2201
    :cond_5
    iput-object v14, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2202
    iput v15, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2203
    new-instance v16, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2204
    iget-object v6, v0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v7, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v8, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v9, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 2203
    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move v4, v10

    invoke-direct/range {v2 .. v9}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v16

    .line 2206
    .end local v1    # "vsl":I
    .end local v12    # "vul":I
    .end local v13    # "valid":[Ljavax/mail/Address;
    .end local v14    # "_lsr":Ljava/lang/String;
    .end local v15    # "_lrc":I
    :cond_6
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 2365
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2368
    :cond_0
    return-object p1
.end method

.method private openServer()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2066
    const-string v0, ", port: "

    const/4 v1, -0x1

    .line 2067
    .local v1, "port":I
    const-string v2, "UNKNOWN"

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2069
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    move v1, v2

    .line 2070
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2071
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2072
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "starting protocol to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2073
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2072
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2075
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2077
    const/4 v2, -0x1

    .line 2078
    .local v2, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    const/16 v4, 0xdc

    const-string v5, "\n"

    const-string v6, "\", port: "

    if-eq v3, v4, :cond_2

    .line 2079
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 2080
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2081
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2082
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2083
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2084
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, ", response: "

    if-eqz v3, :cond_1

    .line 2085
    :try_start_2
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "got bad greeting from host \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2086
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2087
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2085
    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2088
    :cond_1
    new-instance v3, Ljavax/mail/MessagingException;

    .line 2089
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got bad greeting from SMTP host: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2091
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2089
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2088
    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v1    # "port":I
    throw v3

    .line 2093
    .restart local v1    # "port":I
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2094
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "protocol started to host \""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2095
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2094
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2102
    .end local v2    # "r":I
    :cond_3
    return-void

    .line 2097
    :catch_0
    move-exception v2

    .line 2098
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    .line 2099
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not start protocol to SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2100
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2099
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2100
    nop

    .line 2098
    invoke-direct {v3, v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private openServer(Ljava/lang/String;I)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2013
    const-string v0, ", port: "

    const-string v1, "Could not connect to SMTP host: "

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2014
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trying to connect to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isSSL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2014
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2018
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    .line 2020
    .local v2, "props":Ljava/util/Properties;
    nop

    .line 2021
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 2020
    invoke-static {p1, p2, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2025
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v3

    move p2, v3

    .line 2027
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2029
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2031
    const/4 v3, -0x1

    .line 2032
    .local v3, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    const/16 v5, 0xdc

    const-string v6, "\n"

    const-string v7, "\", port: "

    if-eq v4, v5, :cond_2

    .line 2033
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 2034
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2035
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2036
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2037
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2038
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ", response: "

    if-eqz v4, :cond_1

    .line 2039
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "could not connect to host \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2041
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2039
    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2042
    :cond_1
    new-instance v4, Ljavax/mail/MessagingException;

    .line 2043
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2043
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2042
    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    throw v4

    .line 2047
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2048
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "connected to host \""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2048
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2059
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "r":I
    :cond_3
    return-void

    .line 2055
    :catch_0
    move-exception v2

    .line 2056
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2056
    invoke-direct {v3, v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 2053
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2054
    .local v0, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v1, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v1

    .line 2051
    .end local v0    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_2
    move-exception v0

    .line 2052
    .local v0, "uhex":Ljava/net/UnknownHostException;
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private resumeTracing()V
    .locals 2

    .line 2146
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2148
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 2150
    :cond_0
    return-void
.end method

.method private sendCommand([B)V
    .locals 3
    .param p1, "cmdBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2251
    nop

    .line 2256
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2257
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2258
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2259
    nop

    .line 2262
    return-void

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t send command to SMTP host"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private sendMessageEnd()V
    .locals 0

    .line 2485
    return-void
.end method

.method private sendMessageStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 2484
    return-void
.end method

.method private suspendTracing()V
    .locals 2

    .line 2136
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2138
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 2140
    :cond_0
    return-void
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 2459
    const/4 v0, 0x0

    .line 2460
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2478
    .end local v1    # "i":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_1
    return-object v1

    .line 2461
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2462
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_6

    .line 2465
    const/16 v3, 0x21

    const/16 v4, 0x2b

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_3

    if-eq v2, v4, :cond_3

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 2474
    :cond_2
    if-eqz v0, :cond_5

    .line 2475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2466
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 2467
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v3

    .line 2468
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2470
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2471
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2472
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2473
    nop

    .line 2460
    .end local v2    # "c":C
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2463
    .restart local v2    # "c":C
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 2464
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2463
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .line 2354
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2356
    return-void

    .line 2355
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1284
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1285
    monitor-exit p0

    return-void

    .line 1287
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 1288
    :try_start_2
    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1289
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v0, :cond_1

    .line 1290
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 1291
    .local v0, "resp":I
    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QUIT failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1296
    .end local v0    # "resp":I
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1297
    :cond_1
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1299
    monitor-exit p0

    return-void

    .line 1296
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_1
    move-exception v0

    .line 1297
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 1298
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1283
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 299
    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 297
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected data()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1965
    nop

    .line 1966
    const/16 v0, 0x162

    const-string v1, "DATA"

    invoke-direct {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1967
    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    .line 1968
    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1569
    if-eqz p1, :cond_0

    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EHLO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1572
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v0, "EHLO"

    .line 1573
    .restart local v0    # "cmd":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    .line 1575
    .local v1, "resp":I
    const/4 v2, 0x0

    const/16 v3, 0xfa

    if-ne v1, v3, :cond_6

    .line 1578
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1577
    nop

    .line 1580
    .local v4, "rd":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    .line 1582
    const/4 v5, 0x1

    .line 1583
    .local v5, "first":Z
    nop

    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1602
    .end local v5    # "first":Z
    goto :goto_2

    .line 1584
    .restart local v5    # "first":Z
    :cond_1
    if-eqz v5, :cond_2

    .line 1585
    const/4 v5, 0x0

    .line 1586
    goto :goto_1

    .line 1588
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-ge v6, v8, :cond_3

    .line 1589
    goto :goto_1

    .line 1590
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1591
    .end local v7    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1592
    .local v7, "i":I
    const-string v8, ""

    .line 1593
    .local v8, "arg":Ljava/lang/String;
    if-lez v7, :cond_4

    .line 1594
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1595
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1597
    :cond_4
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1598
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found extension \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\", arg \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1598
    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1600
    :cond_5
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1602
    .end local v5    # "first":Z
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1604
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    if-ne v1, v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1526
    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 1528
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1532
    :goto_1
    return-void
.end method

.method protected finishData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1979
    nop

    .line 1980
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    .line 1981
    const/16 v0, 0xfa

    const-string v1, "."

    invoke-direct {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1982
    return-void
.end method

.method public declared-synchronized getAuthorizationId()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 311
    nop

    .line 312
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sasl.authorizationid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 314
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .line 2398
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2399
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2398
    :goto_0
    return-object v0
.end method

.method public declared-synchronized getLastReturnCode()I
    .locals 1

    monitor-enter p0

    .line 630
    :try_start_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 630
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 619
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 246
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    nop

    .line 247
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 249
    :cond_2
    nop

    .line 250
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 253
    :cond_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 254
    .local v0, "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 256
    if-nez v1, :cond_5

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "localHost":Ljava/net/InetAddress;
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 264
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 265
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 267
    .restart local v0    # "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 269
    if-nez v1, :cond_7

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 274
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNTLMDomain()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 457
    nop

    .line 458
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".auth.ntlm.domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 460
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNoopStrict()Z
    .locals 1

    monitor-enter p0

    .line 592
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 592
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .locals 1

    monitor-enter p0

    .line 489
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 489
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequireStartTLS()Z
    .locals 1

    monitor-enter p0

    .line 535
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 535
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLEnabled()Z
    .locals 1

    monitor-enter p0

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 337
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLMechanisms()[Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    sget-object v1, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v0, "v":Ljava/util/List;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".sasl.mechanisms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 416
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SASL mechanisms allowed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 418
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " ,"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v2, "st":Ljava/util/StringTokenizer;
    nop

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 420
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "m":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 422
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v2    # "st":Ljava/util/StringTokenizer;
    .end local v3    # "m":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 426
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 428
    .end local v0    # "v":Ljava/util/List;
    .end local v1    # "s":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 429
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 430
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 361
    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 364
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .locals 1

    monitor-enter p0

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 513
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseCanonicalHostName()Z
    .locals 1

    monitor-enter p0

    .line 387
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 387
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .locals 1

    monitor-enter p0

    .line 568
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 568
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1552
    const/16 v0, 0xfa

    if-eqz p1, :cond_0

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HELO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    goto :goto_0

    .line 1555
    :cond_0
    const-string v1, "HELO"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1556
    :goto_0
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 1322
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1324
    monitor-exit p0

    return v1

    .line 1329
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v0, :cond_1

    .line 1330
    const-string v0, "RSET"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1332
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    const-string v0, "NOOP"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1333
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 1352
    .local v0, "resp":I
    if-ltz v0, :cond_3

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_2
    const/16 v2, 0x1a5

    if-eq v0, v2, :cond_3

    .line 1353
    :goto_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 1356
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1357
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    .line 1360
    :goto_3
    monitor-exit p0

    return v1

    .line 1362
    .end local v0    # "resp":I
    :catch_1
    move-exception v0

    .line 1364
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1365
    :goto_4
    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_4

    .line 1368
    :goto_5
    monitor-exit p0

    return v1

    .line 1321
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 556
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2163
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 2168
    .local v0, "resp":I
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2169
    :cond_0
    new-instance v1, Ljavax/mail/MessagingException;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2162
    .end local v0    # "resp":I
    .end local p1    # "cmd":Ljava/lang/String;
    .end local p2    # "expect":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected mailFrom()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1623
    const/4 v0, 0x0

    .line 1624
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_0

    .line 1625
    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    .line 1626
    :cond_0
    const-string v1, "mail."

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1627
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1628
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 1631
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v2

    move-object v3, v2

    .local v3, "fa":[Ljavax/mail/Address;
    if-eqz v2, :cond_4

    .line 1632
    array-length v2, v3

    if-lez v2, :cond_4

    .line 1633
    const/4 v2, 0x0

    aget-object v2, v3, v2

    .local v2, "me":Ljavax/mail/Address;
    goto :goto_0

    .line 1635
    .end local v2    # "me":Ljavax/mail/Address;
    .end local v3    # "fa":[Ljavax/mail/Address;
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 1637
    .restart local v2    # "me":Ljavax/mail/Address;
    :goto_0
    if-eqz v2, :cond_10

    .line 1638
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1644
    .end local v2    # "me":Ljavax/mail/Address;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAIL FROM:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "DSN"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1648
    const/4 v3, 0x0

    .line 1649
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_6

    .line 1650
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v3

    .line 1651
    :cond_6
    if-nez v3, :cond_7

    .line 1652
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".dsn.ret"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1654
    :cond_7
    if-eqz v3, :cond_8

    .line 1655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " RET="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1663
    .end local v3    # "ret":Ljava/lang/String;
    :cond_8
    const-string v3, "AUTH"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1664
    const/4 v3, 0x0

    .line 1665
    .local v3, "submitter":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_9

    .line 1666
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v3

    .line 1667
    :cond_9
    if-nez v3, :cond_a

    .line 1668
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".submitter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1670
    :cond_a
    if-eqz v3, :cond_b

    .line 1672
    :try_start_0
    invoke-static {v3}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1673
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " AUTH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 1674
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_1

    :catch_0
    move-exception v4

    .line 1675
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1676
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ignoring invalid submitter: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1676
    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1685
    .end local v3    # "submitter":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_b
    :goto_1
    const/4 v3, 0x0

    .line 1686
    .local v3, "ext":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_c

    .line 1687
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v3

    .line 1688
    :cond_c
    if-nez v3, :cond_d

    .line 1689
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mailextension"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1690
    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1694
    :cond_e
    const/16 v1, 0xfa

    :try_start_1
    invoke-direct {p0, v2, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/sun/mail/smtp/SMTPSendFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1695
    nop

    .line 1713
    return-void

    .line 1695
    :catch_1
    move-exception v1

    .line 1696
    .local v1, "ex":Lcom/sun/mail/smtp/SMTPSendFailedException;
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getReturnCode()I

    move-result v4

    .line 1697
    .local v4, "retCode":I
    const/16 v5, 0x1f5

    if-eq v4, v5, :cond_f

    const/16 v5, 0x1f7

    if-eq v4, v5, :cond_f

    const/16 v5, 0x229

    if-eq v4, v5, :cond_f

    const/16 v5, 0x226

    if-eq v4, v5, :cond_f

    const/16 v5, 0x227

    if-eq v4, v5, :cond_f

    goto :goto_2

    .line 1701
    :cond_f
    :try_start_2
    new-instance v5, Lcom/sun/mail/smtp/SMTPSenderFailedException;

    .line 1702
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v2, v4, v7}, Lcom/sun/mail/smtp/SMTPSenderFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1701
    invoke-virtual {v1, v5}, Lcom/sun/mail/smtp/SMTPSendFailedException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1704
    goto :goto_2

    :catch_2
    move-exception v5

    .line 1707
    nop

    .line 1711
    :goto_2
    throw v1

    .line 1640
    .end local v1    # "ex":Lcom/sun/mail/smtp/SMTPSendFailedException;
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "retCode":I
    .local v2, "me":Ljavax/mail/Address;
    :cond_10
    new-instance v1, Ljavax/mail/MessagingException;

    .line 1641
    nop

    .line 1640
    const-string v3, "can\'t determine local email address"

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .line 1382
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    if-nez v0, :cond_0

    .line 1383
    nop

    .line 1384
    nop

    .line 1383
    invoke-super/range {p0 .. p5}, Ljavax/mail/Transport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1387
    :cond_0
    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".auth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v0

    .line 663
    .local v0, "useAuth":Z
    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "need username and password for authentication"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    monitor-exit p0

    return v2

    .line 669
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ehlo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v1

    .line 671
    .local v1, "useEhlo":Z
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "useEhlo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", useAuth "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 678
    :cond_2
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 679
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 680
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".port"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-static {v4, v5, v2}, Lcom/sun/mail/util/PropUtil;->getIntSessionProperty(Ljavax/mail/Session;Ljava/lang/String;I)I

    move-result v4

    move p2, v4

    .line 681
    :cond_3
    if-ne p2, v2, :cond_4

    .line 682
    iget v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    move p2, v2

    .line 684
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 685
    :cond_5
    const-string v2, "localhost"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v2

    .line 691
    :cond_6
    const/4 v2, 0x0

    .line 694
    .local v2, "connected":Z
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v4, :cond_7

    .line 695
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    goto :goto_0

    .line 697
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    .line 699
    :goto_0
    const/4 v4, 0x0

    .line 700
    .local v4, "succeed":Z
    if-eqz v1, :cond_8

    .line 701
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    .line 702
    :cond_8
    if-nez v4, :cond_9

    .line 703
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    .line 705
    :cond_9
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-eqz v5, :cond_d

    .line 706
    :cond_a
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v5, v5, Ljavax/net/ssl/SSLSocket;

    if-eqz v5, :cond_b

    .line 707
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "STARTTLS requested but already using SSL"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 708
    goto :goto_2

    :cond_b
    const-string v5, "STARTTLS"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 709
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 716
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    goto :goto_1

    .line 717
    :cond_c
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-nez v5, :cond_13

    :goto_1
    nop

    .line 725
    :cond_d
    :goto_2
    if-nez v0, :cond_e

    if-eqz p3, :cond_f

    if-eqz p4, :cond_f

    .line 726
    :cond_e
    const-string v5, "AUTH"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 727
    const-string v5, "AUTH=LOGIN"

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_f

    goto :goto_5

    .line 733
    :cond_f
    const/4 v2, 0x1

    .line 739
    if-nez v2, :cond_10

    .line 741
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 742
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_3

    .line 734
    :cond_10
    :goto_4
    monitor-exit p0

    return v3

    .line 728
    :cond_11
    :goto_5
    :try_start_4
    invoke-direct {p0, p3, p4}, Lcom/sun/mail/smtp/SMTPTransport;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v3

    .line 729
    nop

    .line 739
    if-nez v2, :cond_12

    .line 741
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 742
    :goto_6
    goto :goto_7

    :catch_1
    move-exception v3

    goto :goto_6

    .line 729
    :cond_12
    :goto_7
    monitor-exit p0

    return v2

    .line 718
    :cond_13
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "STARTTLS required but not supported"

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 719
    new-instance v3, Ljavax/mail/MessagingException;

    .line 720
    const-string v5, "STARTTLS is required but host does not support STARTTLS"

    .line 719
    invoke-direct {v3, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "useAuth":Z
    .end local v1    # "useEhlo":Z
    .end local v2    # "connected":Z
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "passwd":Ljava/lang/String;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 736
    .end local v4    # "succeed":Z
    .restart local v0    # "useAuth":Z
    .restart local v1    # "useEhlo":Z
    .restart local v2    # "connected":Z
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "passwd":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 739
    if-nez v2, :cond_14

    .line 741
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 742
    :goto_8
    goto :goto_9

    :catch_2
    move-exception v4

    goto :goto_8

    .line 746
    :cond_14
    :goto_9
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 653
    .end local v0    # "useAuth":Z
    .end local v1    # "useEhlo":Z
    .end local v2    # "connected":Z
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "passwd":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected rcptTo()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1738
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v8, v0

    .line 1739
    .local v8, "valid":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v9, v0

    .line 1740
    .local v9, "validUnsent":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v10, v0

    .line 1741
    .local v10, "invalid":Ljava/util/Vector;
    const/4 v0, -0x1

    .line 1742
    .local v0, "retCode":I
    const/4 v1, 0x0

    .line 1743
    .local v1, "mex":Ljavax/mail/MessagingException;
    const/4 v2, 0x0

    .line 1744
    .local v2, "sendFailed":Z
    const/4 v3, 0x0

    .line 1745
    .local v3, "sfex":Ljavax/mail/MessagingException;
    const/4 v4, 0x0

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1746
    const/4 v4, 0x0

    .line 1747
    .local v4, "sendPartial":Z
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v6, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v6, :cond_0

    .line 1748
    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v4

    .line 1749
    :cond_0
    const-string v5, "mail."

    if-nez v4, :cond_1

    .line 1750
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 1751
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".sendpartial"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 1750
    invoke-static {v6, v11, v12}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v4

    move v11, v4

    goto :goto_0

    .line 1749
    :cond_1
    move v11, v4

    .line 1752
    .end local v4    # "sendPartial":Z
    .local v11, "sendPartial":Z
    :goto_0
    if-eqz v11, :cond_2

    .line 1753
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "sendPartial set"

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1755
    :cond_2
    const/4 v4, 0x0

    .line 1756
    .local v4, "dsn":Z
    const/4 v6, 0x0

    .line 1757
    .local v6, "notify":Ljava/lang/String;
    const-string v12, "DSN"

    invoke-virtual {v7, v12}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1758
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v13, v12, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v13, :cond_3

    .line 1759
    check-cast v12, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v12}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v6

    .line 1760
    :cond_3
    if-nez v6, :cond_4

    .line 1761
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".dsn.notify"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 1763
    :cond_4
    if-eqz v6, :cond_5

    .line 1764
    const/4 v4, 0x1

    move v12, v4

    move-object v13, v6

    goto :goto_1

    .line 1763
    :cond_5
    move v12, v4

    move-object v13, v6

    goto :goto_1

    .line 1757
    :cond_6
    move v12, v4

    move-object v13, v6

    .line 1768
    .end local v4    # "dsn":Z
    .end local v6    # "notify":Ljava/lang/String;
    .local v12, "dsn":Z
    .local v13, "notify":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    move v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    .end local v0    # "retCode":I
    .end local v1    # "mex":Ljavax/mail/MessagingException;
    .end local v3    # "sfex":Ljavax/mail/MessagingException;
    .local v4, "i":I
    .local v14, "retCode":I
    .local v15, "mex":Ljavax/mail/MessagingException;
    .local v16, "sfex":Ljavax/mail/MessagingException;
    :goto_2
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v1, v0

    const/4 v6, -0x1

    const-string v5, "RSET"

    if-lt v4, v1, :cond_15

    .line 1862
    .end local v4    # "i":I
    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 1863
    const/4 v2, 0x1

    move/from16 v17, v2

    goto :goto_3

    .line 1866
    :cond_7
    move/from16 v17, v2

    .end local v2    # "sendFailed":Z
    .local v17, "sendFailed":Z
    :goto_3
    if-eqz v17, :cond_a

    .line 1868
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1869
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1872
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1873
    const/4 v0, 0x0

    .line 1874
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 1876
    .end local v1    # "j":I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 1878
    .end local v0    # "i":I
    .end local v1    # "j":I
    goto :goto_7

    .line 1877
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_8
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Address;

    aput-object v4, v2, v0

    .line 1876
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_5

    .line 1875
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_9
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Address;

    aput-object v4, v2, v0

    .line 1874
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_4

    .line 1878
    .end local v1    # "j":I
    .end local v3    # "i":I
    :cond_a
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v0, :cond_c

    if-eqz v11, :cond_b

    .line 1879
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_6

    .line 1897
    :cond_b
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_7

    .line 1882
    :cond_c
    :goto_6
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1883
    iput-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1886
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1887
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1890
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1891
    invoke-virtual {v9, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1894
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1895
    invoke-virtual {v8, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1896
    nop

    .line 1902
    :goto_7
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1903
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const-string v1, "  "

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    .line 1904
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Verified Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1905
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_8
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v0, v2, :cond_d

    goto :goto_9

    .line 1906
    :cond_d
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1905
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1909
    .end local v0    # "l":I
    :cond_e
    :goto_9
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_10

    array-length v0, v0

    if-lez v0, :cond_10

    .line 1910
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Valid Unsent Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1911
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_a
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v0, v2, :cond_f

    goto :goto_b

    .line 1912
    :cond_f
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1911
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1915
    .end local v0    # "j":I
    :cond_10
    :goto_b
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_12

    array-length v0, v0

    if-lez v0, :cond_12

    .line 1916
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Invalid Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1917
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_c
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v0, v2, :cond_11

    goto :goto_d

    .line 1918
    :cond_11
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1917
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1924
    .end local v0    # "k":I
    :cond_12
    :goto_d
    if-eqz v17, :cond_14

    .line 1925
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 1926
    nop

    .line 1925
    const-string v1, "Sending failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1927
    const/4 v2, 0x2

    .line 1928
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1929
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1927
    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v5

    move-object v5, v0

    const/4 v0, -0x1

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1932
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1933
    .local v6, "lsr":Ljava/lang/String;
    iget v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1935
    .local v5, "lrc":I
    :try_start_0
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_13

    .line 1936
    move-object/from16 v1, v19

    invoke-virtual {v7, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    :cond_13
    :goto_e
    iput-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1947
    iput v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto :goto_f

    .line 1945
    :catchall_0
    move-exception v0

    move/from16 v20, v14

    move v14, v5

    goto :goto_10

    .line 1937
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1940
    .local v1, "ex":Ljavax/mail/MessagingException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1941
    goto :goto_e

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1943
    .local v0, "ex2":Ljavax/mail/MessagingException;
    :try_start_2
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "close failed"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_e

    .line 1950
    .end local v0    # "ex2":Ljavax/mail/MessagingException;
    .end local v1    # "ex":Ljavax/mail/MessagingException;
    :goto_f
    new-instance v18, Ljavax/mail/SendFailedException;

    .line 1951
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1952
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1950
    const-string v1, "Invalid Addresses"

    move-object/from16 v0, v18

    move-object/from16 v19, v2

    move-object v2, v15

    move/from16 v20, v14

    move v14, v5

    .end local v5    # "lrc":I
    .local v14, "lrc":I
    .local v20, "retCode":I
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v18

    .line 1945
    .end local v20    # "retCode":I
    .restart local v5    # "lrc":I
    .local v14, "retCode":I
    :catchall_1
    move-exception v0

    move/from16 v20, v14

    move v14, v5

    .line 1946
    .end local v5    # "lrc":I
    .local v14, "lrc":I
    .restart local v20    # "retCode":I
    :goto_10
    iput-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1947
    iput v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1948
    throw v0

    .line 1954
    .end local v6    # "lsr":Ljava/lang/String;
    .end local v20    # "retCode":I
    .local v14, "retCode":I
    :cond_14
    return-void

    .line 1770
    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    .restart local v4    # "i":I
    :cond_15
    move-object v1, v5

    move/from16 v20, v14

    const/4 v3, -0x1

    .end local v14    # "retCode":I
    .restart local v20    # "retCode":I
    const/4 v5, 0x0

    .line 1771
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .local v5, "sfex":Ljavax/mail/MessagingException;
    aget-object v0, v0, v4

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .line 1772
    .local v0, "ia":Ljavax/mail/internet/InternetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "RCPT TO:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1773
    .local v6, "cmd":Ljava/lang/String;
    if-eqz v12, :cond_16

    .line 1774
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " NOTIFY="

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1776
    :cond_16
    invoke-virtual {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v14

    .line 1779
    .end local v20    # "retCode":I
    .restart local v14    # "retCode":I
    const/16 v3, 0xfa

    if-eq v14, v3, :cond_22

    const/16 v3, 0xfb

    if-eq v14, v3, :cond_22

    const/16 v3, 0x1f5

    if-eq v14, v3, :cond_1d

    const/16 v3, 0x1f7

    if-eq v14, v3, :cond_1d

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    .line 1827
    const/16 v3, 0x190

    if-lt v14, v3, :cond_17

    const/16 v3, 0x1f3

    if-gt v14, v3, :cond_17

    .line 1829
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1830
    goto :goto_11

    :cond_17
    const/16 v3, 0x1f4

    if-lt v14, v3, :cond_1a

    const/16 v3, 0x257

    if-gt v14, v3, :cond_1a

    .line 1832
    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1833
    nop

    .line 1847
    :goto_11
    if-nez v11, :cond_18

    .line 1848
    const/4 v2, 0x1

    .line 1850
    :cond_18
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1851
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1850
    invoke-direct {v1, v0, v6, v14, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1852
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .local v1, "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_19

    .line 1853
    move-object v3, v1

    move-object/from16 v16, v1

    move-object v15, v3

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .local v3, "mex":Ljavax/mail/MessagingException;
    goto/16 :goto_17

    .line 1855
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_19
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-object/from16 v16, v1

    goto/16 :goto_17

    .line 1835
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_1a
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    move/from16 v17, v2

    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1836
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .local v18, "sfex":Ljavax/mail/MessagingException;
    const-string v5, "got response code "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1837
    const-string v5, ", with response: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1836
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_12

    .line 1835
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_1b
    move-object/from16 v18, v5

    .line 1838
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    :goto_12
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1839
    .local v2, "_lsr":Ljava/lang/String;
    iget v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1840
    .local v3, "_lrc":I
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v5, :cond_1c

    .line 1841
    const/4 v5, -0x1

    invoke-virtual {v7, v1, v5}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1842
    :cond_1c
    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1843
    iput v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1844
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1845
    nop

    .line 1844
    invoke-direct {v1, v0, v6, v14, v2}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    .line 1779
    .end local v3    # "_lrc":I
    .end local v17    # "sendFailed":Z
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .local v2, "sendFailed":Z
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :pswitch_0
    move/from16 v17, v2

    move-object/from16 v18, v5

    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    goto :goto_13

    .end local v17    # "sendFailed":Z
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v2    # "sendFailed":Z
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_1d
    :pswitch_1
    move/from16 v17, v2

    move-object/from16 v18, v5

    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    goto :goto_15

    .line 1813
    :goto_13
    if-nez v11, :cond_1e

    .line 1814
    const/4 v2, 0x1

    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    goto :goto_14

    .line 1813
    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    :cond_1e
    move/from16 v2, v17

    .line 1815
    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    :goto_14
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1817
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1818
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1817
    invoke-direct {v1, v0, v6, v14, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1819
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_1f

    .line 1820
    move-object v3, v1

    move-object/from16 v16, v1

    move-object v15, v3

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .local v3, "mex":Ljavax/mail/MessagingException;
    goto :goto_17

    .line 1822
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_1f
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1823
    move-object/from16 v16, v1

    goto :goto_17

    .line 1799
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    :goto_15
    if-nez v11, :cond_20

    .line 1800
    const/4 v2, 0x1

    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    goto :goto_16

    .line 1799
    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    :cond_20
    move/from16 v2, v17

    .line 1801
    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    :goto_16
    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1803
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1804
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1803
    invoke-direct {v1, v0, v6, v14, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1805
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_21

    .line 1806
    move-object v3, v1

    move-object/from16 v16, v1

    move-object v15, v3

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .restart local v3    # "mex":Ljavax/mail/MessagingException;
    goto :goto_17

    .line 1808
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_21
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1809
    move-object/from16 v16, v1

    goto :goto_17

    .line 1779
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_22
    move/from16 v17, v2

    move-object/from16 v18, v5

    .line 1781
    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1782
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v1, :cond_23

    .line 1783
    move/from16 v2, v17

    move-object/from16 v16, v18

    goto :goto_17

    .line 1789
    :cond_23
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    .line 1790
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1789
    invoke-direct {v1, v0, v6, v14, v2}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1791
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_24

    .line 1792
    move-object v2, v1

    move-object/from16 v16, v1

    move-object v15, v2

    move/from16 v2, v17

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .local v2, "mex":Ljavax/mail/MessagingException;
    goto :goto_17

    .line 1794
    .end local v2    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_24
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1795
    move-object/from16 v16, v1

    move/from16 v2, v17

    .line 1768
    .end local v0    # "ia":Ljavax/mail/internet/InternetAddress;
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v17    # "sendFailed":Z
    .local v2, "sendFailed":Z
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1c2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x226
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readServerResponse()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2274
    const-string v0, "close failed"

    .line 2275
    const-string v1, ""

    .line 2276
    .local v1, "serverResponse":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2277
    .local v2, "returnCode":I
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2282
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 2285
    .local v4, "line":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2286
    const/4 v6, -0x1

    if-nez v4, :cond_2

    .line 2287
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2288
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2289
    const-string v0, "[EOF]"

    move-object v1, v0

    .line 2290
    :cond_1
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2291
    iput v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2292
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "EOF: {0}"

    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2293
    return v6

    .line 2295
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2296
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2297
    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2299
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v7

    .line 2300
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 2314
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_3

    .line 2316
    :try_start_1
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2317
    .end local v2    # "returnCode":I
    .local v0, "returnCode":I
    goto :goto_2

    .line 2325
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :catch_0
    move-exception v4

    .line 2327
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2328
    goto :goto_0

    :catch_1
    move-exception v5

    .line 2330
    .local v5, "mex":Ljavax/mail/MessagingException;
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v0, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2332
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    :goto_0
    const/4 v0, -0x1

    .line 2334
    .end local v2    # "returnCode":I
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v0    # "returnCode":I
    goto :goto_2

    .line 2317
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :catch_2
    move-exception v4

    .line 2319
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2320
    goto :goto_1

    :catch_3
    move-exception v5

    .line 2322
    .restart local v5    # "mex":Ljavax/mail/MessagingException;
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v0, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2324
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    :goto_1
    const/4 v0, -0x1

    .end local v2    # "returnCode":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "returnCode":I
    goto :goto_2

    .line 2335
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :cond_3
    const/4 v0, -0x1

    .line 2337
    .end local v2    # "returnCode":I
    .restart local v0    # "returnCode":I
    :goto_2
    if-ne v0, v6, :cond_4

    .line 2338
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "bad server response: {0}"

    invoke-virtual {v2, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2340
    :cond_4
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2341
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2342
    return v0

    .line 2300
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :catch_4
    move-exception v0

    .line 2301
    .local v0, "ioex":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "exception reading response"

    invoke-virtual {v4, v6, v7, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2303
    const-string v4, ""

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2304
    iput v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2305
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Exception reading response"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "allowed"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1050
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    .local v0, "serviceHost":Ljava/lang/String;
    goto :goto_0

    .line 1053
    .end local v0    # "serviceHost":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 1054
    .restart local v0    # "serviceHost":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    if-nez v1, :cond_1

    .line 1057
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sun.mail.smtp.SMTPSaslAuthenticator"

    .line 1056
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1058
    .local v2, "sac":Ljava/lang/Class;
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    .line 1059
    const-class v5, Lcom/sun/mail/smtp/SMTPTransport;

    aput-object v5, v4, v1

    .line 1060
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 1061
    const-class v5, Ljava/util/Properties;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 1062
    const-class v5, Lcom/sun/mail/util/MailLogger;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 1063
    const-class v5, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v5, v4, v9

    .line 1058
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1065
    .local v4, "c":Ljava/lang/reflect/Constructor;
    nop

    .line 1066
    new-array v3, v3, [Ljava/lang/Object;

    .line 1067
    aput-object p0, v3, v1

    .line 1068
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    aput-object v5, v3, v6

    .line 1069
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1070
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v5, v3, v8

    .line 1071
    aput-object v0, v3, v9

    .line 1065
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/smtp/SaslAuthenticator;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v2    # "sac":Ljava/lang/Class;
    .end local v4    # "c":Ljava/lang/reflect/Constructor;
    goto :goto_1

    :catch_0
    move-exception v2

    .line 1074
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Can\'t load SASL authenticator"

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1076
    return v1

    .line 1082
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    .line 1084
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1085
    .local v1, "v":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p1

    if-lt v2, v3, :cond_2

    .line 1088
    .end local v2    # "i":I
    goto :goto_4

    .line 1086
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1087
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1090
    .end local v1    # "v":Ljava/util/List;
    .end local v2    # "i":I
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .restart local v1    # "v":Ljava/util/List;
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v2, :cond_6

    .line 1092
    const-string v3, "AUTH"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1093
    .local v2, "a":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1094
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v3, "st":Ljava/util/StringTokenizer;
    nop

    :goto_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    .line 1096
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1100
    .end local v2    # "a":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1102
    .local v2, "mechs":[Ljava/lang/String;
    :try_start_1
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1103
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "SASL AUTH command trace suppressed"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1104
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    .line 1106
    :cond_7
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sun/mail/smtp/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1106
    return v3

    .line 1107
    :catchall_0
    move-exception v3

    .line 1108
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1109
    throw v3
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2247
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2248
    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 21
    .param p1, "message"    # Ljavax/mail/Message;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    monitor-enter p0

    .line 1150
    if-eqz v8, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageStart(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    .line 1155
    instance-of v0, v8, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_a

    .line 1159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, v9

    if-lt v0, v1, :cond_8

    .line 1165
    .end local v0    # "i":I
    array-length v0, v9

    if-eqz v0, :cond_7

    .line 1168
    move-object v0, v8

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1169
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1170
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1171
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    .line 1173
    const/4 v0, 0x0

    .line 1174
    .local v0, "use8bit":Z
    instance-of v1, v8, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_1

    .line 1175
    move-object v1, v8

    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v1

    move v0, v1

    .line 1176
    :cond_1
    const/4 v10, 0x0

    if-nez v0, :cond_2

    .line 1177
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 1178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".allow8bitmime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-static {v1, v2, v10}, Lcom/sun/mail/util/PropUtil;->getBooleanSessionProperty(Ljavax/mail/Session;Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    move v11, v0

    goto :goto_2

    .line 1176
    :cond_2
    move v11, v0

    .line 1179
    .end local v0    # "use8bit":Z
    .local v11, "use8bit":Z
    :goto_2
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1180
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use8bit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1181
    :cond_3
    if-eqz v11, :cond_4

    const-string v0, "8BITMIME"

    invoke-virtual {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1182
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 1186
    :try_start_1
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1187
    :catch_0
    move-exception v0

    .line 1194
    :cond_4
    :goto_3
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    .line 1196
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    .line 1198
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-nez v0, :cond_5

    .line 1212
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "message successfully delivered to mail server"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1213
    const/4 v2, 0x1

    .line 1214
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1215
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1213
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1216
    nop

    .line 1249
    :try_start_3
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1250
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1251
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1252
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1253
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1254
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1256
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1257
    monitor-exit p0

    return-void

    .line 1201
    :cond_5
    :try_start_4
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Sending partially failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1203
    nop

    .line 1204
    const/4 v2, 0x3

    .line 1205
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1206
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1203
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1208
    new-instance v0, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v14, "."

    iget v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1209
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1210
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1208
    move-object v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v13 .. v20}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1247
    .restart local v11    # "use8bit":Z
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catchall_0
    move-exception v0

    goto :goto_8

    .line 1233
    :catch_1
    move-exception v0

    move-object v13, v0

    .line 1234
    .local v13, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "IOException while sending, closing"

    invoke-virtual {v0, v1, v2, v13}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1238
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1239
    :goto_4
    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 1240
    :goto_5
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    .line 1241
    const/4 v2, 0x2

    .line 1242
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1243
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1241
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1245
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while sending message"

    .line 1246
    nop

    .line 1245
    invoke-direct {v0, v1, v13}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0

    .line 1216
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v11    # "use8bit":Z
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catch_3
    move-exception v0

    move-object v13, v0

    .line 1217
    .local v13, "mex":Ljavax/mail/MessagingException;
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "MessagingException while sending"

    invoke-virtual {v0, v1, v2, v13}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1219
    invoke-virtual {v13}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_6

    .line 1222
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "nested IOException, closing"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1224
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1225
    :goto_6
    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    .line 1227
    :cond_6
    :goto_7
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    .line 1228
    const/4 v2, 0x2

    .line 1229
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1230
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1228
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1232
    nop

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1249
    .end local v13    # "mex":Ljavax/mail/MessagingException;
    .restart local v11    # "use8bit":Z
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :goto_8
    :try_start_a
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1250
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1251
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1252
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1253
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1254
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1255
    throw v0

    .line 1166
    .end local v11    # "use8bit":Z
    :cond_7
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    .local v0, "i":I
    :cond_8
    aget-object v1, v9, v0

    instance-of v1, v1, Ljavax/mail/internet/InternetAddress;

    if-eqz v1, :cond_9

    .line 1159
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1161
    :cond_9
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1162
    const-string v3, " is not an InternetAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1156
    .end local v0    # "i":I
    :cond_a
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Can only send RFC822 msgs"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "SMTP can only send RFC822 messages"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1149
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthorizationID(Ljava/lang/String;)V
    .locals 0
    .param p1, "authzid"    # Ljava/lang/String;

    monitor-enter p0

    .line 326
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "authzid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "localhost"    # Ljava/lang/String;

    monitor-enter p0

    .line 284
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 283
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "localhost":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNTLMDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "ntlmDomain"    # Ljava/lang/String;

    monitor-enter p0

    .line 472
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 471
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "ntlmDomain":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNoopStrict(Z)V
    .locals 0
    .param p1, "noopStrict"    # Z

    monitor-enter p0

    .line 604
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 603
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "noopStrict":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .locals 0
    .param p1, "reportSuccess"    # Z

    monitor-enter p0

    .line 501
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 500
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "reportSuccess":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRequireStartTLS(Z)V
    .locals 0
    .param p1, "requireStartTLS"    # Z

    monitor-enter p0

    .line 546
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 545
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "requireStartTLS":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLEnabled(Z)V
    .locals 0
    .param p1, "enableSASL"    # Z

    monitor-enter p0

    .line 348
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 347
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "enableSASL":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLMechanisms([Ljava/lang/String;)V
    .locals 1
    .param p1, "mechanisms"    # [Ljava/lang/String;

    monitor-enter p0

    .line 443
    if-eqz p1, :cond_0

    .line 444
    :try_start_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    .line 445
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 442
    .end local p1    # "mechanisms":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "saslRealm"    # Ljava/lang/String;

    monitor-enter p0

    .line 376
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 375
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "saslRealm":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTLS(Z)V
    .locals 0
    .param p1, "useStartTLS"    # Z

    monitor-enter p0

    .line 524
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 523
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useStartTLS":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseCanonicalHostName(Z)V
    .locals 0
    .param p1, "useCanonicalHostName"    # Z

    monitor-enter p0

    .line 399
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 398
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useCanonicalHostName":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRset(Z)V
    .locals 0
    .param p1, "useRset"    # Z

    monitor-enter p0

    .line 580
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 579
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useRset":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2219
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2218
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "cmd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected simpleCommand([B)I
    .locals 1
    .param p1, "cmd"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2233
    nop

    .line 2234
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2235
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    return v0
.end method

.method protected startTLS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1992
    const-string v0, "STARTTLS"

    const/16 v1, 0xdc

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1995
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 1996
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1995
    invoke-static {v0, v1, v2, v3}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1997
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    nop

    .line 2003
    return-void

    .line 1998
    :catch_0
    move-exception v0

    .line 1999
    .local v0, "ioex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 2000
    new-instance v1, Ljavax/mail/MessagingException;

    .line 2001
    nop

    .line 2000
    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "auth"    # Ljava/lang/String;

    .line 2413
    nop

    .line 2414
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2415
    return v1

    .line 2416
    :cond_0
    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2417
    .local v0, "a":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2418
    return v1

    .line 2419
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2420
    .local v2, "st":Ljava/util/StringTokenizer;
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 2426
    const-string v3, "LOGIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AUTH=LOGIN"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2427
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "use AUTH=LOGIN hack"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2428
    return v4

    .line 2430
    :cond_2
    return v1

    .line 2421
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2422
    .local v3, "tok":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2423
    return v4

    .line 2422
    :cond_4
    goto :goto_0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .line 2384
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2385
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2384
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
