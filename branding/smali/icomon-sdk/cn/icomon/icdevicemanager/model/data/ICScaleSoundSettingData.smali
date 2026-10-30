.class public Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;
.super Ljava/lang/Object;
.source "ICScaleSoundSettingData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public listSoundSupportLanguage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public soundBroadcastOn:Z

.field public soundEffectsOn:Z

.field public soundLanguageCode:I

.field public soundVolume:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundLanguageCode:I

    const/16 v0, 0x1e

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundVolume:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundBroadcastOn:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundEffectsOn:Z

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;
    .registers 2

    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;
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

    .line 7
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->clone()Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

    move-result-object v0

    return-object v0
.end method

.method public getListSoundSupportLanguage()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->listSoundSupportLanguage:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSoundLanguageCode()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundLanguageCode:I

    return v0
.end method

.method public getSoundVolume()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundVolume:I

    return v0
.end method

.method public isSoundBroadcastOn()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundBroadcastOn:Z

    return v0
.end method

.method public isSoundEffectsOn()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundEffectsOn:Z

    return v0
.end method

.method public setListSoundSupportLanguage(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->listSoundSupportLanguage:Ljava/util/ArrayList;

    return-void
.end method

.method public setSoundBroadcastOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundBroadcastOn:Z

    return-void
.end method

.method public setSoundEffectsOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundEffectsOn:Z

    return-void
.end method

.method public setSoundLanguageCode(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundLanguageCode:I

    return-void
.end method

.method public setSoundVolume(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundVolume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICScaleSoundSettingData{soundLanguageCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundLanguageCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundBroadcastOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundBroadcastOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", soundEffectsOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundEffectsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", listSoundSupportLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->listSoundSupportLanguage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
