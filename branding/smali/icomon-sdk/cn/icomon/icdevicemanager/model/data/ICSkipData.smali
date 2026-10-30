.class public Lcn/icomon/icdevicemanager/model/data/ICSkipData;
.super Ljava/lang/Object;
.source "ICSkipData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public actual_time:I

.field public avg_freq:I

.field public battery:I

.field public calories_burned:D

.field public cur_speed:I

.field public elapsed_time:I

.field public fastest_freq:I

.field public fat_burn_efficiency:D

.field public freq_count:I

.field public freqs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;",
            ">;"
        }
    .end annotation
.end field

.field public hr:I

.field public interrupts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;",
            ">;"
        }
    .end annotation
.end field

.field public isStabilized:Z

.field public mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public most_jump:I

.field public nodeId:I

.field public nodeInfo:I

.field public nodeMac:Ljava/lang/String;

.field public setting:I

.field public setting_group:I

.field public setting_rest_time:I

.field public skip_count:I

.field public status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

.field public time:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    .line 62
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->hr:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->interrupts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;
    .registers 2

    .line 136
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 138
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v0

    return-object v0
.end method

.method public getActual_time()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    return v0
.end method

.method public getAvg_freq()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    return v0
.end method

.method public getBattery()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    return v0
.end method

.method public getCalories_burned()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    return-wide v0
.end method

.method public getCur_speed()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    return v0
.end method

.method public getElapsed_time()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    return v0
.end method

.method public getFastest_freq()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    return v0
.end method

.method public getFat_burn_efficiency()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    return-wide v0
.end method

.method public getFreq_count()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    return v0
.end method

.method public getFreqs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    return-object v0
.end method

.method public getInterrupts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->interrupts:Ljava/util/List;

    return-object v0
.end method

.method public getMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-object v0
.end method

.method public getMost_jump()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    return v0
.end method

.method public getNodeId()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    return v0
.end method

.method public getNodeInfo()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    return v0
.end method

.method public getNodeMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeMac:Ljava/lang/String;

    return-object v0
.end method

.method public getSetting()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    return v0
.end method

.method public getSetting_group()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    return v0
.end method

.method public getSetting_rest_time()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    return v0
.end method

.method public getSkip_count()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    return v0
.end method

.method public getStatus()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    return-object v0
.end method

.method public getTime()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    return v0
.end method

.method public isStabilized()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    return v0
.end method

.method public setActual_time(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    return-void
.end method

.method public setAvg_freq(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    return-void
.end method

.method public setBattery(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    return-void
.end method

.method public setCalories_burned(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    return-void
.end method

.method public setCur_speed(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    return-void
.end method

.method public setElapsed_time(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    return-void
.end method

.method public setFastest_freq(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    return-void
.end method

.method public setFat_burn_efficiency(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    return-void
.end method

.method public setFreq_count(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    return-void
.end method

.method public setFreqs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    return-void
.end method

.method public setInterrupts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->interrupts:Ljava/util/List;

    return-void
.end method

.method public setMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-void
.end method

.method public setMost_jump(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    return-void
.end method

.method public setNodeId(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    return-void
.end method

.method public setNodeInfo(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    return-void
.end method

.method public setNodeMac(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeMac:Ljava/lang/String;

    return-void
.end method

.method public setSetting(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    return-void
.end method

.method public setSetting_group(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    return-void
.end method

.method public setSetting_rest_time(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    return-void
.end method

.method public setSkip_count(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    return-void
.end method

.method public setStabilized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    return-void
.end method

.method public setStatus(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    return-void
.end method

.method public setTime(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipData{isStabilized="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nodeMac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cur_speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setting_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setting_rest_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skip_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avg_freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fastest_freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", most_jump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calories_burned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", fat_burn_efficiency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", freqs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interrupts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->interrupts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
