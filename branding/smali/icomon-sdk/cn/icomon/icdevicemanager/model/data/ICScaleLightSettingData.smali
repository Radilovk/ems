.class public Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;
.super Ljava/lang/Object;
.source "ICScaleLightSettingData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:I

.field public brightness:I

.field public g:I

.field public lightNum:I

.field public lightOn:I

.field public operateType:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;
    .registers 2

    .line 96
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 98
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

    .line 6
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->clone()Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;

    move-result-object v0

    return-object v0
.end method

.method public getB()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->b:I

    return v0
.end method

.method public getBrightness()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->brightness:I

    return v0
.end method

.method public getG()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->g:I

    return v0
.end method

.method public getLightNum()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightNum:I

    return v0
.end method

.method public getLightOn()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightOn:I

    return v0
.end method

.method public getOperateType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->operateType:I

    return v0
.end method

.method public getR()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->r:I

    return v0
.end method

.method public setB(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->b:I

    return-void
.end method

.method public setBrightness(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->brightness:I

    return-void
.end method

.method public setG(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->g:I

    return-void
.end method

.method public setLightNum(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightNum:I

    return-void
.end method

.method public setLightOn(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightOn:I

    return-void
.end method

.method public setOperateType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->operateType:I

    return-void
.end method

.method public setR(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->r:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICScaleLightSettingData{operateType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->operateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lightNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lightOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->brightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
