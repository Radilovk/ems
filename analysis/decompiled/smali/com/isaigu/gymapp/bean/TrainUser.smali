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

    .prologue
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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    instance-of v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 72
    :cond_1
    :goto_0
    return v1

    .line 61
    :cond_2
    if-eq p1, p0, :cond_1

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 66
    .local v0, "trainUser":Lcom/isaigu/gymapp/bean/TrainUser;
    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v6, p0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->inputId:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iget-object v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    iget v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    iget v4, p0, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_3
    move v1, v2

    .line 72
    goto :goto_0
.end method
