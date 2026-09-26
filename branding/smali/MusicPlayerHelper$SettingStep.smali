.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SettingStep"
.end annotation


# instance fields
.field private final max:I

.field private final min:I

.field private final step:I

.field private final stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private final which:I


# direct methods
.method constructor <init>(IIIILcom/isaigu/gymapp/widget/XemsUi$Stepper;)V
    .registers 6

    .line 2384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2385
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    .line 2386
    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    .line 2387
    iput p3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    .line 2388
    iput p4, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    .line 2389
    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 2390
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .line 2394
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4800(I)I

    move-result v0

    .line 2395
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    mul-int v3, v3, p1

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2396
    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    if-gtz v0, :cond_23

    if-lez p1, :cond_23

    .line 2397
    const/16 v1, 0x1e

    goto :goto_2b

    .line 2398
    :cond_23
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    if-ne p1, v3, :cond_2b

    const/4 p1, 0x5

    if-ge v1, p1, :cond_2b

    .line 2399
    const/4 v1, 0x0

    .line 2401
    :cond_2b
    :goto_2b
    new-instance p1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-direct {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->onAmountChange(Landroid/view/View;I)V

    .line 2402
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    return-void
.end method
