.class public Lcn/icomon/icdevicemanager/model/data/ICWeightData;
.super Ljava/lang/Object;
.source "ICWeightData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public bfmControl:D

.field public bfmMax:D

.field public bfmMin:D

.field public bfmStandard:D

.field public bfpMax:D

.field public bfpMin:D

.field public bfpStandard:D

.field public bmi:D

.field public bmiMax:D

.field public bmiMin:D

.field public bmiStandard:D

.field public bmr:I

.field public bmrMax:I

.field public bmrMin:I

.field public bmrStandard:I

.field public bodyFatPercent:D

.field public bodyScore:D

.field public bodyType:I

.field public boneMass:D

.field public boneMax:D

.field public boneMin:D

.field public data_calc_type:I

.field public electrode:I

.field public extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

.field public ffmControl:D

.field public ffmStandard:D

.field public hr:I

.field public imp:D

.field public imp2:D

.field public imp3:D

.field public imp4:D

.field public imp5:D

.field public impendenceProperty:I

.field public impendenceType:I

.field public impendences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public isStabilized:Z

.field public isSupportHR:Z

.field public kg_scale_division:I

.field public lb_scale_division:I

.field public moisturePercent:D

.field public muscleMassMax:D

.field public muscleMassMin:D

.field public musclePercent:D

.field public obesityDegree:I

.field public physicalAge:D

.field public precision_kg:I

.field public precision_lb:I

.field public precision_st_lb:I

.field public proteinMassMax:D

.field public proteinMassMin:D

.field public proteinPercent:D

.field public smPercent:D

.field public smi:D

.field public smmMax:D

.field public smmMin:D

.field public smmStandard:D

.field public state:I

.field public subcutaneousFatPercent:D

.field public targetWeight:D

.field public temperature:D

.field public time:J

.field public userId:Ljava/lang/Long;

.field public visceralFat:D

.field public waterMassMax:D

.field public waterMassMin:D

.field public weightControl:D

.field public weightMax:D

.field public weightMin:D

.field public weightStandard:D

.field public weight_g:I

.field public weight_kg:D

.field public weight_lb:D

.field public weight_st:I

.field public weight_st_lb:D

.field public whr:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;
    .registers 2

    .line 660
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 662
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

    .line 10
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    return-object v0
.end method

.method public getBfa_type()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public getBfmControl()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmControl:D

    return-wide v0
.end method

.method public getBfmMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMax:D

    return-wide v0
.end method

.method public getBfmMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMin:D

    return-wide v0
.end method

.method public getBfmStandard()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmStandard:D

    return-wide v0
.end method

.method public getBfpMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMax:D

    return-wide v0
.end method

.method public getBfpMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMin:D

    return-wide v0
.end method

.method public getBfpStandard()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpStandard:D

    return-wide v0
.end method

.method public getBmi()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    return-wide v0
.end method

.method public getBmiMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMax:D

    return-wide v0
.end method

.method public getBmiMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMin:D

    return-wide v0
.end method

.method public getBmiStandard()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiStandard:D

    return-wide v0
.end method

.method public getBmr()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmr:I

    return v0
.end method

.method public getBmrMax()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMax:I

    return v0
.end method

.method public getBmrMin()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMin:I

    return v0
.end method

.method public getBmrStandard()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrStandard:I

    return v0
.end method

.method public getBodyFatPercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    return-wide v0
.end method

.method public getBodyScore()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyScore:D

    return-wide v0
.end method

.method public getBodyType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyType:I

    return v0
.end method

.method public getBoneMass()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMass:D

    return-wide v0
.end method

.method public getBoneMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMax:D

    return-wide v0
.end method

.method public getBoneMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMin:D

    return-wide v0
.end method

.method public getData_calc_type()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->data_calc_type:I

    return v0
.end method

.method public getElectrode()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    return v0
.end method

.method public getExtData()Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    return-object v0
.end method

.method public getFfmControl()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmControl:D

    return-wide v0
.end method

.method public getFfmStandard()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmStandard:D

    return-wide v0
.end method

.method public getHr()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    return v0
.end method

.method public getImp()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    return-wide v0
.end method

.method public getImp2()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    return-wide v0
.end method

.method public getImp3()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    return-wide v0
.end method

.method public getImp4()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    return-wide v0
.end method

.method public getImp5()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    return-wide v0
.end method

.method public getImpendenceProperty()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceProperty:I

    return v0
.end method

.method public getImpendenceType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceType:I

    return v0
.end method

.method public getImpendences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    return-object v0
.end method

.method public getKg_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    return v0
.end method

.method public getLb_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    return v0
.end method

.method public getMoisturePercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->moisturePercent:D

    return-wide v0
.end method

.method public getMuscleMassMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMax:D

    return-wide v0
.end method

.method public getMuscleMassMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMin:D

    return-wide v0
.end method

.method public getMusclePercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->musclePercent:D

    return-wide v0
.end method

.method public getObesityDegree()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->obesityDegree:I

    return v0
.end method

.method public getPhysicalAge()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->physicalAge:D

    return-wide v0
.end method

.method public getPrecision_kg()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    return v0
.end method

.method public getPrecision_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    return v0
.end method

.method public getPrecision_st_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    return v0
.end method

.method public getProteinMassMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMax:D

    return-wide v0
.end method

.method public getProteinMassMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMin:D

    return-wide v0
.end method

.method public getProteinPercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinPercent:D

    return-wide v0
.end method

.method public getSmPercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smPercent:D

    return-wide v0
.end method

.method public getSmi()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smi:D

    return-wide v0
.end method

.method public getSmmMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMax:D

    return-wide v0
.end method

.method public getSmmMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMin:D

    return-wide v0
.end method

.method public getSmmStandard()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmStandard:D

    return-wide v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    return v0
.end method

.method public getSubcutaneousFatPercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->subcutaneousFatPercent:D

    return-wide v0
.end method

.method public getTargetWeight()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->targetWeight:D

    return-wide v0
.end method

.method public getTemperature()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    return-wide v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getVisceralFat()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->visceralFat:D

    return-wide v0
.end method

.method public getWaterMassMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMax:D

    return-wide v0
.end method

.method public getWaterMassMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMin:D

    return-wide v0
.end method

.method public getWeightControl()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightControl:D

    return-wide v0
.end method

.method public getWeightMax()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMax:D

    return-wide v0
.end method

.method public getWeightMin()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMin:D

    return-wide v0
.end method

.method public getWeightStandard()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightStandard:D

    return-wide v0
.end method

.method public getWeight_g()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    return v0
.end method

.method public getWeight_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    return-wide v0
.end method

.method public getWeight_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    return-wide v0
.end method

.method public getWeight_st()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    return v0
.end method

.method public getWeight_st_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    return-wide v0
.end method

.method public getWhr()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->whr:D

    return-wide v0
.end method

.method public isStabilized()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    return v0
.end method

.method public isSupportHR()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    return v0
.end method

.method public setBfa_type(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method public setBfmControl(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmControl:D

    return-void
.end method

.method public setBfmMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMax:D

    return-void
.end method

.method public setBfmMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMin:D

    return-void
.end method

.method public setBfmStandard(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmStandard:D

    return-void
.end method

.method public setBfpMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMax:D

    return-void
.end method

.method public setBfpMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMin:D

    return-void
.end method

.method public setBfpStandard(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpStandard:D

    return-void
.end method

.method public setBmi(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    return-void
.end method

.method public setBmiMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMax:D

    return-void
.end method

.method public setBmiMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMin:D

    return-void
.end method

.method public setBmiStandard(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiStandard:D

    return-void
.end method

.method public setBmr(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmr:I

    return-void
.end method

.method public setBmrMax(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMax:I

    return-void
.end method

.method public setBmrMin(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMin:I

    return-void
.end method

.method public setBmrStandard(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrStandard:I

    return-void
.end method

.method public setBodyFatPercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    return-void
.end method

.method public setBodyScore(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyScore:D

    return-void
.end method

.method public setBodyType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyType:I

    return-void
.end method

.method public setBoneMass(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMass:D

    return-void
.end method

.method public setBoneMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMax:D

    return-void
.end method

.method public setBoneMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMin:D

    return-void
.end method

.method public setData_calc_type(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->data_calc_type:I

    return-void
.end method

.method public setElectrode(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    return-void
.end method

.method public setExtData(Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    return-void
.end method

.method public setFfmControl(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmControl:D

    return-void
.end method

.method public setFfmStandard(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmStandard:D

    return-void
.end method

.method public setHr(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    return-void
.end method

.method public setImp(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    return-void
.end method

.method public setImp2(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    return-void
.end method

.method public setImp3(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    return-void
.end method

.method public setImp4(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    return-void
.end method

.method public setImp5(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    return-void
.end method

.method public setImpendenceProperty(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceProperty:I

    return-void
.end method

.method public setImpendenceType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceType:I

    return-void
.end method

.method public setImpendences(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    return-void
.end method

.method public setKg_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    return-void
.end method

.method public setLb_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    return-void
.end method

.method public setMoisturePercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->moisturePercent:D

    return-void
.end method

.method public setMuscleMassMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMax:D

    return-void
.end method

.method public setMuscleMassMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMin:D

    return-void
.end method

.method public setMusclePercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->musclePercent:D

    return-void
.end method

.method public setObesityDegree(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->obesityDegree:I

    return-void
.end method

.method public setPhysicalAge(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->physicalAge:D

    return-void
.end method

.method public setPrecision_kg(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    return-void
.end method

.method public setPrecision_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    return-void
.end method

.method public setPrecision_st_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    return-void
.end method

.method public setProteinMassMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMax:D

    return-void
.end method

.method public setProteinMassMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMin:D

    return-void
.end method

.method public setProteinPercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinPercent:D

    return-void
.end method

.method public setSmPercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smPercent:D

    return-void
.end method

.method public setSmi(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smi:D

    return-void
.end method

.method public setSmmMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMax:D

    return-void
.end method

.method public setSmmMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMin:D

    return-void
.end method

.method public setSmmStandard(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmStandard:D

    return-void
.end method

.method public setStabilized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    return-void
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    return-void
.end method

.method public setSubcutaneousFatPercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->subcutaneousFatPercent:D

    return-void
.end method

.method public setSupportHR(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    return-void
.end method

.method public setTargetWeight(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->targetWeight:D

    return-void
.end method

.method public setTemperature(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setVisceralFat(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->visceralFat:D

    return-void
.end method

.method public setWaterMassMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMax:D

    return-void
.end method

.method public setWaterMassMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMin:D

    return-void
.end method

.method public setWeightControl(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightControl:D

    return-void
.end method

.method public setWeightMax(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMax:D

    return-void
.end method

.method public setWeightMin(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMin:D

    return-void
.end method

.method public setWeightStandard(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightStandard:D

    return-void
.end method

.method public setWeight_g(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    return-void
.end method

.method public setWeight_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    return-void
.end method

.method public setWeight_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    return-void
.end method

.method public setWeight_st(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    return-void
.end method

.method public setWeight_st_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    return-void
.end method

.method public setWhr(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->whr:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICWeightData{userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStabilized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", weight_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weight_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weight_st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", precision_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", kg_scale_division="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lb_scale_division="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportHR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bmi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bodyFatPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", subcutaneousFatPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->subcutaneousFatPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", visceralFat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->visceralFat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", musclePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->musclePercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bmr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boneMass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMass:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", moisturePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->moisturePercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", physicalAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->physicalAge:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", proteinPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", smPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", electrode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bodyScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", whr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->whr:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bodyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->targetWeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfmControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmControl:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ffmControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmControl:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weightControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightControl:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weightStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightStandard:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfmStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmStandard:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bmiStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiStandard:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", smmStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmStandard:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", ffmStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmStandard:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfpStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpStandard:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bmrStandard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrStandard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bmiMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bmiMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfmMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfmMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfpMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bfpMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weightMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weightMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", smmMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", smmMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", boneMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", boneMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bmrMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bmrMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", waterMassMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", waterMassMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", proteinMassMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", proteinMassMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", muscleMassMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", muscleMassMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", smi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smi:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", obesityDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->obesityDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data_calc_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->data_calc_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bfa_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impendenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impendenceProperty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impendences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
