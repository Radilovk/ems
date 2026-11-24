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
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 213
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeSetup;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 214
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->step:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$100()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_12

    .line 215
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$400()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->reloadExamples(Landroid/content/Context;)V

    .line 217
    :cond_12
    # getter for: Lcom/isaigu/gymapp/ai/WakeSetup;->host:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeSetup;->access$400()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->endSetup(Landroid/app/Activity;)V

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->voiceState()V

    .line 219
    return-void
.end method
