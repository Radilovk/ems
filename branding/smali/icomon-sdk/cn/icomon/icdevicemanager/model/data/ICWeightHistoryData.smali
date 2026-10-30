.class public Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;
.super Ljava/lang/Object;
.source "ICWeightHistoryData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

.field public data_calc_type:I

.field public electrode:I

.field public hr:I

.field public imp:D

.field public imp2:D

.field public imp3:D

.field public imp4:D

.field public imp5:D

.field public impendenceProperty:I

.field public impendenceType:I

.field public impendences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public kg_scale_division:I

.field public lb_scale_division:I

.field public precision_kg:I

.field public precision_lb:I

.field public precision_st_lb:I

.field public time:I

.field public userId:Ljava/lang/Long;

.field public weight_g:I

.field public weight_kg:D

.field public weight_lb:D

.field public weight_st:I

.field public weight_st_lb:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;
    .registers 2

    .line 129
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 131
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

    .line 10
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    move-result-object v0

    return-object v0
.end method

.method public getBfa_type()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-object v0
.end method

.method public getCenterData()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    return-object v0
.end method

.method public getData_calc_type()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->data_calc_type:I

    return v0
.end method

.method public getElectrode()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    return v0
.end method

.method public getHr()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    return v0
.end method

.method public getImp()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    return-wide v0
.end method

.method public getImp2()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    return-wide v0
.end method

.method public getImp3()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    return-wide v0
.end method

.method public getImp4()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    return-wide v0
.end method

.method public getImp5()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    return-wide v0
.end method

.method public getImpendenceProperty()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceProperty:I

    return v0
.end method

.method public getImpendenceType()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceType:I

    return v0
.end method

.method public getImpendences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    return-object v0
.end method

.method public getKg_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    return v0
.end method

.method public getLb_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    return v0
.end method

.method public getPrecision_kg()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    return v0
.end method

.method public getPrecision_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    return v0
.end method

.method public getPrecision_st_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    return v0
.end method

.method public getTime()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    return v0
.end method

.method public getUserId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getWeight_g()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    return v0
.end method

.method public getWeight_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    return-wide v0
.end method

.method public getWeight_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    return-wide v0
.end method

.method public getWeight_st()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    return v0
.end method

.method public getWeight_st_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    return-wide v0
.end method

.method public setBfa_type(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    return-void
.end method

.method public setCenterData(Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    return-void
.end method

.method public setData_calc_type(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->data_calc_type:I

    return-void
.end method

.method public setElectrode(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    return-void
.end method

.method public setHr(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    return-void
.end method

.method public setImp(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    return-void
.end method

.method public setImp2(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    return-void
.end method

.method public setImp3(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    return-void
.end method

.method public setImp4(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    return-void
.end method

.method public setImp5(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    return-void
.end method

.method public setImpendenceProperty(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceProperty:I

    return-void
.end method

.method public setImpendenceType(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceType:I

    return-void
.end method

.method public setImpendences(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    return-void
.end method

.method public setKg_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    return-void
.end method

.method public setLb_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    return-void
.end method

.method public setPrecision_kg(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    return-void
.end method

.method public setPrecision_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    return-void
.end method

.method public setPrecision_st_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    return-void
.end method

.method public setTime(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->userId:Ljava/lang/Long;

    return-void
.end method

.method public setWeight_g(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    return-void
.end method

.method public setWeight_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    return-void
.end method

.method public setWeight_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    return-void
.end method

.method public setWeight_st(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    return-void
.end method

.method public setWeight_st_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICWeightHistoryData{userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weight_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weight_st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weight_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", precision_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", kg_scale_division="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lb_scale_division="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", electrode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", imp5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data_calc_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->data_calc_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bfa_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", impendenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impendenceProperty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", impendences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
