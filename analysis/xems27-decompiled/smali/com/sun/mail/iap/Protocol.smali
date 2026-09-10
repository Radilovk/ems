.class public Lcom/sun/mail/iap/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final CRLF:[B


# instance fields
.field private final handlers:Ljava/util/Vector;

.field protected host:Ljava/lang/String;

.field private volatile input:Lcom/sun/mail/iap/ResponseInputStream;

.field private localHostName:Ljava/lang/String;

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field private volatile output:Ljava/io/DataOutputStream;

.field protected prefix:Ljava/lang/String;

.field protected props:Ljava/util/Properties;

.field protected quote:Z

.field private socket:Ljava/net/Socket;

.field private tagCounter:I

.field private volatile timestamp:J

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field protected traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/iap/Protocol;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/PrintStream;Ljava/util/Properties;Z)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/PrintStream;
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "debug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    .line 87
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    .line 165
    const-string v1, "localhost"

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    .line 167
    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    .line 168
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG"

    invoke-direct {v0, v1, v3, p4, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    .line 169
    const-string v1, "protocol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 172
    new-instance v0, Lcom/sun/mail/util/TraceInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v0, p1, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 173
    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 174
    new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    .line 176
    new-instance v0, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v0, p2, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 177
    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 178
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;ZLcom/sun/mail/util/MailLogger;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "props"    # Ljava/util/Properties;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "isSSL"    # Z
    .param p6, "logger"    # Lcom/sun/mail/util/MailLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    .line 87
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "connected":Z
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    .line 115
    iput-object p4, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/sun/mail/iap/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    .line 117
    const-string v2, "protocol"

    const/4 v3, 0x0

    invoke-virtual {p6, v2, v3}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 119
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    .line 120
    nop

    .line 121
    const-string v2, "mail.debug.quote"

    .line 120
    invoke-static {p3, v2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    .line 123
    invoke-direct {p0}, Lcom/sun/mail/iap/Protocol;->initStreams()V

    .line 126
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const/4 v0, 0x1

    .line 131
    .end local v1    # "connected":Z
    .local v0, "connected":Z
    nop

    .line 138
    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 141
    :cond_0
    return-void

    .line 131
    .end local v0    # "connected":Z
    .restart local v1    # "connected":Z
    :catchall_0
    move-exception v0

    .line 138
    if-nez v1, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 140
    :cond_1
    throw v0
.end method

.method private commandEnd()V
    .locals 0

    .line 576
    return-void
.end method

.method private commandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 575
    return-void
.end method

.method private initStreams()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/sun/mail/util/TraceInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 145
    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 146
    new-instance v0, Lcom/sun/mail/iap/ResponseInputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ResponseInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    .line 148
    nop

    .line 149
    new-instance v0, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v0, v1, v2}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    .line 148
    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 150
    iget-boolean v1, p0, Lcom/sun/mail/iap/Protocol;->quote:Z

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 151
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    .line 152
    return-void
.end method


# virtual methods
.method public addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    .locals 1
    .param p1, "h"    # Lcom/sun/mail/iap/ResponseHandler;

    .line 198
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public declared-synchronized command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/sun/mail/iap/Argument;

    monitor-enter p0

    .line 336
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Protocol;->commandStart(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 339
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 340
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 344
    .local v3, "r":Lcom/sun/mail/iap/Response;
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 345
    goto :goto_0

    .line 348
    .end local p0    # "this":Lcom/sun/mail/iap/Protocol;
    :catch_0
    move-exception v4

    .line 350
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 351
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 346
    .local v4, "lex":Lcom/sun/mail/iap/LiteralException;
    invoke-virtual {v4}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    const/4 v1, 0x1

    .line 354
    .end local v4    # "lex":Lcom/sun/mail/iap/LiteralException;
    :goto_0
    const/4 v4, 0x0

    .line 355
    .local v4, "byeResp":Lcom/sun/mail/iap/Response;
    nop

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    .line 357
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v5

    .line 358
    goto :goto_3

    .line 363
    :catch_2
    move-exception v5

    .line 364
    .local v5, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    iget-object v6, p0, Lcom/sun/mail/iap/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "ignoring bad response"

    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    goto :goto_1

    .line 358
    .end local v5    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v5

    .line 359
    .local v5, "ioex":Ljava/io/IOException;
    if-eqz v4, :cond_3

    .line 360
    nop

    .line 380
    .end local v5    # "ioex":Ljava/io/IOException;
    :goto_2
    if-eqz v4, :cond_2

    .line 381
    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 382
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/mail/iap/Response;

    .line 383
    .local v5, "responses":[Lcom/sun/mail/iap/Response;
    invoke-virtual {v0, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    .line 385
    invoke-direct {p0}, Lcom/sun/mail/iap/Protocol;->commandEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 386
    monitor-exit p0

    return-object v5

    .line 362
    .local v5, "ioex":Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v6

    move-object v3, v6

    .line 368
    .end local v5    # "ioex":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 369
    move-object v4, v3

    .line 370
    goto :goto_1

    .line 373
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_0

    .line 377
    const/4 v1, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "v":Ljava/util/Vector;
    .end local v1    # "done":Z
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "r":Lcom/sun/mail/iap/Response;
    .end local v4    # "byeResp":Lcom/sun/mail/iap/Response;
    .end local p1    # "command":Ljava/lang/String;
    .end local p2    # "args":Lcom/sun/mail/iap/Argument;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 484
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/iap/Protocol;
    :catch_0
    move-exception v0

    .line 488
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :cond_0
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 568
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 569
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 570
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getInputStream()Lcom/sun/mail/iap/ResponseInputStream;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    return-object v0
.end method

.method protected declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 503
    .end local p0    # "this":Lcom/sun/mail/iap/Protocol;
    :cond_0
    nop

    .line 504
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 506
    :cond_2
    nop

    .line 507
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 510
    :cond_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 511
    .local v0, "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    .line 513
    if-nez v1, :cond_5

    .line 515
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

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "localHost":Ljava/net/InetAddress;
    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 521
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 522
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 523
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 524
    .restart local v0    # "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    .line 526
    if-nez v1, :cond_7

    .line 528
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

    iput-object v1, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;

    .line 531
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->localHostName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .locals 1

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/sun/mail/iap/Protocol;->timestamp:J

    return-wide v0
.end method

.method public handleResult(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 396
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    return-void

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_2

    .line 402
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    return-void

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 404
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0

    .line 401
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0

    .line 399
    :cond_3
    new-instance v0, Lcom/sun/mail/iap/CommandFailedException;

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v0
.end method

.method public hasResponse()Z
    .locals 2

    .line 290
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->input:Lcom/sun/mail/iap/ResponseInputStream;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ResponseInputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 291
    :catch_0
    move-exception v1

    .line 293
    return v0
.end method

.method public isSSL()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    return v0
.end method

.method protected isTracing()Z
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V
    .locals 5
    .param p1, "responses"    # [Lcom/sun/mail/iap/Response;

    .line 216
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 236
    .end local v0    # "i":I
    return-void

    .line 220
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p1, v0

    .line 223
    .local v1, "r":Lcom/sun/mail/iap/Response;
    if-nez v1, :cond_2

    .line 224
    goto :goto_2

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 231
    .local v2, "h":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_3

    .line 219
    .end local v1    # "r":Lcom/sun/mail/iap/Response;
    .end local v2    # "h":[Ljava/lang/Object;
    .end local v3    # "j":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .restart local v1    # "r":Lcom/sun/mail/iap/Response;
    .restart local v2    # "h":[Ljava/lang/Object;
    .restart local v3    # "j":I
    :cond_3
    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    .line 233
    aget-object v4, v2, v3

    check-cast v4, Lcom/sun/mail/iap/ResponseHandler;

    invoke-interface {v4, v1}, Lcom/sun/mail/iap/ResponseHandler;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 231
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v0
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/sun/mail/iap/Response;

    invoke-direct {v0, p0}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    return-object v0
.end method

.method public removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    .locals 1
    .param p1, "h"    # Lcom/sun/mail/iap/ResponseHandler;

    .line 207
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->handlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method protected resumeTracing()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 560
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 562
    :cond_0
    return-void
.end method

.method public simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/sun/mail/iap/Argument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/iap/Protocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 422
    .local v0, "r":[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Protocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 425
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/iap/Protocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 426
    return-void
.end method

.method public declared-synchronized startTLS(Ljava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 442
    monitor-exit p0

    return-void

    .line 443
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/iap/Protocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 444
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/iap/Protocol;->props:Ljava/util/Properties;

    iget-object v3, p0, Lcom/sun/mail/iap/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Protocol;->socket:Ljava/net/Socket;

    .line 445
    invoke-direct {p0}, Lcom/sun/mail/iap/Protocol;->initStreams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 440
    .end local p0    # "this":Lcom/sun/mail/iap/Protocol;
    .end local p1    # "cmd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized supportsNonSyncLiterals()Z
    .locals 1

    monitor-enter p0

    .line 268
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method protected suspendTracing()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 550
    iget-object v0, p0, Lcom/sun/mail/iap/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method public writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/sun/mail/iap/Argument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Protocol;->tagCounter:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 316
    if-eqz p2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 318
    invoke-virtual {p2, p0}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    sget-object v2, Lcom/sun/mail/iap/Protocol;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 322
    iget-object v1, p0, Lcom/sun/mail/iap/Protocol;->output:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 323
    return-object v0
.end method
