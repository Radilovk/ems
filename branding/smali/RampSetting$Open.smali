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
    .registers 4

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->value:Landroid/widget/TextView;

    .line 100
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 101
    iput-boolean p3, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    .line 102
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/dialog/RampSetting;->activity(Landroid/content/Context;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->access$000(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v8

    .line 108
    if-nez v8, :cond_b

    .line 143
    :goto_a
    return-void

    .line 111
    :cond_b
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 113
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    if-eqz v0, :cond_a4

    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e \u043d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v1, "Soft rise"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_1a
    const-string v1, "\u0418 \u0434\u0432\u0430\u0442\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u043f\u0440\u0438 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v2, "Both impulses with a double impulse"

    .line 115
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x208

    .line 112
    invoke-static {v8, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 118
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    if-eqz v2, :cond_ae

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    :goto_32
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/RampSetting;->clamp(I)I

    move-result v9

    .line 119
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 120
    const/4 v2, 0x0

    .line 121
    const/4 v0, 0x0

    move v6, v0

    :goto_3d
    const/16 v0, 0x14

    if-gt v6, v0, :cond_b6

    .line 122
    rem-int/lit8 v0, v6, 0x7

    if-nez v0, :cond_ca

    .line 123
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 124
    if-nez v6, :cond_b1

    const/4 v0, 0x0

    :goto_4c
    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :goto_53
    mul-int/lit8 v5, v6, 0x64

    .line 127
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

    if-ne v5, v9, :cond_b4

    const/4 v0, 0x1

    :goto_6e
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v11

    .line 129
    const/16 v0, 0x11

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    new-instance v0, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->value:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->program:Lcom/isaigu/gymapp/bean/TrainProgram;

    iget-boolean v4, p0, Lcom/isaigu/gymapp/dialog/RampSetting$Open;->up:Z

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/dialog/RampSetting$Pick;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainProgram;ZI)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 133
    rem-int/lit8 v2, v6, 0x7

    if-eqz v2, :cond_9c

    .line 134
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 136
    :cond_9c
    invoke-virtual {v7, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v2, v7

    goto :goto_3d

    .line 114
    :cond_a4
    const-string v0, "\u041f\u043b\u0430\u0432\u0435\u043d \u0441\u043f\u0430\u0434"

    const-string v1, "Soft fall"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a

    .line 118
    :cond_ae
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    goto :goto_32

    .line 124
    :cond_b1
    const/16 v0, 0x8

    goto :goto_4c

    .line 127
    :cond_b4
    const/4 v0, 0x0

    goto :goto_6e

    .line 138
    :cond_b6
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c0} :catch_c2

    goto/16 :goto_a

    .line 140
    :catch_c2
    move-exception v0

    .line 141
    const-string v1, "RampSetting.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_ca
    move-object v7, v2

    goto :goto_53
.end method
