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

    .prologue
    const/4 v3, 0x0

    .line 22
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[BLjava/lang/String;)V
    .registers 6

    .prologue
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
    .registers 6

    .prologue
    .line 37
    :try_start_0
    iget v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->kind:I

    packed-switch v0, :pswitch_data_6c

    .line 71
    :goto_5
    return-void

    .line 39
    :pswitch_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortOpened(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_5

    .line 68
    :catch_e
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    const-string v2, "ERR:spp_task"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->kind:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 42
    :pswitch_30
    :try_start_30
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortFailed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V

    goto :goto_5

    .line 45
    :pswitch_3a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->data:[B

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortBytes(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;[B)V

    goto :goto_5

    .line 48
    :pswitch_44
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->port:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->detail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onPortClosed(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort;Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :pswitch_4e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onVersionTimeout()V

    goto :goto_5

    .line 54
    :pswitch_54
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onAuthTimeout()V

    goto :goto_5

    .line 57
    :pswitch_5a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onWatchTick()V

    goto :goto_5

    .line 60
    :pswitch_60
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onReconnectTick()V

    goto :goto_5

    .line 63
    :pswitch_66
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask;->client:Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;->onStartRealtimeDue()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_6b} :catch_e

    goto :goto_5

    .line 37
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_30
        :pswitch_3a
        :pswitch_44
        :pswitch_4e
        :pswitch_54
        :pswitch_5a
        :pswitch_60
        :pswitch_66
    .end packed-switch
.end method
