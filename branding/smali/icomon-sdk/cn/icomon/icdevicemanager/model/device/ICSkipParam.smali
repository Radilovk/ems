.class public Lcn/icomon/icdevicemanager/model/device/ICSkipParam;
.super Ljava/lang/Object;
.source "ICSkipParam.java"


# instance fields
.field public group:I

.field public matchMode:I

.field public mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

.field public param:I

.field public rest_time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/device/ICSkipParam;
    .registers 2

    .line 38
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 40
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

    .line 5
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->clone()Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    return v0
.end method

.method public getMatchMode()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    return v0
.end method

.method public getMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-object v0
.end method

.method public getParam()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    return v0
.end method

.method public getRest_time()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    return v0
.end method

.method public setGroup(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    return-void
.end method

.method public setMatchMode(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    return-void
.end method

.method public setMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    return-void
.end method

.method public setParam(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    return-void
.end method

.method public setRest_time(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipParam{mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rest_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", matchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
