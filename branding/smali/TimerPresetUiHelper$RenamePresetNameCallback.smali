.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;
.super Ljava/lang/Object;
.source "TimerPresetUiHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RenamePresetNameCallback"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

.field private final onPresetLoaded:Ljava/lang/Runnable;

.field private final spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Spinner;Lcom/isaigu/gymapp/dialog/TimerPreset;Ljava/lang/Runnable;)V
    .registers 5

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->activity:Landroid/app/Activity;

    .line 310
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->spinner:Landroid/widget/Spinner;

    .line 311
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 312
    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->onPresetLoaded:Ljava/lang/Runnable;

    .line 313
    return-void
.end method


# virtual methods
.method public onName(Ljava/lang/String;)V
    .registers 4

    .line 317
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_32

    .line 321
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/TimerPreset;->copy()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    .line 323
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 324
    iget-object p1, v0, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    # setter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->spinner:Landroid/widget/Spinner;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->refreshPresetSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V

    .line 326
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->onPresetLoaded:Ljava/lang/Runnable;

    if-eqz p1, :cond_31

    .line 327
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 329
    :cond_31
    return-void

    .line 318
    :cond_32
    :goto_32
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$RenamePresetNameCallback;->activity:Landroid/app/Activity;

    const v0, 0x7f0d0160

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 319
    return-void
.end method
