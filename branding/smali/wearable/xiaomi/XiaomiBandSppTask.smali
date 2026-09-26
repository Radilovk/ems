.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;
.super Ljava/lang/Object;
.source "XiaomiBandSppTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final AUTH_TIMEOUT:I = 0x6

.field static final BYTES:I = 0x3

.field static final CLOSED:I = 0x4

.field static final FAILED:I = 0x2

.field static final OPENED:I = 0x1

.field static final RECONNECT:I = 0x8

.field static final START_REALTIME:I = 0x9

.field static final VERSION_TIMEOUT:I = 0x5

.field static final WATCH:I = 0x7


# instance fields
.field private final client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

.field private final data:[B

.field private final detail:Ljava/lang/String;

.field private final kind:I

.field private final port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;I)V
    .registers 9

    .line 22
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    .line 28
    iput p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->kind:I

    .line 29
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    .line 30
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->data:[B

    .line 31
    iput-object p5, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->detail:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 37
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->kind:I

    packed-switch v0, :pswitch_data_6a

    goto :goto_4a

    .line 63
    :pswitch_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V

    .line 64
    goto :goto_4a

    .line 60
    :pswitch_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onReconnectTick()V

    .line 61
    goto :goto_4a

    .line 57
    :pswitch_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onWatchTick()V

    .line 58
    goto :goto_4a

    .line 54
    :pswitch_18
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuthTimeout()V

    .line 55
    goto :goto_4a

    .line 51
    :pswitch_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersionTimeout()V

    .line 52
    goto :goto_4a

    .line 48
    :pswitch_24
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V

    .line 49
    goto :goto_4a

    .line 45
    :pswitch_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->data:[B

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V

    .line 46
    goto :goto_4a

    .line 42
    :pswitch_38
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V

    .line 43
    goto :goto_4a

    .line 39
    :pswitch_42
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4b

    .line 40
    nop

    .line 70
    :goto_4a
    goto :goto_69

    .line 68
    :catchall_4b
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->kind:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ERR:spp_task"

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_42
        :pswitch_38
        :pswitch_2e
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
