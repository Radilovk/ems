.class Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;
.super Ljava/lang/Object;
.source "ICBleHandler.java"


# instance fields
.field public final flag:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->flag:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public notifyLock()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->flag:Ljava/lang/Integer;

    .line 146
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->flag:Ljava/lang/Integer;

    .line 147
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 148
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public waitLock()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->flag:Ljava/lang/Integer;

    .line 136
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandlerLock;->flag:Ljava/lang/Integer;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v1

    goto :goto_11

    :catch_b
    move-exception v1

    .line 140
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 142
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_9

    throw v1
.end method
