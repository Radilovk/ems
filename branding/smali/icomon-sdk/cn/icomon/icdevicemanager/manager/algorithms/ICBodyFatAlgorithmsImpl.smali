.class public Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;
.super Ljava/lang/Object;
.source "ICBodyFatAlgorithmsImpl.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/ICBodyFatAlgorithmsManager;


# static fields
.field private static ____gsMgr:Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

.field private static final ___lock:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deInit()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->___lock:Ljava/lang/Integer;

    .line 31
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

    if-nez v1, :cond_e

    .line 33
    new-instance v1, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

    .line 35
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;->____gsMgr:Lcn/icomon/icdevicemanager/manager/algorithms/ICBodyFatAlgorithmsImpl;

    return-object v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public reCalcBodyFatWithWeightData(Lcn/icomon/icdevicemanager/model/data/ICWeightData;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;
    .registers 3

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 48
    :cond_5
    invoke-static {p2, p1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object p1

    return-object p1

    :cond_a
    :goto_a
    const/4 p1, 0x0

    return-object p1
.end method
