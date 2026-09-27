.class final Lcom/isaigu/gymapp/wearable/PlanScreen$NaSave;
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
    name = "NaSave"
.end annotation


# instance fields
.field final n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;)V
    .registers 2

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaSave;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    .line 963
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 967
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$NaSave;->n:Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;->save()V

    .line 968
    return-void
.end method
