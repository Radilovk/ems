.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

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

    .line 66
    nop

    .line 319
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 320
    nop

    .line 321
    nop

    .line 319
    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    .line 322
    return-void

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
    .locals 16
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

    .line 91
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 78
    iput-object v0, v1, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    .line 80
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 94
    iput-object v2, v1, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    .line 95
    iput-object v4, v1, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    .line 96
    iput-object v5, v1, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    .line 97
    iput-object v3, v1, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    .line 98
    const-string v8, "protocol"

    invoke-virtual {v3, v8, v0}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v8

    iput-object v8, v1, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 99
    nop

    .line 100
    nop

    .line 99
    const-string v8, "mail.debug.auth"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    .line 100
    nop

    .line 99
    xor-int/2addr v8, v7

    iput-boolean v8, v1, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".apop.enable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v4, v8}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v8

    .line 104
    .local v8, "enableAPOP":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".disablecapa"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v4, v10}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v10

    .line 106
    .local v10, "disableCapa":Z
    const/4 v11, -0x1

    move/from16 v12, p2

    if-ne v12, v11, :cond_0

    .line 107
    const/16 v12, 0x6e

    .line 108
    .end local p2    # "port":I
    .local v12, "port":I
    :cond_0
    :try_start_0
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v13}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 109
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "connecting to host \""

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v14, "\", port "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", isSSL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 109
    invoke-virtual {v3, v13}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-static {v2, v12, v4, v5, v6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v13

    iput-object v13, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V

    .line 114
    invoke-direct {v1, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    .line 115
    .local v13, "r":Lcom/sun/mail/pop3/Response;
    nop

    .line 123
    iget-boolean v0, v13, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v0, :cond_7

    .line 130
    if-eqz v8, :cond_3

    .line 131
    iget-object v0, v13, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v14, 0x3c

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 132
    .local v0, "challStart":I
    iget-object v14, v13, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v15, 0x3e

    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 133
    .local v14, "challEnd":I
    if-eq v0, v11, :cond_2

    if-eq v14, v11, :cond_2

    .line 134
    iget-object v11, v13, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 135
    :cond_2
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v15, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    const-string v7, "APOP challenge: {0}"

    invoke-virtual {v3, v11, v7, v15}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .end local v0    # "challStart":I
    .end local v14    # "challEnd":I
    :cond_3
    if-nez v10, :cond_4

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    .line 142
    :cond_4
    const-string v0, "PIPELINING"

    invoke-virtual {v1, v0}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".pipelining"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    .line 142
    :goto_0
    iput-boolean v7, v1, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    .line 144
    if-eqz v7, :cond_6

    .line 145
    const-string v0, "PIPELINING enabled"

    invoke-virtual {v3, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 146
    :cond_6
    return-void

    .line 125
    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    :goto_1
    nop

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string v7, "Connect failed"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    .end local v13    # "r":Lcom/sun/mail/pop3/Response;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 117
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_2
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 118
    :catchall_1
    move-exception v0

    :goto_2
    nop

    .line 119
    throw v7
.end method

.method private batchCommandContinue(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 849
    return-void
.end method

.method private batchCommandEnd()V
    .locals 0

    .line 850
    return-void
.end method

.method private batchCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 848
    return-void
.end method

.method private final declared-synchronized getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prop"    # Ljava/lang/String;

    monitor-enter p0

    .line 154
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

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

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    monitor-exit p0

    return v0

    .line 153
    .end local v0    # "val":Z
    .end local p1    # "props":Ljava/util/Properties;
    .end local p2    # "prop":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 310
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v3, "iso-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v2    # "md":Ljava/security/MessageDigest;
    .local v1, "digest":[B
    nop

    .line 316
    invoke-static {v1}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    .end local v1    # "digest":[B
    :catch_0
    move-exception v2

    .line 314
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    return-object v1

    .line 311
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 312
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    return-object v1
.end method

.method private initStreams()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    .line 162
    nop

    .line 161
    const-string v1, "mail.debug.quote"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    .local v0, "quote":Z
    nop

    .line 164
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 163
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 165
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 167
    nop

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

    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v3, v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

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

    .line 702
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 705
    if-eqz p1, :cond_0

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 707
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 710
    :cond_0
    return-void

    .line 703
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 770
    return-object v0

    .line 772
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 773
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    .line 774
    return-object v0
.end method

.method private multilineCommandEnd()V
    .locals 0

    .line 847
    return-void
.end method

.method private multilineCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 846
    return-void
.end method

.method private readMultilineResponse(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    new-instance v0, Lcom/sun/mail/util/SharedByteArrayOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/SharedByteArrayOutputStream;-><init>(I)V

    .line 785
    .local v0, "buf":Lcom/sun/mail/util/SharedByteArrayOutputStream;
    const/16 v1, 0xa

    .line 787
    .local v1, "lastb":I
    nop

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-gez v2, :cond_0

    .line 799
    goto :goto_1

    .line 788
    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    const/16 v2, 0x2e

    if-ne v3, v2, :cond_2

    .line 789
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .line 790
    const/16 v2, 0xd

    if-ne v3, v2, :cond_2

    .line 792
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 793
    nop

    .line 808
    :goto_1
    if-ltz v3, :cond_1

    .line 810
    invoke-virtual {v0}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 809
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    const-string v4, "EOF on socket"

    invoke-direct {v2, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :cond_2
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 797
    move v1, v3

    goto :goto_0

    .line 799
    .end local v3    # "b":I
    :catch_0
    move-exception v2

    .line 804
    .local v2, "iioex":Ljava/io/InterruptedIOException;
    :try_start_2
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 805
    :catch_1
    move-exception v3

    :goto_2
    nop

    .line 806
    throw v2
.end method

.method private readResponse()Lcom/sun/mail/pop3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 719
    nop

    .line 743
    if-eqz v0, :cond_3

    .line 747
    new-instance v1, Lcom/sun/mail/pop3/Response;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Response;-><init>()V

    .line 748
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    const-string v2, "+OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_0

    .line 750
    :cond_0
    const-string v2, "-ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 751
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 755
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-ltz v2, :cond_1

    .line 756
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 757
    :cond_1
    return-object v1

    .line 753
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "<EOF>"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 745
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF on socket"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 730
    :catch_0
    move-exception v1

    .line 738
    .local v1, "ex":Ljava/net/SocketException;
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 739
    :catch_1
    move-exception v2

    :goto_1
    nop

    .line 740
    new-instance v2, Ljava/io/EOFException;

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    .end local v1    # "ex":Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 727
    .local v1, "iioex":Ljava/io/InterruptedIOException;
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 728
    :catch_3
    move-exception v2

    :goto_2
    nop

    .line 729
    new-instance v2, Ljava/io/EOFException;

    invoke-virtual {v1}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resumeTracing()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 837
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

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

    .line 845
    return-void
.end method

.method private simpleCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 844
    return-void
.end method

.method private suspendTracing()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 827
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 829
    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 328
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 330
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 335
    .end local v1    # "index":I
    .end local v2    # "i":I
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 331
    .restart local v1    # "index":I
    .restart local v2    # "i":I
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 332
    .local v3, "temp":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    .line 333
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 330
    .end local v3    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized capa()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 681
    :try_start_0
    const-string v0, "CAPA"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 682
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 683
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 684
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 680
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dele(I)Z
    .locals 2
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 579
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 580
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 578
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "msg":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

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

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 235
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 226
    .end local p1    # "c":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 673
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isTracing()Z
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized list(I)I
    .locals 4
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 392
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 393
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    const/4 v1, -0x1

    .line 394
    .local v1, "size":I
    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

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

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    .line 399
    .end local v2    # "st":Ljava/util/StringTokenizer;
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v2

    .line 403
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 391
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "size":I
    .end local p1    # "msg":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 410
    :try_start_0
    const-string v0, "LIST"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 411
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 409
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    const/4 v0, 0x0

    .line 249
    .local v0, "batch":Z
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "authentication command trace suppressed"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->suspendTracing()V

    .line 253
    :cond_1
    const/4 v1, 0x0

    .line 254
    .local v1, "dpw":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 255
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APOP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    .line 258
    .local v2, "r":Lcom/sun/mail/pop3/Response;
    goto/16 :goto_3

    .end local v2    # "r":Lcom/sun/mail/pop3/Response;
    :cond_3
    if-eqz v0, :cond_6

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USER "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PASS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 263
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 266
    .local v3, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v4, :cond_5

    .line 267
    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "USER command failed"

    .line 268
    .local v4, "err":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    .line 269
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    nop

    .line 288
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    monitor-exit p0

    return-object v4

    .line 272
    .end local v4    # "err":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v4

    move-object v3, v4

    .line 273
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    .line 274
    .end local v2    # "cmd":Ljava/lang/String;
    move-object v2, v3

    goto :goto_3

    .line 275
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USER "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    .line 276
    .local v2, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v3, :cond_8

    .line 277
    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v3, "USER command failed"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    monitor-exit p0

    return-object v3

    .line 278
    :cond_8
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PASS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v3

    move-object v2, v3

    .line 280
    :goto_3
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 281
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "authentication command {0}"

    .line 282
    iget-boolean v6, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_9

    const-string v6, "succeeded"

    goto :goto_4

    :cond_9
    const-string v6, "failed"

    .line 281
    :goto_4
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_a
    iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v3, :cond_c

    .line 284
    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const-string v3, "login failed"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 288
    :goto_5
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 284
    monitor-exit p0

    return-object v3

    .line 288
    :cond_c
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 285
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 287
    .end local v1    # "dpw":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    .line 288
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V

    .line 289
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 244
    .end local v0    # "batch":Z
    .end local p1    # "user":Ljava/lang/String;
    .end local p2    # "password":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized noop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 627
    :try_start_0
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 628
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 626
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized quit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "ok":Z
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "QUIT"

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    .line 345
    .local v2, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v3

    .line 346
    .end local v2    # "r":Lcom/sun/mail/pop3/Response;
    nop

    .line 348
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    nop

    .line 350
    :try_start_2
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 355
    monitor-exit p0

    return v0

    .line 349
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v2

    .line 350
    :try_start_3
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 353
    :goto_0
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 346
    :catchall_1
    move-exception v2

    .line 348
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 349
    nop

    .line 350
    :try_start_5
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 354
    throw v2

    .line 349
    :catchall_2
    move-exception v2

    .line 350
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 351
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 352
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 341
    .end local v0    # "ok":Z
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
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

    monitor-enter p0

    .line 423
    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 422
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "msg":I
    .end local p2    # "size":I
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 423
    .restart local p1    # "msg":I
    .restart local p2    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 424
    .local v0, "batch":Z
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_6

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LIST "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RETR "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 429
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 432
    .local v3, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 435
    :try_start_1
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 436
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 437
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move p2, v5

    .line 439
    if-gt p2, v1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pipeline message size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :cond_2
    add-int/lit16 p2, p2, 0x80

    goto :goto_2

    .line 440
    :cond_3
    :goto_1
    const/4 p2, 0x0

    goto :goto_2

    .line 446
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 449
    :cond_4
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 450
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_5

    .line 451
    add-int/lit16 v3, p2, 0x80

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 452
    :cond_5
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    .line 453
    goto/16 :goto_5

    .line 454
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETR "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 458
    .restart local v3    # "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v4, :cond_7

    .line 459
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 470
    :cond_7
    if-gtz p2, :cond_b

    :try_start_3
    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_b

    .line 472
    :try_start_4
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 473
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "octets":Ljava/lang/String;
    const-string v7, "octets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 476
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move p2, v7

    .line 478
    if-gt p2, v1, :cond_a

    if-gez p2, :cond_8

    goto :goto_3

    .line 481
    :cond_8
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 482
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "guessing message size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    :cond_9
    add-int/lit16 p2, p2, 0x80

    goto :goto_4

    .line 479
    :cond_a
    :goto_3
    const/4 p2, 0x0

    goto :goto_4

    .line 486
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "octets":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 489
    :cond_b
    :goto_4
    :try_start_5
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 490
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    move-object v1, v3

    .line 492
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v1    # "r":Lcom/sun/mail/pop3/Response;
    :goto_5
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_c

    .line 493
    if-lez p2, :cond_c

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 494
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "got message size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 496
    :cond_c
    iget-object v3, v1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 422
    .end local v0    # "batch":Z
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local p1    # "msg":I
    .end local p2    # "size":I
    :goto_6
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized retr(ILjava/io/OutputStream;)Z
    .locals 9
    .param p1, "msg"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 504
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RETR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "cmd":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 508
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_0

    .line 509
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 513
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    const/4 v2, 0x0

    .line 514
    .local v2, "terr":Ljava/lang/Throwable;
    const/16 v3, 0xa

    .line 516
    .local v3, "lastb":I
    nop

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v4

    move v5, v4

    .local v5, "b":I
    if-gez v4, :cond_1

    .line 543
    goto :goto_1

    .line 517
    :cond_1
    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    const/16 v4, 0x2e

    if-ne v5, v4, :cond_6

    .line 518
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v4

    move v5, v4

    .line 519
    const/16 v4, 0xd

    if-ne v5, v4, :cond_6

    .line 521
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v4
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    .line 522
    nop

    .line 552
    :goto_1
    if-ltz v5, :cond_5

    .line 556
    if-eqz v2, :cond_4

    .line 557
    :try_start_2
    instance-of v4, v2, Ljava/io/IOException;

    if-nez v4, :cond_3

    .line 559
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    .line 561
    goto :goto_2

    .line 560
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 558
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 563
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 553
    :cond_5
    :try_start_3
    new-instance v4, Ljava/io/EOFException;

    const-string v6, "EOF on socket"

    invoke-direct {v4, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    :cond_6
    if-nez v2, :cond_7

    .line 532
    :try_start_4
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    goto :goto_3

    .line 536
    :catch_0
    move-exception v4

    .line 537
    .local v4, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "exception while streaming"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    move-object v2, v4

    goto :goto_3

    .line 533
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    .line 534
    .local v4, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "exception while streaming"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 535
    move-object v2, v4

    .line 541
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_7
    :goto_3
    move v3, v5

    goto :goto_0

    .line 543
    .end local v5    # "b":I
    :catch_2
    move-exception v4

    .line 548
    .local v4, "iioex":Ljava/io/InterruptedIOException;
    :try_start_6
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 549
    :catch_3
    move-exception v5

    :goto_4
    nop

    .line 550
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 503
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "terr":Ljava/lang/Throwable;
    .end local v3    # "lastb":I
    .end local v4    # "iioex":Ljava/io/InterruptedIOException;
    .end local p1    # "msg":I
    .end local p2    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized rset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 635
    :try_start_0
    const-string v0, "RSET"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 636
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 634
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCapabilities(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;

    monitor-enter p0

    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    monitor-exit p0

    return-void

    .line 195
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "r":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "us-ascii"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 199
    goto :goto_0

    :catch_0
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    nop

    .line 205
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    .local v2, "s":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 212
    .end local v2    # "s":Ljava/lang/String;
    nop

    .line 216
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 217
    :catch_1
    move-exception v1

    goto :goto_3

    .line 206
    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 207
    .local v1, "cap":Ljava/lang/String;
    const/16 v3, 0x20

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 208
    .local v3, "i":I
    if-lez v3, :cond_2

    .line 209
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 210
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 214
    .end local v1    # "cap":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    .line 216
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 217
    :goto_1
    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    .line 218
    :goto_2
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 212
    :catch_3
    move-exception v1

    .line 216
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 217
    :goto_3
    nop

    .line 219
    monitor-exit p0

    return-void

    .line 189
    .end local v0    # "r":Ljava/io/BufferedReader;
    .end local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 363
    :try_start_0
    const-string v0, "STAT"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 364
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    new-instance v1, Lcom/sun/mail/pop3/Status;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V

    .line 374
    .local v1, "s":Lcom/sun/mail/pop3/Status;
    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 379
    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    .end local v2    # "st":Ljava/util/StringTokenizer;
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v2

    .line 385
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 375
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "STAT command failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "s":Lcom/sun/mail/pop3/Status;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stls()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 645
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 646
    :cond_0
    :try_start_1
    const-string v0, "STLS"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 647
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 650
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 651
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 652
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v1

    .line 654
    .local v1, "ioex":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    nop

    .line 656
    :try_start_4
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 657
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 658
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 661
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not convert socket to TLS"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 660
    nop

    .line 662
    .local v2, "sioex":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 663
    throw v2

    .line 655
    .end local v2    # "sioex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 656
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 657
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 658
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 659
    throw v3

    .line 666
    .end local v1    # "ioex":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    .line 643
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 571
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TOP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 572
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 570
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "msg":I
    .end local p2    # "n":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 587
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UIDL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 588
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 589
    monitor-exit p0

    return-object v2

    .line 590
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 591
    .local v1, "i":I
    if-lez v1, :cond_1

    .line 592
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 594
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 586
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "i":I
    .end local p1    # "msg":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .locals 8
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 602
    :try_start_0
    const-string v0, "UIDL"

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 603
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 604
    monitor-exit p0

    return v2

    .line 605
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 606
    .local v1, "lis":Lcom/sun/mail/util/LineInputStream;
    const/4 v3, 0x0

    .line 607
    .local v3, "line":Ljava/lang/String;
    nop

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 616
    :try_start_2
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    goto :goto_1

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v2

    .line 620
    :goto_1
    monitor-exit p0

    return v5

    .line 608
    :cond_2
    const/16 v4, 0x20

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 609
    .local v4, "i":I
    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 610
    goto :goto_0

    .line 611
    :cond_3
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, "n":I
    if-lez v5, :cond_1

    array-length v6, p1

    if-gt v5, v6, :cond_1

    .line 613
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 601
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "lis":Lcom/sun/mail/util/LineInputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local p1    # "uids":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
