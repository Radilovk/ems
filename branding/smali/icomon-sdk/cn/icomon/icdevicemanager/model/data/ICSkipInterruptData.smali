.class public Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;
.super Ljava/lang/Object;
.source "ICSkipInterruptData.java"


# instance fields
.field public avg_freq:I

.field public calories_burned:D

.field public freq_count:I

.field public index:I

.field public rest_time:I

.field public skip_count:I

.field public time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;
    .registers 2

    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 50
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;

    move-result-object v0

    return-object v0
.end method

.method public getAvg_freq()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->avg_freq:I

    return v0
.end method

.method public getCalories_burned()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    return-wide v0
.end method

.method public getFreq_count()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->index:I

    return v0
.end method

.method public getRest_time()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    return v0
.end method

.method public getSkip_count()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    return v0
.end method

.method public getTime()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    return v0
.end method

.method public setAvg_freq(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->avg_freq:I

    return-void
.end method

.method public setCalories_burned(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    return-void
.end method

.method public setFreq_count(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->index:I

    return-void
.end method

.method public setRest_time(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    return-void
.end method

.method public setSkip_count(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    return-void
.end method

.method public setTime(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipInterruptData{index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rest_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skip_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", calories_burned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", avg_freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->avg_freq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freq_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
