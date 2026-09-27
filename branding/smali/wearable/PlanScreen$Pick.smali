.class final Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;
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
    name = "Pick"
.end annotation


# instance fields
.field final a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

.field final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 452
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 453
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;->a:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/Schedule;->link(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 459
    :try_start_f
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 460
    # getter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1e} :catch_29

    .line 464
    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->access$302(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->invalidate()V

    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 467
    return-void

    .line 462
    :catch_29
    move-exception v0

    goto :goto_1e
.end method
