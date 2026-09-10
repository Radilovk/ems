.class public Lcom/sun/mail/util/WriteTimeoutSocket;
.super Ljava/net/Socket;
.source "WriteTimeoutSocket.java"


# instance fields
.field private final ses:Ljava/util/concurrent/ScheduledExecutorService;

.field private final socket:Ljava/net/Socket;

.field private final timeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(Ljava/net/Socket;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p3}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 92
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0, p5}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 99
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 100
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p3}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 78
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;II)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p5}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 85
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 86
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    iput p2, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->timeout:I

    .line 69
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 118
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    nop

    .line 256
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 258
    return-void

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    iget-object v1, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 257
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 108
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 113
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 153
    :try_start_0
    new-instance v0, Lcom/sun/mail/util/TimeoutOutputStream;

    iget-object v1, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    iget v3, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->timeout:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/util/TimeoutOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/concurrent/ScheduledExecutorService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    .end local p0    # "this":Lcom/sun/mail/util/WriteTimeoutSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPort()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public sendUrgentData(I)V
    .locals 1
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->sendUrgentData(I)V

    .line 179
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 224
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 184
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 214
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 244
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 204
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 169
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 194
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 159
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 234
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 263
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
