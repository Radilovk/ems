.class final Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$PresetSpinnerListener;
.super Ljava/lang/Object;
.source "TimerPresetUiHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PresetSpinnerListener"
.end annotation


# instance fields
.field private final onPresetLoaded:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$PresetSpinnerListener;->onPresetLoaded:Ljava/lang/Runnable;

    .line 135
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 139
    # getter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->ignorePresetSpinner:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$000()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 140
    return-void

    .line 142
    :cond_7
    const-string p1, ""

    if-gtz p3, :cond_f

    .line 143
    # setter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    return-void

    .line 146
    :cond_f
    add-int/lit8 p3, p3, -0x1

    .line 147
    if-ltz p3, :cond_3b

    # getter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$200()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p3, p2, :cond_1e

    goto :goto_3b

    .line 151
    :cond_1e
    # getter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->presetList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$200()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/dialog/TimerPreset;

    .line 152
    if-nez p1, :cond_2b

    .line 153
    return-void

    .line 155
    :cond_2b
    iget-object p2, p1, Lcom/isaigu/gymapp/dialog/TimerPreset;->id:Ljava/lang/String;

    # setter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->applyPreset(Lcom/isaigu/gymapp/dialog/TimerPreset;)V

    .line 157
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper$PresetSpinnerListener;->onPresetLoaded:Ljava/lang/Runnable;

    if-eqz p1, :cond_3a

    .line 158
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_3a
    return-void

    .line 148
    :cond_3b
    :goto_3b
    # setter for: Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->selectedPresetId:Ljava/lang/String;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/TimerPresetUiHelper;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 164
    return-void
.end method
