.class public Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;
.super Ljava/lang/Object;
.source "ICWeightExtData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public all_body:D

.field public all_body_kg:D

.field public all_body_muscle:D

.field public all_body_muscle_kg:D

.field public left_arm:D

.field public left_arm_kg:D

.field public left_arm_muscle:D

.field public left_arm_muscle_kg:D

.field public left_leg:D

.field public left_leg_kg:D

.field public left_leg_muscle:D

.field public left_leg_muscle_kg:D

.field public right_arm:D

.field public right_arm_kg:D

.field public right_arm_muscle:D

.field public right_arm_muscle_kg:D

.field public right_leg:D

.field public right_leg_kg:D

.field public right_leg_muscle:D

.field public right_leg_muscle_kg:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;
    .registers 2

    .line 114
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;

    move-result-object v0

    return-object v0
.end method

.method public getAll_body()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body:D

    return-wide v0
.end method

.method public getAll_body_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_kg:D

    return-wide v0
.end method

.method public getAll_body_muscle()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle:D

    return-wide v0
.end method

.method public getAll_body_muscle_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle_kg:D

    return-wide v0
.end method

.method public getLeft_arm()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm:D

    return-wide v0
.end method

.method public getLeft_arm_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_kg:D

    return-wide v0
.end method

.method public getLeft_arm_muscle()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle:D

    return-wide v0
.end method

.method public getLeft_arm_muscle_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle_kg:D

    return-wide v0
.end method

.method public getLeft_leg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg:D

    return-wide v0
.end method

.method public getLeft_leg_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_kg:D

    return-wide v0
.end method

.method public getLeft_leg_muscle()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle:D

    return-wide v0
.end method

.method public getLeft_leg_muscle_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle_kg:D

    return-wide v0
.end method

.method public getRight_arm()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm:D

    return-wide v0
.end method

.method public getRight_arm_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_kg:D

    return-wide v0
.end method

.method public getRight_arm_muscle()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle:D

    return-wide v0
.end method

.method public getRight_arm_muscle_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle_kg:D

    return-wide v0
.end method

.method public getRight_leg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg:D

    return-wide v0
.end method

.method public getRight_leg_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_kg:D

    return-wide v0
.end method

.method public getRight_leg_muscle()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle:D

    return-wide v0
.end method

.method public getRight_leg_muscle_kg()D
    .registers 3

    iget-wide v0, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle_kg:D

    return-wide v0
.end method

.method public setAll_body(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body:D

    return-void
.end method

.method public setAll_body_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_kg:D

    return-void
.end method

.method public setAll_body_muscle(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle:D

    return-void
.end method

.method public setAll_body_muscle_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle_kg:D

    return-void
.end method

.method public setLeft_arm(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm:D

    return-void
.end method

.method public setLeft_arm_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_kg:D

    return-void
.end method

.method public setLeft_arm_muscle(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle:D

    return-void
.end method

.method public setLeft_arm_muscle_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle_kg:D

    return-void
.end method

.method public setLeft_leg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg:D

    return-void
.end method

.method public setLeft_leg_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_kg:D

    return-void
.end method

.method public setLeft_leg_muscle(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle:D

    return-void
.end method

.method public setLeft_leg_muscle_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle_kg:D

    return-void
.end method

.method public setRight_arm(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm:D

    return-void
.end method

.method public setRight_arm_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_kg:D

    return-void
.end method

.method public setRight_arm_muscle(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle:D

    return-void
.end method

.method public setRight_arm_muscle_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle_kg:D

    return-void
.end method

.method public setRight_leg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg:D

    return-void
.end method

.method public setRight_leg_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_kg:D

    return-void
.end method

.method public setRight_leg_muscle(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle:D

    return-void
.end method

.method public setRight_leg_muscle_kg(D)V
    .registers 3

    iput-wide p1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle_kg:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICWeightExtData{left_arm="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_arm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_leg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_leg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", all_body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_arm_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_arm_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_leg_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_leg_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", all_body_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_arm_muscle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_arm_muscle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_leg_muscle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_leg_muscle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", all_body_muscle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_arm_muscle_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_arm_muscle_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_arm_muscle_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_arm_muscle_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", left_leg_muscle_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->left_leg_muscle_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right_leg_muscle_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->right_leg_muscle_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", all_body_muscle_kg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/icomon/icdevicemanager/model/data/ICWeightExtData;->all_body_muscle_kg:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
