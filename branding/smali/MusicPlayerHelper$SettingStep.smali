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
    .locals 0

    .prologue
    .line 2287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2288
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    .line 2289
    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    .line 2290
    iput p3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    .line 2291
    iput p4, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    .line 2292
    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 2293
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 2297
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4800(I)I

    move-result v1

    .line 2298
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2299
    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    if-ne v2, v4, :cond_1

    if-gtz v1, :cond_1

    if-lez p1, :cond_1

    .line 2300
    const/16 v0, 0x1e

    .line 2304
    :cond_0
    :goto_0
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->onAmountChange(Landroid/view/View;I)V

    .line 2305
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingText(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingUnit(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    return-void

    .line 2301
    :cond_1
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    if-ne v1, v4, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2302
    const/4 v0, 0x0

    goto :goto_0
.end method
