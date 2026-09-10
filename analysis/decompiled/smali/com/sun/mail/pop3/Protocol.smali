.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static final SLOP:I = 0x80

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private capabilities:Ljava/util/Map;

.field private host:Ljava/lang/String;

.field private input:Ljava/io/BufferedReader;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private noauthdebug:Z

.field private output:Ljava/io/PrintWriter;

.field private pipelining:Z

.field private prefix:Ljava/lang/String;

.field private props:Ljava/util/Properties;

.field private socket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private traceSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/pop3/Protocol;->$assertionsDisabled:Z

    .line 319
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    .line 322
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    nop

    :array_0
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "logger"    # Lcom/sun/mail/util/MailLogger;
    .param p4, "props"    # Ljava/util/Properties;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 78
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    .line 80
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 94
    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    .line 96
    iput-object p5, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    .line 98
    const-string v6, "protocol"

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 100
    const-string v6, "mail.debug.auth"

    const/4 v7, 0x0

    .line 99
    invoke-static {p4, v6, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v6

    .line 100
    if-eqz v6, :cond_2

    const/4 v6, 0x0

    .line 99
    :goto_0
    iput-boolean v6, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".apop.enable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p4, v6}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    .line 104
    .local v3, "enableAPOP":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".disablecapa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p4, v6}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v2

    .line 106
    .local v2, "disableCapa":Z
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 107
    const/16 p2, 0x6e

    .line 108
    :cond_0
    :try_start_0
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "connecting to host \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 110
    const-string v7, "\", port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isSSL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-virtual {p3, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-static {p1, p2, p4, p5, p6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 113
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V

    .line 114
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 123
    .local v5, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v6, v5, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v6, :cond_3

    .line 125
    :try_start_1
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_1
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connect failed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    .end local v2    # "disableCapa":Z
    .end local v3    # "enableAPOP":Z
    .end local v5    # "r":Lcom/sun/mail/pop3/Response;
    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 115
    .restart local v2    # "disableCapa":Z
    .restart local v3    # "enableAPOP":Z
    :catch_0
    move-exception v4

    .line 117
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :goto_2
    throw v4

    .line 130
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v5    # "r":Lcom/sun/mail/pop3/Response;
    :cond_3
    if-eqz v3, :cond_5

    .line 131
    iget-object v6, v5, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v7, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 132
    .local v1, "challStart":I
    iget-object v6, v5, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 133
    .local v0, "challEnd":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    .line 134
    iget-object v6, v5, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 135
    :cond_4
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "APOP challenge: {0}"

    iget-object v8, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {p3, v6, v7, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .end local v0    # "challEnd":I
    .end local v1    # "challStart":I
    :cond_5
    if-nez v2, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    .line 142
    :cond_6
    const-string v6, "PIPELINING"

    invoke-virtual {p0, v6}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".pipelining"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p4, v6, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x0

    .line 142
    :goto_3
    iput-boolean v6, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    .line 144
    iget-boolean v6, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v6, :cond_7

    .line 145
    const-string v6, "PIPELINING enabled"

    invoke-virtual {p3, v6}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 146
    :cond_7
    return-void

    .line 143
    :cond_8
    const/4 v6, 0x1

    goto :goto_3

    :catchall_0
    move-exception v6

    goto :goto_1

    .end local v5    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v4    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    goto :goto_2
.end method

.method private batchCommandContinue(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 849
    return-void
.end method

.method private batchCommandEnd()V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method private batchCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 848
    return-void
.end method

.method private final declared-synchronized getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prop"    # Ljava/lang/String;

    .prologue
    .line 154
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, "val":Z
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return v0

    .line 154
    .end local v0    # "val":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 310
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v6, "iso-8859-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 316
    .local v0, "digest":[B
    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object v5

    .end local v0    # "digest":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v5

    .line 311
    :catch_0
    move-exception v3

    .line 312
    .local v3, "nsae":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 313
    .end local v3    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 314
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private initStreams()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    .line 162
    const-string v2, "mail.debug.quote"

    const/4 v3, 0x0

    .line 161
    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, "quote":Z
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 163
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 165
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 168
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 167
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 169
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 172
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 173
    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 174
    new-instance v1, Ljava/io/PrintWriter;

    .line 175
    new-instance v2, Ljava/io/BufferedWriter;

    .line 176
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    const-string v5, "iso-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 175
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 174
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 177
    return-void
.end method

.method private issueCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    if-eqz p1, :cond_1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 707
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 710
    :cond_1
    return-void
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 767
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 768
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v1, :cond_0

    .line 769
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    .line 774
    :goto_0
    return-object v0

    .line 772
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 773
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    goto :goto_0
.end method

.method private multilineCommandEnd()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method private multilineCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 846
    return-void
.end method

.method private readMultilineResponse(I)Ljava/io/InputStream;
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    new-instance v1, Lcom/sun/mail/util/SharedByteArrayOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/SharedByteArrayOutputStream;-><init>(I)V

    .line 785
    .local v1, "buf":Lcom/sun/mail/util/SharedByteArrayOutputStream;
    const/16 v3, 0xa

    .line 787
    .local v3, "lastb":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "b":I
    if-gez v0, :cond_0

    .line 808
    :goto_1
    if-gez v0, :cond_2

    .line 809
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF on socket"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 788
    :cond_0
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_1

    .line 789
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 790
    const/16 v4, 0xd

    if-ne v0, v4, :cond_1

    .line 792
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 793
    goto :goto_1

    .line 796
    :cond_1
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 797
    move v3, v0

    goto :goto_0

    .line 799
    .end local v0    # "b":I
    :catch_0
    move-exception v2

    .line 804
    .local v2, "iioex":Ljava/io/InterruptedIOException;
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 806
    :goto_2
    throw v2

    .line 810
    .end local v2    # "iioex":Ljava/io/InterruptedIOException;
    .restart local v0    # "b":I
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object v4

    return-object v4

    .line 805
    .end local v0    # "b":I
    .restart local v2    # "iioex":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private readResponse()Lcom/sun/mail/pop3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v3, 0x0

    .line 718
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 743
    if-nez v3, :cond_0

    .line 744
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "<EOF>"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 745
    new-instance v5, Ljava/io/EOFException;

    const-string v6, "EOF on socket"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 719
    :catch_0
    move-exception v2

    .line 727
    .local v2, "iioex":Ljava/io/InterruptedIOException;
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 729
    :goto_0
    new-instance v5, Ljava/io/EOFException;

    invoke-virtual {v2}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 730
    .end local v2    # "iioex":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, "ex":Ljava/net/SocketException;
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 740
    :goto_1
    new-instance v5, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 747
    .end local v0    # "ex":Ljava/net/SocketException;
    :cond_0
    new-instance v4, Lcom/sun/mail/pop3/Response;

    invoke-direct {v4}, Lcom/sun/mail/pop3/Response;-><init>()V

    .line 748
    .local v4, "r":Lcom/sun/mail/pop3/Response;
    const-string v5, "+OK"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 749
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 755
    :goto_2
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "i":I
    if-ltz v1, :cond_1

    .line 756
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 757
    :cond_1
    return-object v4

    .line 750
    .end local v1    # "i":I
    :cond_2
    const-string v5, "-ERR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 751
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_2

    .line 753
    :cond_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 739
    .end local v4    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v0    # "ex":Ljava/net/SocketException;
    :catch_2
    move-exception v5

    goto :goto_1

    .line 728
    .end local v0    # "ex":Ljava/net/SocketException;
    .restart local v2    # "iioex":Ljava/io/InterruptedIOException;
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method private resumeTracing()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 835
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 837
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 839
    :cond_0
    return-void
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommandStart(Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 693
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 694
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->simpleCommandEnd()V

    .line 695
    return-object v0
.end method

.method private simpleCommandEnd()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method private simpleCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 844
    return-void
.end method

.method private suspendTracing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 825
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 827
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 829
    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 328
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 330
    .local v3, "result":[C
    const/4 v2, 0x0

    .local v2, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 335
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 331
    :cond_0
    aget-byte v5, p0, v2

    and-int/lit16 v4, v5, 0xff

    .line 332
    .local v4, "temp":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    .line 333
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized capa()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    const-string v1, "CAPA"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 682
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 683
    const/4 v1, 0x0

    .line 684
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized dele(I)Z
    .locals 3
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 580
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 579
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 180
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 181
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    .line 184
    :cond_0
    return-void
.end method

.method declared-synchronized getCapabilities()Ljava/util/Map;
    .locals 1

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isSSL()Z
    .locals 1

    .prologue
    .line 673
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isTracing()Z
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized list(I)I
    .locals 5
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 393
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    const/4 v1, -0x1

    .line 394
    .local v1, "size":I
    iget-boolean v3, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 396
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 397
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 398
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 403
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 392
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 399
    .restart local v0    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v1    # "size":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    const-string v1, "LIST"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 411
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 410
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v5, v5, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    .line 249
    .local v0, "batch":Z
    :goto_0
    :try_start_1
    iget-boolean v5, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "authentication command trace suppressed"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->suspendTracing()V

    .line 253
    :cond_0
    const/4 v2, 0x0

    .line 254
    .local v2, "dpw":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 255
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "APOP "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v4

    .line 280
    .local v4, "r":Lcom/sun/mail/pop3/Response;
    :goto_1
    iget-boolean v5, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "authentication command {0}"

    .line 282
    iget-boolean v5, v4, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v5, :cond_a

    const-string v5, "succeeded"

    .line 281
    :goto_2
    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_2
    iget-boolean v5, v4, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v5, :cond_c

    .line 284
    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :goto_3
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    :goto_4
    monitor-exit p0

    return-object v5

    .line 245
    .end local v0    # "batch":Z
    .end local v2    # "dpw":Ljava/lang/String;
    .end local v4    # "r":Lcom/sun/mail/pop3/Response;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    .restart local v0    # "batch":Z
    .restart local v2    # "dpw":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_7

    .line 259
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "USER "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "cmd":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PASS "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v4

    .line 266
    .restart local v4    # "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v5, v4, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v5, :cond_6

    .line 267
    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v3, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 268
    .local v3, "err":Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    .line 269
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, v3

    .line 270
    goto :goto_4

    .line 267
    .end local v3    # "err":Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v3, "USER command failed"

    goto :goto_5

    .line 272
    :cond_6
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v4

    .line 273
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 287
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "dpw":Ljava/lang/String;
    .end local v4    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v5

    .line 288
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V

    .line 289
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    .end local v0    # "batch":Z
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 275
    .restart local v0    # "batch":Z
    .restart local v2    # "dpw":Ljava/lang/String;
    :cond_7
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "USER "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v4

    .line 276
    .restart local v4    # "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v5, v4, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v5, :cond_9

    .line 277
    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 288
    :goto_6
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 277
    :cond_8
    :try_start_9
    const-string v5, "USER command failed"

    goto :goto_6

    .line 278
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PASS "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v4

    goto/16 :goto_1

    .line 282
    :cond_a
    const-string v5, "failed"

    goto/16 :goto_2

    .line 284
    :cond_b
    const-string v5, "login failed"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 288
    :cond_c
    :try_start_a
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 285
    const/4 v5, 0x0

    goto/16 :goto_4
.end method

.method declared-synchronized noop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    const-string v1, "NOOP"

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 628
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 627
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized quit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    const/4 v0, 0x0

    .line 344
    .local v0, "ok":Z
    :try_start_0
    const-string v2, "QUIT"

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 345
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v0, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 350
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    monitor-exit p0

    return v0

    .line 346
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v2

    .line 348
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 350
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 354
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 342
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 349
    :catchall_2
    move-exception v2

    .line 350
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 353
    throw v2

    .line 349
    .restart local v1    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_3
    move-exception v2

    .line 350
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 353
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method declared-synchronized retr(II)Ljava/io/InputStream;
    .locals 9
    .param p1, "msg"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 423
    monitor-enter p0

    if-nez p2, :cond_4

    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    .line 424
    .local v0, "batch":Z
    :goto_0
    if-eqz v0, :cond_7

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LIST "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "cmd":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RETR "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 432
    .local v3, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v6, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 435
    :try_start_1
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 436
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 437
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p2

    .line 439
    if-gt p2, v8, :cond_0

    if-gez p2, :cond_5

    .line 440
    :cond_0
    const/4 p2, 0x0

    .line 449
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 450
    iget-boolean v6, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_2

    .line 451
    add-int/lit16 v6, p2, 0x80

    invoke-direct {p0, v6}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 452
    :cond_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    .line 492
    :goto_2
    iget-boolean v6, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_3

    .line 493
    if-lez p2, :cond_3

    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 494
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "got message size "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 496
    :cond_3
    iget-object v6, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    return-object v6

    .line 423
    .end local v0    # "batch":Z
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 442
    .restart local v0    # "batch":Z
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v3    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 443
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pipeline message size "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    :cond_6
    add-int/lit16 p2, p2, 0x80

    goto :goto_1

    .line 454
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_7
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RETR "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .restart local v1    # "cmd":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 458
    .restart local v3    # "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v6, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v6, :cond_8

    .line 459
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    .line 460
    const/4 v6, 0x0

    goto :goto_3

    .line 470
    :cond_8
    if-gtz p2, :cond_a

    iget-object v6, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_a

    .line 472
    :try_start_5
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 473
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "octets":Ljava/lang/String;
    const-string v6, "octets"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 476
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result p2

    .line 478
    if-gt p2, v8, :cond_9

    if-gez p2, :cond_b

    .line 479
    :cond_9
    const/4 p2, 0x0

    .line 489
    .end local v2    # "octets":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_a
    :goto_4
    :try_start_6
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 490
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 423
    .end local v0    # "batch":Z
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 481
    .restart local v0    # "batch":Z
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v2    # "octets":Ljava/lang/String;
    .restart local v3    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_b
    :try_start_7
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 482
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "guessing message size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 483
    :cond_c
    add-int/lit16 p2, p2, 0x80

    goto :goto_4

    .line 486
    .end local v2    # "octets":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v6

    goto :goto_4

    .line 446
    :catch_1
    move-exception v6

    goto/16 :goto_1
.end method

.method declared-synchronized retr(ILjava/io/OutputStream;)Z
    .locals 10
    .param p1, "msg"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RETR "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "cmd":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v5

    .line 508
    .local v5, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v7, v5, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v7, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    const/4 v7, 0x0

    .line 564
    :goto_0
    monitor-exit p0

    return v7

    .line 513
    :cond_0
    const/4 v6, 0x0

    .line 514
    .local v6, "terr":Ljava/lang/Throwable;
    const/16 v4, 0xa

    .line 516
    .local v4, "lastb":I
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .local v0, "b":I
    if-gez v0, :cond_1

    .line 552
    :goto_2
    if-gez v0, :cond_4

    .line 553
    :try_start_2
    new-instance v7, Ljava/io/EOFException;

    const-string v8, "EOF on socket"

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    .end local v0    # "b":I
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v4    # "lastb":I
    .end local v5    # "r":Lcom/sun/mail/pop3/Response;
    .end local v6    # "terr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 517
    .restart local v0    # "b":I
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v4    # "lastb":I
    .restart local v5    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v6    # "terr":Ljava/lang/Throwable;
    :cond_1
    const/16 v7, 0xa

    if-ne v4, v7, :cond_2

    const/16 v7, 0x2e

    if-ne v0, v7, :cond_2

    .line 518
    :try_start_3
    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 519
    const/16 v7, 0xd

    if-ne v0, v7, :cond_2

    .line 521
    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->read()I
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 522
    goto :goto_2

    .line 530
    :cond_2
    if-nez v6, :cond_3

    .line 532
    :try_start_4
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    :cond_3
    :goto_3
    move v4, v0

    goto :goto_1

    .line 533
    :catch_0
    move-exception v2

    .line 534
    .local v2, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "exception while streaming"

    invoke-virtual {v7, v8, v9, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    move-object v6, v2

    goto :goto_3

    .line 536
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 537
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "exception while streaming"

    invoke-virtual {v7, v8, v9, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 538
    move-object v6, v2

    goto :goto_3

    .line 543
    .end local v0    # "b":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 548
    .local v3, "iioex":Ljava/io/InterruptedIOException;
    :try_start_6
    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 550
    :goto_4
    :try_start_7
    throw v3

    .line 556
    .end local v3    # "iioex":Ljava/io/InterruptedIOException;
    .restart local v0    # "b":I
    :cond_4
    if-eqz v6, :cond_7

    .line 557
    instance-of v7, v6, Ljava/io/IOException;

    if-eqz v7, :cond_5

    .line 558
    check-cast v6, Ljava/io/IOException;

    .end local v6    # "terr":Ljava/lang/Throwable;
    throw v6

    .line 559
    .restart local v6    # "terr":Ljava/lang/Throwable;
    :cond_5
    instance-of v7, v6, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_6

    .line 560
    check-cast v6, Ljava/lang/RuntimeException;

    .end local v6    # "terr":Ljava/lang/Throwable;
    throw v6

    .line 561
    .restart local v6    # "terr":Ljava/lang/Throwable;
    :cond_6
    sget-boolean v7, Lcom/sun/mail/pop3/Protocol;->$assertionsDisabled:Z

    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 563
    :cond_7
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 564
    const/4 v7, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "b":I
    .restart local v3    # "iioex":Ljava/io/InterruptedIOException;
    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method declared-synchronized rset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    const-string v1, "RSET"

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 636
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 635
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setCapabilities(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 190
    monitor-enter p0

    if-nez p1, :cond_0

    .line 191
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v3, 0x0

    .line 198
    .local v3, "r":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string/jumbo v7, "us-ascii"

    invoke-direct {v6, p1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "r":Ljava/io/BufferedReader;
    .local v4, "r":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 205
    .end local v4    # "r":Ljava/io/BufferedReader;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 216
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    goto :goto_0

    .line 199
    .end local v5    # "s":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    sget-boolean v6, Lcom/sun/mail/pop3/Protocol;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "r":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 206
    .restart local v3    # "r":Ljava/io/BufferedReader;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 207
    .local v0, "cap":Ljava/lang/String;
    const/16 v6, 0x20

    :try_start_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 208
    .local v2, "i":I
    if-lez v2, :cond_3

    .line 209
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_3
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 212
    .end local v0    # "cap":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "s":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 216
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 217
    :catch_3
    move-exception v6

    goto :goto_0

    .line 214
    :catchall_1
    move-exception v6

    .line 216
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 218
    :goto_2
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 217
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    const-string v3, "STAT"

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 364
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    new-instance v1, Lcom/sun/mail/pop3/Status;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V

    .line 374
    .local v1, "s":Lcom/sun/mail/pop3/Status;
    iget-boolean v3, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v3, :cond_0

    .line 375
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "STAT command failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "s":Lcom/sun/mail/pop3/Status;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 377
    .restart local v0    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v1    # "s":Lcom/sun/mail/pop3/Status;
    :cond_0
    :try_start_1
    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 379
    :try_start_2
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 380
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->total:I

    .line 381
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->size:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 382
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method declared-synchronized stls()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v3, v3, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 645
    const/4 v3, 0x1

    .line 666
    :goto_0
    monitor-exit p0

    return v3

    .line 646
    :cond_0
    :try_start_1
    const-string v3, "STLS"

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 647
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 650
    :try_start_2
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 651
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    :cond_1
    :try_start_3
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 654
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 656
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 657
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 658
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 661
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not convert socket to TLS"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 662
    .local v2, "sioex":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 663
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 644
    .end local v0    # "ioex":Ljava/io/IOException;
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "sioex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 655
    .restart local v0    # "ioex":Ljava/io/IOException;
    .restart local v1    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_1
    move-exception v3

    .line 656
    const/4 v4, 0x0

    :try_start_6
    iput-object v4, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 657
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 658
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 659
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .locals 3
    .param p1, "msg"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TOP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 572
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 571
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 587
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UIDL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 588
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 594
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 590
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 591
    .local v0, "i":I
    if-lez v0, :cond_0

    .line 592
    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 587
    .end local v0    # "i":I
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .locals 9
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 602
    monitor-enter p0

    :try_start_0
    const-string v7, "UIDL"

    array-length v8, p1

    mul-int/lit8 v8, v8, 0xf

    invoke-direct {p0, v7, v8}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v4

    .line 603
    .local v4, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v7, v4, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 620
    :goto_0
    monitor-exit p0

    return v5

    .line 605
    :cond_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v2, v5}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 606
    .local v2, "lis":Lcom/sun/mail/util/LineInputStream;
    const/4 v1, 0x0

    .line 607
    .local v1, "line":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    .line 616
    :try_start_2
    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move v5, v6

    .line 620
    goto :goto_0

    .line 608
    :cond_2
    const/16 v5, 0x20

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 609
    .local v0, "i":I
    if-lt v0, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 611
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 612
    .local v3, "n":I
    if-lez v3, :cond_1

    array-length v5, p1

    if-gt v3, v5, :cond_1

    .line 613
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 602
    .end local v0    # "i":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .end local v3    # "n":I
    .end local v4    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 617
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .restart local v4    # "r":Lcom/sun/mail/pop3/Response;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
