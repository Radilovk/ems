.class public final Lcom/isaigu/gymapp/dialog/PauseSetting;
.super Ljava/lang/Object;
.source "PauseSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/PauseSetting$Step;,
        Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;
    }
.end annotation


# static fields
.field static final MODES:[I

.field private static final TAG:Ljava/lang/String; = "xems_pause_block"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/dialog/PauseSetting;->MODES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x2
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 4

    .prologue
    .line 29
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 38
    :cond_4
    :goto_4
    return-void

    .line 32
    :cond_5
    const/4 v0, 0x0

    :goto_6
    :try_start_6
    sget-object v1, Lcom/isaigu/gymapp/dialog/PauseSetting;->MODES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 33
    sget-object v1, Lcom/isaigu/gymapp/dialog/PauseSetting;->MODES:[I

    aget v1, v1, v0

    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/dialog/PauseSetting;->attachMode(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12} :catch_15

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 35
    :catch_15
    move-exception v0

    .line 36
    const-string v1, "PauseSetting.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private static attachMode(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;I)V
    .registers 15

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 42
    if-nez v3, :cond_7

    .line 100
    :cond_6
    :goto_6
    return-void

    .line 48
    :cond_7
    if-nez p2, :cond_126

    .line 49
    const-string v0, "paulseWidth"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_120

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_120

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    :goto_1f
    if-eqz v0, :cond_123

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_123

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 52
    :goto_30
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    :cond_40
    :goto_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems_pause_block"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_5c

    .line 70
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_5c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 73
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 74
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 76
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 77
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v2, v6, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 79
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 80
    const-string v2, ""

    const-string v7, ""

    const/high16 v8, 0x41900000    # 18.0f

    const/4 v9, 0x0

    invoke-static {v4, v2, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    .line 81
    const-string v7, ""

    const-string v8, ""

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v10, 0x0

    invoke-static {v4, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v7

    .line 82
    new-instance v8, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v2, v9}, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;-><init>(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Z)V

    .line 83
    new-instance v9, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;

    const/4 v10, 0x0

    invoke-direct {v9, v3, v7, v10}, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;-><init>(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/widget/XemsUi$Stepper;Z)V

    .line 84
    iget-object v10, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v10, v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 85
    iget-object v10, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v8, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 86
    iget-object v10, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v10, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 87
    iget-object v10, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V

    .line 88
    invoke-virtual {v8}, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->show()V

    .line 89
    invoke-virtual {v9}, Lcom/isaigu/gymapp/dialog/PauseSetting$Step;->show()V

    .line 90
    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/4 v8, 0x6

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, v7, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-boolean v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_17c

    const/4 v2, 0x0

    :goto_f1
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    const-string v2, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v7, "Double impulse"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v8, "A second impulse in the pause"

    .line 95
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    new-instance v10, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;

    invoke-direct {v10, v3, v6, v9}, Lcom/isaigu/gymapp/dialog/PauseSetting$Toggle;-><init>(Lcom/isaigu/gymapp/bean/ProgramDataBean;Landroid/view/View;Lcom/isaigu/gymapp/dialog/PauseSetting$Step;)V

    .line 94
    invoke-static {v4, v2, v7, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 97
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_6

    .line 50
    :cond_120
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 51
    :cond_123
    const/4 v1, 0x0

    goto/16 :goto_30

    .line 58
    :cond_126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "worklength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->find(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_17a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_17a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 60
    :goto_14e
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems_ramp_mode_row"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 65
    if-nez v1, :cond_40

    move-object v1, v2

    goto/16 :goto_40

    .line 59
    :cond_17a
    const/4 v2, 0x0

    goto :goto_14e

    .line 92
    :cond_17c
    const/16 v2, 0x8

    goto/16 :goto_f1
.end method
