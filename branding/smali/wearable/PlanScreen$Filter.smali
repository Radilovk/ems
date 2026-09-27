.class final Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Filter"
.end annotation


# instance fields
.field final a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

.field final c:Landroid/content/Context;

.field final list:Landroid/widget/LinearLayout;

.field final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->c:Landroid/content/Context;

    .line 422
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->list:Landroid/widget/LinearLayout;

    .line 423
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->users:Ljava/util/List;

    .line 424
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 425
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    .prologue
    .line 435
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->users:Ljava/util/List;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/PlanScreen;->fill(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 428
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 431
    return-void
.end method
