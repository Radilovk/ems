.class public Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;
.super Ljava/lang/Object;
.source "ICDeviceMangerMIDeviceMap.java"


# instance fields
.field public communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

.field public otherFlag:I

.field public productId:I

.field public subType:I

.field public type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommunicationType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    return-object v0
.end method

.method public getOtherFlag()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->otherFlag:I

    return v0
.end method

.method public getProductId()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->productId:I

    return v0
.end method

.method public getSubType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->subType:I

    return v0
.end method

.method public getType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-object v0
.end method

.method public setCommunicationType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    return-void
.end method

.method public setOtherFlag(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->otherFlag:I

    return-void
.end method

.method public setProductId(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->productId:I

    return-void
.end method

.method public setSubType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->subType:I

    return-void
.end method

.method public setType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/other/ICDeviceMangerMIDeviceMap;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-void
.end method
