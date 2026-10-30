.class public Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;
.super Ljava/lang/Object;
.source "ICKitchenScaleData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public isNegative:Ljava/lang/Boolean;

.field public isStabilized:Z

.field public isTare:Ljava/lang/Boolean;

.field public precision:I

.field public precision_floz_milk_uk:I

.field public precision_floz_milk_us:I

.field public precision_floz_uk:I

.field public precision_floz_us:I

.field public precision_g:I

.field public precision_lboz:I

.field public precision_ml:I

.field public precision_ml_milk:I

.field public precision_oz:I

.field public time:J

.field public unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

.field public unitType:I

.field public value_fl_oz:D

.field public value_fl_oz_milk:D

.field public value_fl_oz_milk_uk:D

.field public value_fl_oz_uk:D

.field public value_g:D

.field public value_lb:I

.field public value_lb_oz:D

.field public value_mg:I

.field public value_ml:D

.field public value_ml_milk:D

.field public value_oz:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_g:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_lboz:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_oz:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml_milk:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_us:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_uk:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_us:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_uk:I

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;
    .registers 2

    .line 354
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 356
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->clone()Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-result-object v0

    return-object v0
.end method

.method public getNegative()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isNegative:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrecision()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    return v0
.end method

.method public getPrecision_floz_milk_uk()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_uk:I

    return v0
.end method

.method public getPrecision_floz_milk_us()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_us:I

    return v0
.end method

.method public getPrecision_floz_uk()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_uk:I

    return v0
.end method

.method public getPrecision_floz_us()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_us:I

    return v0
.end method

.method public getPrecision_g()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_g:I

    return v0
.end method

.method public getPrecision_lboz()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_lboz:I

    return v0
.end method

.method public getPrecision_ml()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml:I

    return v0
.end method

.method public getPrecision_ml_milk()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml_milk:I

    return v0
.end method

.method public getPrecision_oz()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_oz:I

    return v0
.end method

.method public getTare()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isTare:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->time:J

    return-wide v0
.end method

.method public getUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    return-object v0
.end method

.method public getUnitType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unitType:I

    return v0
.end method

.method public getValue_fl_oz()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz:D

    return-wide v0
.end method

.method public getValue_fl_oz_milk()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk:D

    return-wide v0
.end method

.method public getValue_fl_oz_milk_uk()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk_uk:D

    return-wide v0
.end method

.method public getValue_fl_oz_uk()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_uk:D

    return-wide v0
.end method

.method public getValue_g()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_g:D

    return-wide v0
.end method

.method public getValue_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb:I

    return v0
.end method

.method public getValue_lb_oz()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb_oz:D

    return-wide v0
.end method

.method public getValue_mg()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_mg:I

    return v0
.end method

.method public getValue_ml()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml:D

    return-wide v0
.end method

.method public getValue_ml_milk()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml_milk:D

    return-wide v0
.end method

.method public getValue_oz()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_oz:D

    return-wide v0
.end method

.method public isStabilized()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized:Z

    return v0
.end method

.method public setNegative(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isNegative:Ljava/lang/Boolean;

    return-void
.end method

.method public setPrecision(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    return-void
.end method

.method public setPrecision_floz_milk_uk(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_uk:I

    return-void
.end method

.method public setPrecision_floz_milk_us(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_us:I

    return-void
.end method

.method public setPrecision_floz_uk(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_uk:I

    return-void
.end method

.method public setPrecision_floz_us(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_us:I

    return-void
.end method

.method public setPrecision_g(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_g:I

    return-void
.end method

.method public setPrecision_lboz(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_lboz:I

    return-void
.end method

.method public setPrecision_ml(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml:I

    return-void
.end method

.method public setPrecision_ml_milk(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml_milk:I

    return-void
.end method

.method public setPrecision_oz(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_oz:I

    return-void
.end method

.method public setStabilized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized:Z

    return-void
.end method

.method public setTare(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isTare:Ljava/lang/Boolean;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->time:J

    return-void
.end method

.method public setUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    return-void
.end method

.method public setUnitType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unitType:I

    return-void
.end method

.method public setValue_fl_oz(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz:D

    return-void
.end method

.method public setValue_fl_oz_milk(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk:D

    return-void
.end method

.method public setValue_fl_oz_milk_uk(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk_uk:D

    return-void
.end method

.method public setValue_fl_oz_uk(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_uk:D

    return-void
.end method

.method public setValue_g(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_g:D

    return-void
.end method

.method public setValue_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb:I

    return-void
.end method

.method public setValue_lb_oz(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb_oz:D

    return-void
.end method

.method public setValue_mg(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_mg:I

    return-void
.end method

.method public setValue_ml(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml:D

    return-void
.end method

.method public setValue_ml_milk(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml_milk:D

    return-void
.end method

.method public setValue_oz(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_oz:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICKitchenScaleData{isStabilized="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", value_mg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_mg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_ml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_ml_milk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml_milk:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_oz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_oz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value_lb_oz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb_oz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_fl_oz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_fl_oz_uk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_uk:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_fl_oz_milk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", value_fl_oz_milk_uk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk_uk:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", precision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_ml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_lboz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_lboz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_oz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_oz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_ml_milk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml_milk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_floz_us="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_us:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_floz_uk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_uk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_floz_milk_us="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_us:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_floz_milk_uk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_uk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNegative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isNegative:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isTare:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
