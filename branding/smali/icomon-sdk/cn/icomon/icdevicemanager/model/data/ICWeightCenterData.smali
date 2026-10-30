.class public Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;
.super Ljava/lang/Object;
.source "ICWeightCenterData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public isStabilized:Z

.field public kg_scale_division:I

.field public lb_scale_division:I

.field public leftPercent:D

.field public left_weight_g:I

.field public left_weight_kg:D

.field public left_weight_lb:D

.field public left_weight_st:I

.field public left_weight_st_lb:D

.field public precision_kg:I

.field public precision_lb:I

.field public precision_st_lb:I

.field public rightPercent:D

.field public right_weight_g:I

.field public right_weight_kg:D

.field public right_weight_lb:D

.field public right_weight_st:I

.field public right_weight_st_lb:D

.field public time:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;
    .registers 2

    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 108
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
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v0

    return-object v0
.end method

.method public getKg_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    return v0
.end method

.method public getLb_scale_division()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    return v0
.end method

.method public getLeftPercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    return-wide v0
.end method

.method public getLeft_weight_g()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    return v0
.end method

.method public getLeft_weight_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    return-wide v0
.end method

.method public getLeft_weight_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    return-wide v0
.end method

.method public getLeft_weight_st()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    return v0
.end method

.method public getLeft_weight_st_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    return-wide v0
.end method

.method public getPrecision_kg()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    return v0
.end method

.method public getPrecision_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    return v0
.end method

.method public getPrecision_st_lb()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    return v0
.end method

.method public getRightPercent()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    return-wide v0
.end method

.method public getRight_weight_g()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    return v0
.end method

.method public getRight_weight_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    return-wide v0
.end method

.method public getRight_weight_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    return-wide v0
.end method

.method public getRight_weight_st()I
    .registers 2

    iget v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    return v0
.end method

.method public getRight_weight_st_lb()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    return-wide v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    return-wide v0
.end method

.method public isStabilized()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    return v0
.end method

.method public setKg_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    return-void
.end method

.method public setLb_scale_division(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    return-void
.end method

.method public setLeftPercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    return-void
.end method

.method public setLeft_weight_g(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    return-void
.end method

.method public setLeft_weight_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    return-void
.end method

.method public setLeft_weight_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    return-void
.end method

.method public setLeft_weight_st(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    return-void
.end method

.method public setLeft_weight_st_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    return-void
.end method

.method public setPrecision_kg(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    return-void
.end method

.method public setPrecision_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    return-void
.end method

.method public setPrecision_st_lb(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    return-void
.end method

.method public setRightPercent(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    return-void
.end method

.method public setRight_weight_g(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    return-void
.end method

.method public setRight_weight_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    return-void
.end method

.method public setRight_weight_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    return-void
.end method

.method public setRight_weight_st(I)V
    .registers 2

    iput p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    return-void
.end method

.method public setRight_weight_st_lb(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    return-void
.end method

.method public setStabilized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICWeightCenterData{isStabilized="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", precision_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", precision_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", kg_scale_division="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lb_scale_division="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_weight_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right_weight_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left_weight_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_weight_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_weight_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_weight_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_weight_st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right_weight_st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left_weight_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_weight_st_lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
