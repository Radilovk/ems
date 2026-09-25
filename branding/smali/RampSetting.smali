.class public final Lcom/isaigu/gymapp/dialog/RampSetting;
.super Ljava/lang/Object;
.source "RampSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/RampSetting$Open;,
        Lcom/isaigu/gymapp/dialog/RampSetting$Pick;
    }
.end annotation


# static fields
.field private static final MAX_MS:I = 0xbb8

.field private static final STEP_MS:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/RampSetting;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 85
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 86
    check-cast v0, Landroid/app/Activity;

    .line 90
    :goto_1
    return-object v0

    .line 88
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static attach(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .locals 2

    .prologue
    .line 35
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/RampSetting;->showColumn(Landroid/widget/TextView;)V

    .line 39
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V

    .line 40
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string v1, "RampSetting.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V
    .locals 4

    .prologue
    .line 54
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 55
    if-eqz p2, :cond_1

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_0
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->clamp(I)I

    move-result v0

    .line 56
    if-eqz p2, :cond_2

    .line 57
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 61
    :goto_1
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 67
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;

    invoke-direct {v0, p0, p1, p2}, Lcom/isaigu/gymapp/dialog/RampSetting$Open;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 55
    :cond_1
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_0

    .line 59
    :cond_2
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_1
.end method

.method static clamp(I)I
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    int-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0x1f4

    return v0
.end method

.method static fmt(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float v5, p0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0441"

    const-string v2, " s"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static showColumn(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method
