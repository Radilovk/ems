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

.field private static final MODE_ROW:Ljava/lang/String; = "xems_ramp_mode_row"

.field private static final STEP_MS:I = 0x1f4

.field private static lastMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/dialog/RampSetting;->lastMode:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 28
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/RampSetting;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 158
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 159
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 160
    check-cast v0, Landroid/app/Activity;

    .line 164
    :goto_b
    return-object v0

    .line 162
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static attach(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 44
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    :try_start_7
    iget-object v1, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-nez v1, :cond_c

    .line 58
    :cond_b
    :goto_b
    return-void

    .line 47
    :cond_c
    iget v1, p2, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    sput v1, Lcom/isaigu/gymapp/dialog/RampSetting;->lastMode:I

    .line 48
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/RampSetting;->showColumn(Landroid/widget/TextView;)V

    .line 49
    const/4 v1, 0x1

    invoke-static {p0, p2, v1}, Lcom/isaigu/gymapp/dialog/RampSetting;->bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V

    .line 50
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/isaigu/gymapp/dialog/RampSetting;->bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V

    .line 51
    :goto_1b
    const/4 v1, 0x3

    if-gt v0, v1, :cond_28

    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->attachMode(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;I)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 54
    :cond_28
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/dialog/PauseSetting;->attach(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2f} :catch_30

    goto :goto_b

    .line 55
    :catch_30
    move-exception v0

    .line 56
    const-string v1, "RampSetting.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private static attachMode(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainProgram;I)V
    .registers 12

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 75
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 76
    if-eqz p0, :cond_c

    if-nez v0, :cond_d

    .line 110
    :cond_c
    :goto_c
    return-void

    .line 79
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "worklength"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    if-eqz v0, :cond_cd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    :goto_38
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_c

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems_ramp_mode_row"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_72

    .line 93
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    :cond_72
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 96
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 98
    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 100
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v3, v5, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    const-string v3, "\u041f\u043b\u0430\u0432\u043d\u043e \u2191 / \u2193"

    const-string v5, "Soft rise / fall"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41900000    # 18.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 102
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v3, 0x1

    invoke-static {v2, p1, p2, v3}, Lcom/isaigu/gymapp/dialog/RampSetting;->chipFor(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;IZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    invoke-static {v2, p1, p2, v7}, Lcom/isaigu/gymapp/dialog/RampSetting;->chipFor(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 105
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 108
    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_c

    .line 81
    :cond_cd
    const/4 v0, 0x0

    goto/16 :goto_38
.end method

.method static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 69
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 70
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5
.end method

.method private static bind(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V
    .registers 7

    .prologue
    .line 128
    iget-object v1, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 129
    if-eqz p2, :cond_5d

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_6
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->clamp(I)I

    move-result v0

    .line 130
    if-eqz p2, :cond_60

    .line 131
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 135
    :goto_e
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_53

    .line 139
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 140
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 141
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

    .line 142
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_53
    new-instance v0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/isaigu/gymapp/dialog/RampSetting$Open;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;IZ)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void

    .line 129
    :cond_5d
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_6

    .line 133
    :cond_60
    iput v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_e
.end method

.method private static chipFor(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainProgram;IZ)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 113
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/RampSetting;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 114
    if-eqz p3, :cond_47

    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_8
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->clamp(I)I

    move-result v2

    .line 115
    if-eqz p3, :cond_4a

    .line 116
    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 120
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4d

    const-string v0, "\u2191 "

    :goto_19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/RampSetting;->fmt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 121
    const/high16 v1, 0x42a80000    # 84.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 122
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    new-instance v1, Lcom/isaigu/gymapp/dialog/RampSetting$Open;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/isaigu/gymapp/dialog/RampSetting$Open;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object v0

    .line 114
    :cond_47
    iget v0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_8

    .line 118
    :cond_4a
    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_10

    .line 120
    :cond_4d
    const-string v0, "\u2193 "

    goto :goto_19
.end method

.method static clamp(I)I
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 150
    int-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0x1f4

    return v0
.end method

.method static fmt(I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 154
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

.method static lastMode()I
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/isaigu/gymapp/dialog/RampSetting;->lastMode:I

    return v0
.end method

.method private static showColumn(Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_1a
    return-void
.end method
