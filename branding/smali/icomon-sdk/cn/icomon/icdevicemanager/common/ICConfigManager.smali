.class public Lcn/icomon/icdevicemanager/common/ICConfigManager;
.super Ljava/lang/Object;
.source "ICConfigManager.java"


# static fields
.field private static ____gsMgr:Lcn/icomon/icdevicemanager/common/ICConfigManager;

.field private static final ___lock:Ljava/lang/Integer;


# instance fields
.field private _miiotDeviceMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field public ignoreDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            ">;"
        }
    .end annotation
.end field

.field public is_fill_adc:Z

.field public rssiRefreshSpeed:I

.field public sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textFontSize:I

.field public textImageHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x24

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->textFontSize:I

    const/16 v0, 0x30

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->textImageHeight:I

    .line 41
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;->ICSDKModeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    const/16 v0, 0x1388

    iput v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->is_fill_adc:Z

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->_miiotDeviceMaps:Ljava/util/Map;

    return-void
.end method

.method public static deInit()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICConfigManager;

    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->___lock:Ljava/lang/Integer;

    .line 53
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICConfigManager;

    if-nez v1, :cond_e

    .line 55
    new-instance v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/common/ICConfigManager;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICConfigManager;

    .line 57
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICConfigManager;

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
.method public addMIDevice(Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->_miiotDeviceMaps:Ljava/util/Map;

    .line 94
    iget v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->productId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getMIDeviceByProductId(I)Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->_miiotDeviceMaps:Ljava/util/Map;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    :cond_e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->_miiotDeviceMaps:Ljava/util/Map;

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;

    return-object p1
.end method

.method public getRssiRefreshSpeed()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    return v0
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->services:Ljava/util/List;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->context:Landroid/content/Context;

    return-void
.end method

.method public setRssiRefreshSpeed(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->rssiRefreshSpeed:I

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->services:Ljava/util/List;

    return-void
.end method
