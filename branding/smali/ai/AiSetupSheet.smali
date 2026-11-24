.class public final Lcom/isaigu/gymapp/ai/AiSetupSheet;
.super Ljava/lang/Object;
.source "AiSetupSheet.java"


# static fields
.field static final H_DP:I = 0x280

.field static final W_DP:I = 0x4b0

.field private static content:Landroid/widget/LinearLayout;

.field private static dialog:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static close()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 67
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_f

    .line 71
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSetupSheet;->dialog:Landroid/app/Dialog;

    .line 72
    sput-object v1, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    .line 73
    return-void

    .line 68
    :catch_f
    move-exception v0

    goto :goto_a
.end method

.method public static isOpen()Z
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static open(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 30
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    :cond_9
    :goto_9
    return-void

    .line 33
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->close()V

    .line 34
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    .line 38
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 41
    :try_start_27
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const/high16 v2, 0x44960000    # 1200.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x44200000    # 640.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 44
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 45
    const v2, 0x3f0ccccd    # 0.55f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 47
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_52} :catch_5b

    .line 50
    :goto_52
    sput-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->dialog:Landroid/app/Dialog;

    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSetupSheet;->refresh()V

    .line 52
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_9

    .line 48
    :catch_5b
    move-exception v1

    goto :goto_52
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 57
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 62
    :goto_4
    return-void

    .line 60
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 61
    sget-object v0, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSetupSheet;->content:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->build(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_4
.end method

.method static shotSize(Landroid/app/Activity;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 77
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x44960000    # 1200.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x44200000    # 640.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method
