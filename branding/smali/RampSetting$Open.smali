.class final Lcom/isaigu/gymapp/dialog/RampSetting$Open;
.super Ljava/lang/Object;
.source "RampSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/RampSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Open"
.end annotation


# instance fields
.field private final program:Lcom/isaigu/gymapp/bean/TrainProgram;

.field private final up:Z

.field private final value:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;Z)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->value:Landroid/widget/TextView;

    .line 101
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 102
    iput-boolean p3, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    .line 103
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->access$000(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v8

    .line 109
    if-nez v8, :cond_0

    .line 144
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 114
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    if-eqz v0, :cond_2

    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e \u043d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v1, "Soft rise"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_1
    const-string v1, "\u0418 \u0434\u0432\u0430\u0442\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u043f\u0440\u0438 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Both impulses with a double impulse"

    .line 116
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x208

    .line 113
    invoke-static {v8, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 119
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    if-eqz v2, :cond_3

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_2
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->clamp(I)I

    move-result v9

    .line 120
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    const/4 v0, 0x6

    if-gt v6, v0, :cond_6

    .line 123
    rem-int/lit8 v0, v6, 0x7

    if-nez v0, :cond_7

    .line 124
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 125
    if-nez v6, :cond_4

    const/4 v0, 0x0

    :goto_4
    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :goto_5
    mul-int/lit16 v5, v6, 0x1f4

    .line 128
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float v11, v5

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-ne v5, v9, :cond_5

    const/4 v0, 0x1

    :goto_6
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v11

    .line 130
    const/16 v0, 0x11

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    new-instance v0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-boolean v4, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;ZI)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 134
    rem-int/lit8 v2, v6, 0x7

    if-eqz v2, :cond_1

    .line 135
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 137
    :cond_1
    invoke-virtual {v7, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v2, v7

    goto :goto_3

    .line 115
    :cond_2
    const-string v0, "\u041f\u043b\u0430\u0432\u0435\u043d \u0441\u043f\u0430\u0434"

    const-string v1, "Soft fall"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 119
    :cond_3
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_2

    .line 125
    :cond_4
    const/16 v0, 0x8

    goto :goto_4

    .line 128
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 139
    :cond_6
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "RampSetting.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    move-object v7, v2

    goto :goto_5
.end method
