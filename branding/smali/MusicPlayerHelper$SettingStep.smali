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

    .line 2427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2428
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    .line 2429
    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    .line 2430
    iput p3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    .line 2431
    iput p4, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    .line 2432
    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 2433
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .line 2437
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4800(I)I

    move-result v0

    .line 2438
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    mul-int p1, p1, v3

    add-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2439
    new-instance v0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->onAmountChange(Landroid/view/View;I)V

    .line 2440
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    return-void
.end method
