.class public Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;
.super Ljava/lang/Object;
.source "ICSkipFreqData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public duration:I

.field public skip_count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->duration:I

    iput v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->skip_count:I

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;
    .registers 2

    .line 21
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 23
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipFreqData{duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", skip_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->skip_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
