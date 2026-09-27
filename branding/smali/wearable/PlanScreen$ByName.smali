.class final Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/bean/TrainUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainUser;)I
    .registers 5

    .prologue
    .line 408
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 409
    :goto_6
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 410
    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 408
    :cond_11
    const-string v0, ""

    goto :goto_6

    .line 409
    :cond_14
    const-string v1, ""

    goto :goto_c
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 405
    check-cast p1, Lcom/isaigu/gymapp/bean/TrainUser;

    check-cast p2, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;->compare(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v0

    return v0
.end method
