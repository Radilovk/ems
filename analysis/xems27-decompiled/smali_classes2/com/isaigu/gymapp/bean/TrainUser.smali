.class public Lcom/isaigu/gymapp/bean/TrainUser;
.super Ljava/lang/Object;
.source "TrainUser.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public address:Ljava/lang/String;

.field public appLogoUrl:Ljava/lang/String;

.field public birtyday:Ljava/util/Date;

.field public city:Ljava/lang/String;

.field public createTime:Ljava/util/Date;

.field public disabled:Z

.field public email:Ljava/lang/String;

.field public gender:Lcom/isaigu/gymapp/bean/Gender;

.field public height:I

.field public iconUrl:Ljava/lang/String;

.field public id:J

.field public inputId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public permitProtocol:Z

.field public phone:Ljava/lang/String;

.field public rank:I

.field public remark:Ljava/lang/String;

.field public roleDescription:Ljava/lang/String;

.field public roleId:Ljava/lang/Long;

.field public roleName:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public trainName:Ljava/lang/String;

.field public useTime:J

.field public username:Ljava/lang/String;

.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->rank:I

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 62
    return v0

    .line 64
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 66
    .local v2, "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    iget-wide v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v5, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iget-object v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    iget v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    iget v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 70
    return v0

    .line 72
    :cond_2
    return v1

    .line 59
    .end local v2    # "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    :cond_3
    :goto_0
    return v1
.end method
