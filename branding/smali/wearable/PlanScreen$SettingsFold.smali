.class final Lcom/isaigu/gymapp/wearable/PlanScreen$SettingsFold;
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
    name = "SettingsFold"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 613
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsOpen:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$500()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_7
    # setter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsOpen:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$502(Z)Z

    .line 614
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 615
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 616
    return-void

    .line 613
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method
