.class public Lcom/isaigu/gymapp/bean/PickerViewData;
.super Ljava/lang/Object;
.source "PickerViewData.java"

# interfaces
.implements Lcom/contrarywind/interfaces/IPickerViewData;


# instance fields
.field public id:Ljava/lang/Long;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->id:Ljava/lang/Long;

    .line 12
    iput-object p2, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getPickerViewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PickerViewData;->text:Ljava/lang/String;

    return-object v0
.end method
