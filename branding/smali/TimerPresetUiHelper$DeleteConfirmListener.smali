.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;
.super Ljava/lang/Object;
.source "TimerPresetUiHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeleteConfirmListener"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

.field private final onPresetLoaded:Ljava/lang/Runnable;

.field private final spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .registers 5

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->activity:Landroid/app/Activity;

    .line 344
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 345
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->spinner:Landroid/widget/Spinner;

    .line 346
    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->onPresetLoaded:Ljava/lang/Runnable;

    .line 347
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 351
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

    iget-object p2, p2, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    const-string p1, ""

    # setter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->spinner:Landroid/widget/Spinner;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->refreshPresetSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V

    .line 354
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->activity:Landroid/app/Activity;

    const p2, 0x7f0d015e

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 355
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;->onPresetLoaded:Ljava/lang/Runnable;

    if-eqz p1, :cond_29

    .line 356
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 358
    :cond_29
    return-void
.end method
