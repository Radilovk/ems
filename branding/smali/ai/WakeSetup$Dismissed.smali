.class final Lcom/isaigu/gymapp/ai/WakeSetup$Dismissed;
.super Ljava/lang/Object;
.source "WakeSetup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dismissed"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 268
    # setter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 269
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->METER:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$800()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    # setter for: Lcom/isaigu/gymapp/ai/WakeSetup;->bar:Landroid/view/View;
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$102(Landroid/view/View;)Landroid/view/View;

    .line 271
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$500()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_20

    .line 272
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$900()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->reloadExamples(Landroid/content/Context;)V

    .line 274
    :cond_20
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$900()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->endSetup(Landroid/app/Activity;)V

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 276
    return-void
.end method
