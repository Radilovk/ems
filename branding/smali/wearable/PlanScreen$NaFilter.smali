.class final Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;
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
    name = "NaFilter"
.end annotation


# instance fields
.field final n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;)V
    .registers 2

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 899
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    .line 900
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->query:Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->render()V

    .line 912
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 903
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 906
    return-void
.end method
