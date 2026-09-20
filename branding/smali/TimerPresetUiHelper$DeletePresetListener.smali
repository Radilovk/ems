.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;
.super Ljava/lang/Object;
.source "TimerPresetUiHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeletePresetListener"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final onPresetLoaded:Ljava/lang/Runnable;

.field private final spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .registers 4

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->activity:Landroid/app/Activity;

    .line 223
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->spinner:Landroid/widget/Spinner;

    .line 224
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->onPresetLoaded:Ljava/lang/Runnable;

    .line 225
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 229
    # invokes: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->findSelectedPreset()Lcom/isaigu/gymapp/dialog/TimerPreset;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$300()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    .line 230
    if-nez p1, :cond_14

    .line 231
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->activity:Landroid/app/Activity;

    const v0, 0x7f0d0128

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 232
    return-void

    .line 234
    :cond_14
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->activity:Landroid/app/Activity;

    const v2, 0x7f0d015f

    .line 235
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeletePresetListener;->onPresetLoaded:Ljava/lang/Runnable;

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$DeleteConfirmListener;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/dialog/TimerPreset;Landroid/widget/Spinner;Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 241
    return-void
.end method
