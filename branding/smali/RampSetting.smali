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
.field private static final STEP_MS:I = 0x64


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 26
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/RampSetting;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 83
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 84
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 85
    check-cast v0, Landroid/app/Activity;

    .line 89
    :goto_b
    return-object v0

    .line 87
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static attach(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5

    .prologue
    .line 34
    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    :try_start_6
    iget-object v0, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-nez v0, :cond_b

    .line 43
    :cond_a
    :goto_a
    return-void

    .line 37
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/RampSetting;->showColumn(Landroid/widget/TextView;)V

    .line 38
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V

    .line 39
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_a

    .line 40
    :catch_17
    move-exception v0

    .line 41
    const-string v1, "RampSetting.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private static bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V
    .registers 7

    .prologue
    .line 53
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 54
    if-eqz p2, :cond_5c

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_6
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->clamp(I)I

    move-result v0

    .line 55
    if-eqz p2, :cond_5f

    .line 56
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 60
    :goto_e
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_53

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 66
    if-ltz v1, :cond_53

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_53

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_53

    .line 67
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_53
    new-instance v0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;

    invoke-direct {v0, p0, p1, p2}, Lcom/isaigu/gymapp/dialog/RampSetting$Open;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void

    .line 54
    :cond_5c
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_6

    .line 58
    :cond_5f
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_e
.end method

.method static clamp(I)I
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static fmt(I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 79
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
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 47
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_1a
    return-void
.end method
