.class public Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;
.super Ljava/lang/Object;
.source "ICScanDeviceInfo.java"


# instance fields
.field public communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

.field public deviceFlag:Ljava/lang/Integer;

.field public deviceFunctions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;"
        }
    .end annotation
.end field

.field public macAddr:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nodeId:I

.field public rssi:Ljava/lang/Integer;

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public st_no:I

.field public subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

.field public type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommunicationType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    return-object v0
.end method

.method public getDeviceFlag()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFlag:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDeviceFunctions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFunctions:Ljava/util/List;

    return-object v0
.end method

.method public getMacAddr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeId()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->nodeId:I

    return v0
.end method

.method public getRssi()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->rssi:Ljava/lang/Integer;

    return-object v0
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

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->services:Ljava/util/List;

    return-object v0
.end method

.method public getSt_no()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->st_no:I

    return v0
.end method

.method public getSubType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    return-object v0
.end method

.method public getType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-object v0
.end method

.method public setCommunicationType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    return-void
.end method

.method public setDeviceFlag(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFlag:Ljava/lang/Integer;

    return-void
.end method

.method public setDeviceFunctions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFunctions:Ljava/util/List;

    return-void
.end method

.method public setMacAddr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->macAddr:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNodeId(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->nodeId:I

    return-void
.end method

.method public setRssi(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->rssi:Ljava/lang/Integer;

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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->services:Ljava/util/List;

    return-void
.end method

.method public setSt_no(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->st_no:I

    return-void
.end method

.method public setSubType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    return-void
.end method

.method public setType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICScanDeviceInfo{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", communicationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", macAddr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->services:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->rssi:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", st_no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->st_no:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->nodeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFlag:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceFunctions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->deviceFunctions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
