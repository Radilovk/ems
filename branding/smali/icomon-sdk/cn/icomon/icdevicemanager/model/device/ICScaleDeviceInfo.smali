.class public Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;
.super Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;
.source "ICScaleDeviceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public batteryType:I

.field public bfDataCalcType:I

.field public bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public bfaType2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public enableMeasureBalance:Z

.field public enableMeasureGravity:Z

.field public enableMeasureHr:Z

.field public enableMeasureImpendence:Z

.field public icScaleSoundSettingData:Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

.field public impendenceCount:I

.field public impendencePrecision:I

.field public impendenceProperty:I

.field public impendenceType:I

.field public isSupportBalance:Z

.field public isSupportChangePole:Z

.field public isSupportGravity:Z

.field public isSupportHr:Z

.field public isSupportOTA:Z

.field public isSupportOffline:Z

.field public isSupportUnitJin:Z

.field public isSupportUnitKg:Z

.field public isSupportUnitLb:Z

.field public isSupportUnitStLb:Z

.field public isSupportUserInfo:Z

.field public kg_scale_division:I

.field public lb_scale_division:I

.field public listSupportUIItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICScaleUIItem;",
            ">;"
        }
    .end annotation
.end field

.field public maxUserCount:I

.field public pole:I

.field public supportFuns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;
    .registers 2

    .line 70
    invoke-super {p0}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->batteryType:I

    return v0
.end method

.method public getBfDataCalcType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfDataCalcType:I

    return v0
.end method

.method public getBfaType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public getBfaType2()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public getIcScaleSoundSettingData()Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->icScaleSoundSettingData:Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

    return-object v0
.end method

.method public getImpendenceCount()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceCount:I

    return v0
.end method

.method public getImpendencePrecision()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendencePrecision:I

    return v0
.end method

.method public getImpendenceProperty()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceProperty:I

    return v0
.end method

.method public getImpendenceType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceType:I

    return v0
.end method

.method public getKg_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->kg_scale_division:I

    return v0
.end method

.method public getLb_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->lb_scale_division:I

    return v0
.end method

.method public getListSupportUIItem()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICScaleUIItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->listSupportUIItem:Ljava/util/List;

    return-object v0
.end method

.method public getMaxUserCount()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->maxUserCount:I

    return v0
.end method

.method public getPole()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    return v0
.end method

.method public getSupportFuns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->supportFuns:Ljava/util/List;

    return-object v0
.end method

.method public isEnableMeasureBalance()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureBalance:Z

    return v0
.end method

.method public isEnableMeasureGravity()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureGravity:Z

    return v0
.end method

.method public isEnableMeasureHr()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureHr:Z

    return v0
.end method

.method public isEnableMeasureImpendence()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureImpendence:Z

    return v0
.end method

.method public isSupportBalance()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportBalance:Z

    return v0
.end method

.method public isSupportChangePole()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    return v0
.end method

.method public isSupportGravity()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportGravity:Z

    return v0
.end method

.method public isSupportHr()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportHr:Z

    return v0
.end method

.method public isSupportOTA()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportOTA:Z

    return v0
.end method

.method public isSupportOffline()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportOffline:Z

    return v0
.end method

.method public isSupportUnitJin()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitJin:Z

    return v0
.end method

.method public isSupportUnitKg()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitKg:Z

    return v0
.end method

.method public isSupportUnitLb()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitLb:Z

    return v0
.end method

.method public isSupportUnitStLb()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitStLb:Z

    return v0
.end method

.method public isSupportUserInfo()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUserInfo:Z

    return v0
.end method

.method public setBatteryType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->batteryType:I

    return-void
.end method

.method public setBfDataCalcType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfDataCalcType:I

    return-void
.end method

.method public setBfaType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method public setBfaType2(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method public setEnableMeasureBalance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureBalance:Z

    return-void
.end method

.method public setEnableMeasureGravity(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureGravity:Z

    return-void
.end method

.method public setEnableMeasureHr(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureHr:Z

    return-void
.end method

.method public setEnableMeasureImpendence(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureImpendence:Z

    return-void
.end method

.method public setIcScaleSoundSettingData(Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->icScaleSoundSettingData:Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

    return-void
.end method

.method public setImpendenceCount(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceCount:I

    return-void
.end method

.method public setImpendencePrecision(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendencePrecision:I

    return-void
.end method

.method public setImpendenceProperty(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceProperty:I

    return-void
.end method

.method public setImpendenceType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceType:I

    return-void
.end method

.method public setKg_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->kg_scale_division:I

    return-void
.end method

.method public setLb_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->lb_scale_division:I

    return-void
.end method

.method public setListSupportUIItem(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICScaleUIItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->listSupportUIItem:Ljava/util/List;

    return-void
.end method

.method public setMaxUserCount(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->maxUserCount:I

    return-void
.end method

.method public setPole(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    return-void
.end method

.method public setSupportBalance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportBalance:Z

    return-void
.end method

.method public setSupportChangePole(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    return-void
.end method

.method public setSupportFuns(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->supportFuns:Ljava/util/List;

    return-void
.end method

.method public setSupportGravity(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportGravity:Z

    return-void
.end method

.method public setSupportHr(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportHr:Z

    return-void
.end method

.method public setSupportOTA(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportOTA:Z

    return-void
.end method

.method public setSupportOffline(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportOffline:Z

    return-void
.end method

.method public setSupportUnitJin(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitJin:Z

    return-void
.end method

.method public setSupportUnitKg(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitKg:Z

    return-void
.end method

.method public setSupportUnitLb(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitLb:Z

    return-void
.end method

.method public setSupportUnitStLb(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitStLb:Z

    return-void
.end method

.method public setSupportUserInfo(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUserInfo:Z

    return-void
.end method
