.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;
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
    name = "RenamePresetListener"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final onPresetLoaded:Ljava/lang/Runnable;

.field private final spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .registers 4

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->activity:Landroid/app/Activity;

    .line 197
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->spinner:Landroid/widget/Spinner;

    .line 198
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->onPresetLoaded:Ljava/lang/Runnable;

    .line 199
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 203
    # invokes: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->findSelectedPreset()Lcom/isaigu/gymapp/dialog/TimerPreset;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$300()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    .line 204
    if-nez p1, :cond_14

    .line 205
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->activity:Landroid/app/Activity;

    const v0, 0x7f0d0128

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 206
    return-void

    .line 208
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->activity:Landroid/app/Activity;

    const v1, 0x7f0d0159

    iget-object v2, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    new-instance v3, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->spinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetListener;->onPresetLoaded:Ljava/lang/Runnable;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Lcom/isaigu/gymapp/dialog/TimerPreset;Ljava/lang/Runnable;)V

    # invokes: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->promptName(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$400(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V

    .line 213
    return-void
.end method
