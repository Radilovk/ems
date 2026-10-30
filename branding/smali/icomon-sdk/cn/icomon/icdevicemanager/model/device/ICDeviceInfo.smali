.class public Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;
.super Ljava/lang/Object;
.source "ICDeviceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public extInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;

.field public firmwareVer:Ljava/lang/String;

.field public hardwareVer:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public manufactureName:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public softwareVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->model:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->softwareVer:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->hardwareVer:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->manufactureName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->extInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;
    .registers 2

    .line 24
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExtInfo()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->extInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;

    return-object v0
.end method

.method public getFirmwareVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->hardwareVer:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getManufactureName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->manufactureName:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->softwareVer:Ljava/lang/String;

    return-object v0
.end method

.method public setExtInfo(Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->extInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;

    return-void
.end method

.method public setFirmwareVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    return-void
.end method

.method public setHardwareVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->hardwareVer:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public setManufactureName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->manufactureName:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    return-void
.end method

.method public setSoftwareVer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->softwareVer:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICDeviceInfo{mac=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', sn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', firmwareVer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', softwareVer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->softwareVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hardwareVer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', manufactureName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->manufactureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->extInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfoExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
