.class final Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;
.super Ljava/lang/Object;
.source "PlanScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/PlanScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModeIndex"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 153
    # setter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$202(I)I

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 155
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$300()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 156
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$300()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 158
    :cond_13
    return-void
.end method
