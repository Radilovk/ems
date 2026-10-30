.class public Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;
.super Ljava/lang/Object;
.source "ICAlgorithmManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;
    .registers 7

    .line 26
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 28
    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eq v1, v2, :cond_e

    .line 29
    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 31
    :cond_e
    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 32
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-nez v0, :cond_18

    .line 33
    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 35
    :cond_18
    new-instance v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;

    invoke-direct {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;-><init>()V

    .line 36
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->weight:D

    .line 37
    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->height:I

    .line 38
    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v1

    invoke-static {v1}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    move-result-object v1

    iput-object v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->sex:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    .line 39
    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->age:I

    .line 40
    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->bmiStandard:I

    .line 41
    iget-object p0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ordinal()I

    move-result p0

    invoke-static {p0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;->valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    move-result-object p0

    iput-object p0, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->peopleType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsPeopleType;

    .line 42
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp1:D

    .line 43
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp2:D

    .line 44
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp3:D

    .line 45
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp4:D

    .line 46
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    iput-wide v1, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imp5:D

    .line 47
    iget-object p0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iput-object p0, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->imps:Ljava/util/List;

    .line 48
    iget-object p0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;->valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    move-result-object p0

    iput-object p0, v0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;->algType:Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsType;

    .line 50
    invoke-static {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->calc(Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsParams;)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;

    move-result-object p0

    .line 51
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmi:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 52
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfr:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    .line 53
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->subcutfat:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->subcutaneousFatPercent:D

    .line 54
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->vfal:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->visceralFat:D

    .line 55
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscle:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->musclePercent:D

    .line 56
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmr:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmr:I

    .line 57
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bone:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMass:D

    .line 58
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->water:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->moisturePercent:D

    .line 59
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->age:I

    int-to-double v0, v0

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->physicalAge:D

    .line 60
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->protein:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinPercent:D

    .line 61
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->sm:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smPercent:D

    .line 62
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyScore:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyScore:D

    .line 63
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyType:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyType:I

    .line 64
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightTarget:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->targetWeight:D

    .line 65
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmControl:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmControl:D

    .line 66
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmControl:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmControl:D

    .line 67
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightControl:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightControl:D

    .line 68
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->whr:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->whr:D

    .line 70
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmStandard:D

    .line 71
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiStandard:D

    .line 72
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightStandard:D

    .line 73
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmStandard:D

    .line 74
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmStandard:D

    .line 75
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrStandard:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrStandard:I

    .line 76
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpStandard:D

    .line 78
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMax:D

    .line 79
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMin:D

    .line 80
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMax:D

    .line 81
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMin:D

    .line 82
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMax:D

    .line 83
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMin:D

    .line 84
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMax:D

    .line 85
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMin:D

    .line 86
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMax:D

    .line 87
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMin:D

    .line 88
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMax:D

    .line 89
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMin:D

    .line 90
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMax:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMax:I

    .line 91
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMin:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMin:I

    .line 92
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMax:D

    .line 93
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMin:D

    .line 94
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMax:D

    .line 95
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMin:D

    .line 96
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMax:D

    .line 97
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMin:D

    .line 98
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smi:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smi:D

    .line 99
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->obesityDegree:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->obesityDegree:I

    .line 101
    iget v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1be

    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfr:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1be

    .line 102
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;-><init>()V

    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    .line 104
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmBodyfatPercentage:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm:D

    .line 105
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmBodyfatPercentage:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm:D

    .line 106
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegBodyfatPercentage:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg:D

    .line 107
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegBodyfatPercentage:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg:D

    .line 108
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkBodyfatPercentage:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body:D

    .line 110
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmBodyfatMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_kg:D

    .line 111
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmBodyfatMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_kg:D

    .line 112
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegBodyfatMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_kg:D

    .line 113
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegBodyfatMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_kg:D

    .line 114
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkBodyfatMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_kg:D

    .line 116
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmMuscle:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle:D

    .line 117
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmMuscle:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle:D

    .line 118
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegMuscle:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle:D

    .line 119
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegMuscle:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle:D

    .line 120
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkMuscle:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle:D

    .line 122
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftArmMuscleMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle_kg:D

    .line 123
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightArmMuscleMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle_kg:D

    .line 124
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->leftLegMuscleMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle_kg:D

    .line 125
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->rightLegMuscleMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle_kg:D

    .line 126
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->extData:Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    iget-wide v1, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->trunkMuscleMass:D

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle_kg:D

    :cond_1be
    return-object p1
.end method

.method public static calcOther(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;
    .registers 11

    .line 133
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 135
    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eq v1, v2, :cond_e

    .line 136
    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 138
    :cond_e
    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 139
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-nez v0, :cond_18

    .line 140
    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 143
    :cond_18
    iget-wide v1, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget v3, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;->valueOf(I)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;

    move-result-object v4

    iget v5, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    iget-object p0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;->ordinal()I

    move-result v6

    iget-wide v7, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    invoke-static/range {v1 .. v8}, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithms;->calc_other(DILcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsSex;IID)Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;

    move-result-object p0

    .line 146
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyScore:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyScore:D

    .line 147
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bodyType:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyType:I

    .line 148
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightTarget:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->targetWeight:D

    .line 149
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmControl:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmControl:D

    .line 150
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmControl:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmControl:D

    .line 151
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightControl:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightControl:D

    .line 152
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->whr:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->whr:D

    .line 154
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmStandard:D

    .line 155
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiStandard:D

    .line 156
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightStandard:D

    .line 157
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->ffmStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->ffmStandard:D

    .line 158
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmStandard:D

    .line 159
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrStandard:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrStandard:I

    .line 160
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpStandard:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpStandard:D

    .line 162
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMax:D

    .line 163
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmiMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmiMin:D

    .line 164
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMax:D

    .line 165
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfmMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfmMin:D

    .line 166
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMax:D

    .line 167
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bfpMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfpMin:D

    .line 168
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMax:D

    .line 169
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->weightMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weightMin:D

    .line 170
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMax:D

    .line 171
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smmMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smmMin:D

    .line 172
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMax:D

    .line 173
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->boneMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMin:D

    .line 174
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMax:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMax:I

    .line 175
    iget v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->bmrMin:I

    iput v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmrMin:I

    .line 176
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMax:D

    .line 177
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->waterMassMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->waterMassMin:D

    .line 178
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMax:D

    .line 179
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->proteinMassMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinMassMin:D

    .line 180
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMax:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMax:D

    .line 181
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->muscleMassMin:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->muscleMassMin:D

    .line 182
    iget-wide v0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->smi:D

    iput-wide v0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smi:D

    .line 183
    iget p0, p0, Lcom/icomon/icbodyfatalgorithms/ICBodyFatAlgorithmsResult;->obesityDegree:I

    iput p0, p1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->obesityDegree:I

    return-object p1
.end method

.method public static getBMI(FI)D
    .registers 6

    float-to-double v0, p0

    mul-int p1, p1, p1

    int-to-double p0, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr p0, v2

    div-double/2addr v0, p0

    .line 21
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p0

    return-wide p0
.end method
