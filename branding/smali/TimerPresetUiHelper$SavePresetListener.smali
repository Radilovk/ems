.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;
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
    name = "SavePresetListener"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final onPresetLoaded:Ljava/lang/Runnable;

.field private final spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/Spinner;Ljava/lang/Runnable;)V
    .registers 4

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;->activity:Landroid/app/Activity;

    .line 174
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;->spinner:Landroid/widget/Spinner;

    .line 175
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;->onPresetLoaded:Ljava/lang/Runnable;

    .line 176
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 180
    # invokes: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->findSelectedPreset()Lcom/isaigu/gymapp/dialog/TimerPreset;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$300()Lcom/isaigu/gymapp/dialog/TimerPreset;

    move-result-object p1

    .line 181
    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->name:Ljava/lang/String;

    goto :goto_b

    :cond_9
    const-string v0, ""

    .line 182
    :goto_b
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;->activity:Landroid/app/Activity;

    const v2, 0x7f0d0158

    new-instance v3, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;->spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetListener;->onPresetLoaded:Ljava/lang/Runnable;

    invoke-direct {v3, v1, v4, p1, v5}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$SavePresetNameCallback;-><init>(Landroid/app/Activity;Landroid/widget/Spinner;Lcom/isaigu/gymapp/dialog/TimerPreset;Ljava/lang/Runnable;)V

    # invokes: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->promptName(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V
    invoke-static {v1, v2, v0, v3}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$400(Landroid/app/Activity;ILjava/lang/String;Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$NameCallback;)V

    .line 187
    return-void
.end method
