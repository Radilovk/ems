.class public Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;
.super Ljava/lang/Object;
.source "ICSkipLightSettingParams.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public g:I

.field public r:I

.field public rpm:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->r:I

    iput p2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->g:I

    iput p3, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->b:I

    iput p4, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->rpm:I

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;
    .registers 2

    .line 28
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 30
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;)I
    .registers 3

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->rpm:I

    .line 37
    iget p1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->rpm:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 6
    check-cast p1, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->compareTo(Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipLightSettingData{r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;->rpm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
