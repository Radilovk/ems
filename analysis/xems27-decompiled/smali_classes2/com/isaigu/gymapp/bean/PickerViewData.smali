.class public Lcom/isaigu/gymapp/bean/PickerViewData;
.super Ljava/lang/Object;
.source "PickerViewData.java"


# instance fields
.field public id:Ljava/lang/Long;

.field public scale:F

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "text"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->scale:F

    .line 13
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    .line 14
    iput-object p2, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getPickerViewText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 23
    iput p1, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->scale:F

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    iget v0, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
