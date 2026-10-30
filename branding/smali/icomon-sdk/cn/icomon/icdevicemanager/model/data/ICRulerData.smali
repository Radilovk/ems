.class public Lcn/icomon/icdevicemanager/model/data/ICRulerData;
.super Ljava/lang/Object;
.source "ICRulerData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public distance:I

.field public distance_cm:D

.field public distance_ft:I

.field public distance_ft_in:D

.field public distance_in:D

.field public isStabilized:Z

.field public mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

.field public partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

.field public precision_cm:I

.field public precision_in:I

.field public time:J

.field public unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;
    .registers 2

    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 81
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

    .line 8
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    return v0
.end method

.method public getDistance_cm()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    return-wide v0
.end method

.method public getDistance_ft()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    return v0
.end method

.method public getDistance_ft_in()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    return-wide v0
.end method

.method public getDistance_in()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    return-wide v0
.end method

.method public getMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-object v0
.end method

.method public getPartsType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-object v0
.end method

.method public getPrecision_cm()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    return v0
.end method

.method public getPrecision_in()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    return v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    return-wide v0
.end method

.method public getUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object v0
.end method

.method public isStabilized()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    return v0
.end method

.method public setDistance(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    return-void
.end method

.method public setDistance_cm(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    return-void
.end method

.method public setDistance_ft(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    return-void
.end method

.method public setDistance_ft_in(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    return-void
.end method

.method public setDistance_in(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    return-void
.end method

.method public setMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-void
.end method

.method public setPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    return-void
.end method

.method public setPrecision_cm(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    return-void
.end method

.method public setPrecision_in(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    return-void
.end method

.method public setStabilized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    return-void
.end method

.method public setUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICRulerData{isStabilized="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distance_in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distance_ft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distance_ft_in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distance_cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", precision_in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", partsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
