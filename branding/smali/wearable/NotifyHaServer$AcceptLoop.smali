.class final Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;
.super Ljava/lang/Object;
.source "NotifyHaServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyHaServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AcceptLoop"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/isaigu/gymapp/wearable/NotifyHaServer$1;)V
    .registers 2

    .line 98
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer$AcceptLoop;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 101
    :goto_0
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_30

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->access$200()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_30

    # getter for: Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->access$200()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 103
    :try_start_16
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyHaServer;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->access$200()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 104
    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 105
    # invokes: Lcom/isaigu/gymapp/wearable/NotifyHaServer;->handleClient(Ljava/net/Socket;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->access$300(Ljava/net/Socket;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_26} :catch_27

    goto :goto_2f

    .line 106
    :catch_27
    move-exception v0

    .line 107
    # getter for: Lcom/isaigu/gymapp/wearable/NotifyHaServer;->running:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyHaServer;->access$100()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 108
    goto :goto_30

    .line 110
    :cond_2f
    :goto_2f
    goto :goto_0

    .line 112
    :cond_30
    :goto_30
    return-void
.end method
