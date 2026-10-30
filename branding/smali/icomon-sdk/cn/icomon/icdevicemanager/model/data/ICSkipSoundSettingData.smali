.class public Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;
.super Ljava/lang/Object;
.source "ICSkipSoundSettingData.java"


# instance fields
.field public assistantOn:Z

.field public bpmOn:Z

.field public fullScoreBPM:I

.field public fullScoreOn:Z

.field public hrMonitorOn:Z

.field public isAutoStop:Z

.field public modeParam:I

.field public soundMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

.field public soundOn:Z

.field public soundType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

.field public soundVolume:I

.field public vibrationOn:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->isAutoStop:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->assistantOn:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->bpmOn:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->vibrationOn:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->hrMonitorOn:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundOn:Z

    .line 54
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;->ICSkipSoundTypeFemale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

    iput-object v2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

    const/16 v2, 0x14

    iput v2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundVolume:I

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreOn:Z

    const/16 v2, 0x78

    iput v2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreBPM:I

    .line 58
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;->ICSkipSoundModeTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

    iput-object v2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

    const/16 v2, 0x3c

    iput v2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->modeParam:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->isAutoStop:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->assistantOn:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->bpmOn:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->vibrationOn:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->hrMonitorOn:Z

    return-void
.end method


# virtual methods
.method public getFullScoreBPM()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreBPM:I

    return v0
.end method

.method public getModeParam()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->modeParam:I

    return v0
.end method

.method public getSoundMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

    return-object v0
.end method

.method public getSoundType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

    return-object v0
.end method

.method public getSoundVolume()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundVolume:I

    return v0
.end method

.method public isAutoStop()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->isAutoStop:Z

    return v0
.end method

.method public isFullScoreOn()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreOn:Z

    return v0
.end method

.method public isSoundOn()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundOn:Z

    return v0
.end method

.method public setAutoStop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->isAutoStop:Z

    return-void
.end method

.method public setFullScoreBPM(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreBPM:I

    return-void
.end method

.method public setFullScoreOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreOn:Z

    return-void
.end method

.method public setModeParam(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->modeParam:I

    return-void
.end method

.method public setSoundMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

    return-void
.end method

.method public setSoundOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundOn:Z

    return-void
.end method

.method public setSoundType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

    return-void
.end method

.method public setSoundVolume(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundVolume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipSoundSettingData{soundOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", soundType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", soundVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fullScoreOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fullScoreBPM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreBPM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", modeParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->modeParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->isAutoStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
