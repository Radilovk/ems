.class public Lcn/icomon/icdevicemanager/model/device/ICUserInfo;
.super Ljava/lang/Object;
.source "ICUserInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public age:I

.field public bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

.field public enableBabyMode:Z

.field public enableMeasureBalance:Z

.field public enableMeasureGravity:Z

.field public enableMeasureHr:Z

.field public enableMeasureImpendence:Z

.field public enableSmallThing:Z

.field public grade:I

.field public headType:I

.field public headTypeSequence:I

.field public height:I

.field public kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

.field public lang:I

.field public lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public nickName:Ljava/lang/String;

.field public nickNameCS:I

.field public nodeId:I

.field public peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

.field public rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

.field public rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

.field public sclass:I

.field public sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

.field public startWeight:D

.field public studentNo:I

.field public targetWeight:D

.field public userId:J

.field public userIndex:I

.field public weight:D

.field public weightDirection:I

.field public weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xac

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    const/16 v0, 0x18

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    .line 179
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ICSexTypeMale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    .line 180
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitKg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 181
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 182
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->ICKitchenScaleUnitG:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    .line 183
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ICPeopleTypeNormal:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    .line 184
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 185
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableSmallThing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    const-string v1, "icomon"

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    iput v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickNameCS:I

    .line 200
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;->ICBMIStandardWHO:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    .line 201
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;
    .registers 2

    .line 207
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 209
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

    .line 11
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14

    .line 507
    check-cast p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 508
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 511
    :cond_a
    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    iget-wide v3, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    sub-double v5, v0, v3

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v9, v5, v7

    if-gtz v9, :cond_f6

    sub-double/2addr v0, v3

    const-wide v3, -0x40af9db22d0e5604L    # -0.001

    cmpg-double v5, v0, v3

    if-gez v5, :cond_25

    goto/16 :goto_f6

    .line 514
    :cond_25
    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    iget-wide v5, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    sub-double v9, v0, v5

    cmpl-double v11, v9, v7

    if-gtz v11, :cond_f6

    sub-double/2addr v0, v5

    cmpg-double v5, v0, v3

    if-gez v5, :cond_36

    goto/16 :goto_f6

    .line 517
    :cond_36
    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    iget-wide v5, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    sub-double v9, v0, v5

    cmpl-double v11, v9, v7

    if-gtz v11, :cond_f6

    sub-double/2addr v0, v5

    cmpg-double v5, v0, v3

    if-gez v5, :cond_47

    goto/16 :goto_f6

    .line 520
    :cond_47
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    if-eq v0, v1, :cond_4e

    return v2

    .line 523
    :cond_4e
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    if-eq v0, v1, :cond_55

    return v2

    .line 526
    :cond_55
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v0, v1, :cond_5c

    return v2

    .line 529
    :cond_5c
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    if-eq v0, v1, :cond_63

    return v2

    .line 532
    :cond_63
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    if-eq v0, v1, :cond_6a

    return v2

    .line 535
    :cond_6a
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    if-eq v0, v1, :cond_71

    return v2

    .line 538
    :cond_71
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eq v0, v1, :cond_78

    return v2

    .line 541
    :cond_78
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    if-eq v0, v1, :cond_7f

    return v2

    .line 544
    :cond_7f
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    if-eq v0, v1, :cond_86

    return v2

    .line 547
    :cond_86
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    if-eq v0, v1, :cond_8d

    return v2

    .line 550
    :cond_8d
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    if-eq v0, v1, :cond_94

    return v2

    .line 553
    :cond_94
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    if-eq v0, v1, :cond_9b

    return v2

    .line 556
    :cond_9b
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    if-eq v0, v1, :cond_a2

    return v2

    .line 559
    :cond_a2
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableSmallThing:Z

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableSmallThing:Z

    if-eq v0, v1, :cond_a9

    return v2

    .line 562
    :cond_a9
    iget-boolean v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    if-eq v0, v1, :cond_b0

    return v2

    .line 565
    :cond_b0
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    if-eq v0, v1, :cond_b7

    return v2

    .line 568
    :cond_b7
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    if-eq v0, v1, :cond_be

    return v2

    .line 571
    :cond_be
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    if-eq v0, v1, :cond_c5

    return v2

    .line 574
    :cond_c5
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    if-eq v0, v1, :cond_cc

    return v2

    .line 577
    :cond_cc
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    if-eq v0, v1, :cond_d3

    return v2

    .line 580
    :cond_d3
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickNameCS:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickNameCS:I

    if-eq v0, v1, :cond_da

    return v2

    .line 583
    :cond_da
    iget v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    if-eq v0, v1, :cond_e1

    return v2

    .line 586
    :cond_e1
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f4

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f4

    return v2

    :cond_f4
    const/4 p1, 0x1

    return p1

    :cond_f6
    :goto_f6
    return v2
.end method

.method public getAge()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    return v0
.end method

.method public getBfaType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public getBmiStanard()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    return-object v0
.end method

.method public getGrade()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    return v0
.end method

.method public getHeadType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    return v0
.end method

.method public getHeadTypeSequence()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    return v0
.end method

.method public getKitchenUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    return-object v0
.end method

.method public getLang()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lang:I

    return v0
.end method

.method public getLockBfaType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickNameCS()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickNameCS:I

    return v0
.end method

.method public getNodeId()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    return v0
.end method

.method public getPeopleType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    return-object v0
.end method

.method public getRulerMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-object v0
.end method

.method public getRulerUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-object v0
.end method

.method public getSclass()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    return v0
.end method

.method public getSex()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    return-object v0
.end method

.method public getStartWeight()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    return-wide v0
.end method

.method public getStudentNo()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    return v0
.end method

.method public getTargetWeight()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    return-wide v0
.end method

.method public getUserId()J
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    return-wide v0
.end method

.method public getUserIndex()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    return v0
.end method

.method public getWeight()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    return-wide v0
.end method

.method public getWeightDirection()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    return v0
.end method

.method public getWeightUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-object v0
.end method

.method public isEnableBabyMode()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    return v0
.end method

.method public isEnableMeasureBalance()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    return v0
.end method

.method public isEnableMeasureGravity()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    return v0
.end method

.method public isEnableMeasureHr()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    return v0
.end method

.method public isEnableMeasureImpendence()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    return v0
.end method

.method public isEnableSmallThing()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableSmallThing:Z

    return v0
.end method

.method public setAge(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    return-void
.end method

.method public setBfaType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method public setBmiStanard(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    return-void
.end method

.method public setEnableBabyMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    return-void
.end method

.method public setEnableMeasureBalance(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    return-void
.end method

.method public setEnableMeasureGravity(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    return-void
.end method

.method public setEnableMeasureHr(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    return-void
.end method

.method public setEnableMeasureImpendence(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    return-void
.end method

.method public setEnableSmallThing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableSmallThing:Z

    return-void
.end method

.method public setGrade(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    return-void
.end method

.method public setHeadType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    return-void
.end method

.method public setHeadTypeSequence(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    return-void
.end method

.method public setKitchenUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    return-void
.end method

.method public setLang(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lang:I

    return-void
.end method

.method public setLockBfaType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setNickNameCS(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickNameCS:I

    return-void
.end method

.method public setNodeId(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    return-void
.end method

.method public setPeopleType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    return-void
.end method

.method public setRulerMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    return-void
.end method

.method public setRulerUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    return-void
.end method

.method public setSclass(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    return-void
.end method

.method public setSex(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    return-void
.end method

.method public setStartWeight(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    return-void
.end method

.method public setStudentNo(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    return-void
.end method

.method public setTargetWeight(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    return-void
.end method

.method public setUserIndex(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    return-void
.end method

.method public setWeight(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    return-void
.end method

.method public setWeightDirection(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    return-void
.end method

.method public setWeightUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICUserInfo{userIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lang:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", grade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", studentNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", targetWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weightDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bfaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lockBfaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lockBfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peopleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weightUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rulerUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rulerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kitchenUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bmiStanard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bmiStanard:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBMIStandard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enableMeasureImpendence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableMeasureHr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableMeasureBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableMeasureGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
