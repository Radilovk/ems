.class final Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NaUser"
.end annotation


# instance fields
.field final n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

.field final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    .line 921
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 922
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 926
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 927
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->render()V

    .line 928
    return-void
.end method
