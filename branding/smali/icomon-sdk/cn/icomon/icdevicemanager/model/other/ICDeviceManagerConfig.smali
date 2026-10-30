.class public Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;
.super Ljava/lang/Object;
.source "ICDeviceManagerConfig.java"


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

.field public context:Landroid/content/Context;

.field public is_fill_adc:Z

.field public rssiRefreshSpeed:I

.field public sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

.field public textFontSize:I

.field public textImageHeight:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->is_fill_adc:Z

    const/16 v1, 0x24

    iput v1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->textFontSize:I

    const/16 v1, 0x30

    iput v1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->textImageHeight:I

    const/16 v1, 0x1388

    iput v1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->rssiRefreshSpeed:I

    .line 46
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;->ICSDKModeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->_miiotDeviceMaps:Ljava/util/Map;

    .line 52
    new-instance v1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;-><init>()V

    .line 53
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 54
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    const/16 v2, 0x9

    .line 55
    iput v2, v1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->subType:I

    .line 56
    iput v0, v1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->otherFlag:I

    const/16 v0, 0x391f

    .line 57
    iput v0, v1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->productId:I

    .line 58
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->addMIDevice(Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;)V

    return-void
.end method


# virtual methods
.method public addMIDevice(Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->_miiotDeviceMaps:Ljava/util/Map;

    .line 66
    iget v1, p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->productId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getMIDeviceByProductId(I)Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->_miiotDeviceMaps:Ljava/util/Map;

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    :cond_e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->_miiotDeviceMaps:Ljava/util/Map;

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;

    return-object p1
.end method

.method public getMIDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->_miiotDeviceMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRssiRefreshSpeed()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->rssiRefreshSpeed:I

    return v0
.end method

.method public getSdkMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    return-object v0
.end method

.method public isIs_fill_adc()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->is_fill_adc:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->context:Landroid/content/Context;

    return-void
.end method

.method public setIs_fill_adc(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->is_fill_adc:Z

    return-void
.end method

.method public setRssiRefreshSpeed(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->rssiRefreshSpeed:I

    return-void
.end method

.method public setSdkMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    return-void
.end method
