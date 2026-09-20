.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;
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
    name = "SavePresetNameCallback"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

.field private final onPresetLoaded:Ljava/lang/Runnable;

.field private final spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Spinner;Lcom/isaigu/gymapp/dialog/TimerPreset;Ljava/lang/Runnable;)V
    .registers 5

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->activity:Landroid/app/Activity;

    .line 274
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->spinner:Landroid/widget/Spinner;

    .line 275
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 276
    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->onPresetLoaded:Ljava/lang/Runnable;

    .line 277
    return-void
.end method


# virtual methods
.method public onName(Ljava/lang/String;)V
    .registers 4

    .line 281
    const/4 v0, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_46

    .line 286
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->existing:Lcom/isaigu/gymapp/dialog/TimerPreset;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    goto :goto_19

    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->newId()Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->captureCurrentPreset(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    .line 288
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/dialog/TimerPresetStorage;->upsert(Landroid/content/Context;Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 289
    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    # setter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->spinner:Landroid/widget/Spinner;

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->refreshPresetSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V

    .line 291
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->activity:Landroid/app/Activity;

    const v1, 0x7f0d015d

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 292
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->onPresetLoaded:Ljava/lang/Runnable;

    if-eqz p1, :cond_45

    .line 293
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 295
    :cond_45
    return-void

    .line 282
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;->activity:Landroid/app/Activity;

    const v1, 0x7f0d0160

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 283
    return-void
.end method
