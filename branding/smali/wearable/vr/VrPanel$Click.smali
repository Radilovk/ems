.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Click"
.end annotation


# static fields
.field static final DONE:I = 0x0

.field static final INFO:I = 0x2

.field static final RESET:I = 0x1


# instance fields
.field private final what:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;->what:I

    .line 384
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 389
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 390
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;->what:I

    if-nez v0, :cond_17

    .line 391
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 392
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 403
    :cond_16
    :goto_16
    return-void

    .line 394
    :cond_17
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->reset(Landroid/content/Context;)V

    .line 396
    # invokes: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->fillFeel()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$900()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_16

    .line 400
    :catch_27
    move-exception v0

    .line 401
    const-string v1, "VrPanel.click"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 398
    :cond_2e
    :try_start_2e
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$800()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vr"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsModuleInfo;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_38} :catch_27

    goto :goto_16
.end method
