.class public final Lcom/isaigu/gymapp/wearable/EmsBleCoexist;
.super Ljava/lang/Object;
.source "EmsBleCoexist.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static pauseClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 14
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 15
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p1, "coexist"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    .line 18
    goto :goto_29

    .line 17
    :catchall_28
    move-exception p0

    .line 19
    :goto_29
    return-void
.end method

.method public static pauseEmsBle()V
    .registers 2

    .line 8
    const-string v0, "com.isaigu.gymapp.train.ble.BleDeviceManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/EmsBleCoexist;->pauseClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "com.isaigu.gymapp.train.ble.AndroidBleController"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/EmsBleCoexist;->pauseClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
