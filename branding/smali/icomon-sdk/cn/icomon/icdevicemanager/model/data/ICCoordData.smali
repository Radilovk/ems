.class public Lcn/icomon/icdevicemanager/model/data/ICCoordData;
.super Ljava/lang/Object;
.source "ICCoordData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public time:J

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICCoordData;
    .registers 2

    .line 50
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 52
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->clone()Lcn/icomon/icdevicemanager/model/data/ICCoordData;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->time:J

    return-wide v0
.end method

.method public getX()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->y:I

    return v0
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->time:J

    return-void
.end method

.method public setX(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->x:I

    return-void
.end method

.method public setY(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICCoordData{time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
