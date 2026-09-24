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

    .prologue
    .line 2035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    .line 2037
    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    .line 2038
    iput p3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    .line 2039
    iput p4, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    .line 2040
    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 2041
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    .line 2045
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->min:I

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->max:I

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingValue(I)I
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$5200(I)I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->step:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2046
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->which:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->onAmountChange(Landroid/view/View;I)V

    .line 2047
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingStep;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    return-void
.end method
