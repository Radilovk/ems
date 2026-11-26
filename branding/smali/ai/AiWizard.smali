.class public final Lcom/isaigu/gymapp/ai/AiWizard;
.super Ljava/lang/Object;
.source "AiWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiWizard$Nav;,
        Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;,
        Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;,
        Lcom/isaigu/gymapp/ai/AiWizard$Phrase;,
        Lcom/isaigu/gymapp/ai/AiWizard$SayKey;,
        Lcom/isaigu/gymapp/ai/AiWizard$Draft;,
        Lcom/isaigu/gymapp/ai/AiWizard$SayClick;,
        Lcom/isaigu/gymapp/ai/AiWizard$PadState;,
        Lcom/isaigu/gymapp/ai/AiWizard$PadKey;,
        Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;,
        Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;
    }
.end annotation


# static fields
.field static final LABEL_DP:I = 0x60

.field static final N_BACK:I = 0x4

.field static final N_CLOSE:I = 0x2

.field static final N_CREATE:I = 0x6

.field static final N_EDIT:I = 0x3

.field static final N_NEXT:I = 0x5

.field static final N_REVISE:I = 0x7

.field static final RESULT:I = 0x3

.field static final ROW_DP:I = 0x3c

.field static final STEP_CLIENT:I = 0x0

.field static final STEP_PROGRAM:I = 0x1

.field static final STEP_TODAY:I = 0x2

.field static editClient:Z

.field private static healthBox:Landroid/widget/LinearLayout;

.field private static healthDlg:Landroid/app/Dialog;

.field private static pad:Landroid/app/Dialog;

.field static page:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$202(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static adviceCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v5, 0x41600000    # 14.0f

    .line 535
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 536
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 537
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v6, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v3, 0x0

    invoke-static {p0, p2, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 540
    const/4 v2, 0x0

    const v3, 0x3f8f5c29    # 1.12f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 541
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    return-object v0
.end method

.method private static big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/high16 v4, 0x41000000    # 8.0f

    const/16 v6, 0x11

    const/4 v5, 0x1

    .line 623
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 625
    const/4 v1, 0x0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 626
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 628
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 629
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 630
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 632
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 633
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 634
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    return-object v0
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 56
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 57
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->header(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    sget v1, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_42

    .line 60
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->result(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 64
    :goto_36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void

    .line 62
    :cond_42
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->step(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_36
.end method

.method private static chatColumn(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v9, 0x41000000    # 8.0f

    const/4 v11, -0x2

    const/4 v2, 0x1

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v3, 0x0

    .line 444
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 445
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v0, v1, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 446
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->status(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 449
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 450
    const/16 v0, 0x50

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 451
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v7

    .line 452
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_4d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6e

    .line 453
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubble(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiCoach$Turn;)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->bubbleParams(Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiCoach$Turn;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4d

    .line 455
    :cond_6e
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_b5

    .line 456
    const-string v0, "\u2022  \u2022  \u2022"

    const/high16 v1, 0x41900000    # 18.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v1, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 457
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 458
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v1, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 461
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 462
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    :cond_b5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    new-instance v0, Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 467
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_12a

    .line 468
    new-instance v6, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 469
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_fd

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    .line 471
    :goto_dd
    array-length v7, v0

    move v4, v3

    :goto_df
    if-ge v4, v7, :cond_122

    aget-object v8, v0, v4

    .line 472
    sget-object v1, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v1, :cond_120

    move v1, v2

    :goto_e8
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v8, v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 473
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    invoke-direct {v9, v8, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 471
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_df

    .line 469
    :cond_fd
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    const-string v4, "lighter"

    .line 470
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "\u043f\u043e\u0432\u0435\u0447\u0435 \u043a\u043e\u0440\u0435\u043c"

    const-string v4, "more abs"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v4, "\u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e"

    const-string v7, "shorter"

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_dd

    :cond_120
    move v1, v3

    .line 472
    goto :goto_e8

    .line 476
    :cond_122
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    :cond_12a
    const-string v0, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0438\u043b\u0438 \u043a\u0430\u0436\u0438 \u043d\u0430 AI\u2026"

    const-string v1, "Write or say it to the AI\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->inputLine(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    return-object v5
.end method

.method private static chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 347
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 349
    return-object v0
.end method

.method private static chosen(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 7

    .prologue
    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    const-string v0, "  \u00b7  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v4, :cond_6c

    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v4, "passive"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v0, "  \u00b7  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_75

    const-string v0, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v4, "the AI writes the program"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->healthLabels(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v0

    .line 160
    const-string v1, "  \u00b7  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "\u0437\u0434\u0440\u0430\u0432/\u0430"

    const-string v3, "healthy"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    return-void

    .line 156
    :cond_6c
    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v4, "active"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 158
    :cond_75
    const-string v0, "\u0433\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v4, "ready program"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 160
    :cond_7e
    const-string v0, "\u0438\u043c\u0430 \u0437\u0434\u0440\u0430\u0432\u043d\u0438 \u043e\u0441\u043e\u0431\u0435\u043d\u043e\u0441\u0442\u0438"

    const-string v3, "health notes"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53
.end method

.method private static client(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/high16 v13, 0x42700000    # 60.0f

    const-wide/16 v10, 0x0

    const/16 v12, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 195
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v6

    .line 196
    cmpl-double v0, v6, v10

    if-lez v0, :cond_fa

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v3

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v1

    if-nez v1, :cond_108

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiWizard;->editClient:Z

    if-nez v1, :cond_108

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    if-lez v1, :cond_108

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    cmpl-double v1, v8, v10

    if-lez v1, :cond_108

    .line 199
    const-string v1, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v5, "Client"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v7, :cond_fe

    const-string v1, "\u0436\u0435\u043d\u0430"

    const-string v7, "female"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_57
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u0433"

    const-string v7, " y"

    .line 201
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u0441\u043c  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u043a\u0433  \u00b7  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u0418\u0422\u041c "

    const-string v6, "BMI "

    .line 202
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    const/high16 v1, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 205
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->grow()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u270e  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v2, "Edit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :goto_f9
    return-void

    .line 196
    :cond_fa
    const-string v0, "\u2014"

    goto/16 :goto_24

    .line 200
    :cond_fe
    const-string v1, "\u043c\u044a\u0436"

    const-string v7, "male"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    .line 212
    :cond_108
    const-string v1, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v5, "Client"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 213
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    .line 214
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v9, :cond_20b

    move v1, v2

    :goto_132
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v9, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 213
    invoke-static {p0, v8, v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 215
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43300000    # 176.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "\u0433\u043e\u0434."

    const-string v9, "yrs"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v1, v8, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "\u0441\u043c"

    invoke-static {p0, v1, v8, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u043a\u0433"

    const/4 v8, 0x2

    invoke-static {p0, v1, v4, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 220
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 221
    const/high16 v8, 0x41900000    # 18.0f

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    cmpl-double v1, v6, v10

    if-ltz v1, :cond_20e

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_1cf
    invoke-static {p0, v0, v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 222
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 223
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const-string v0, "\u0418\u0422\u041c"

    const-string v1, "BMI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 225
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 226
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42680000    # 58.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f9

    :cond_20b
    move v1, v3

    .line 214
    goto/16 :goto_132

    .line 221
    :cond_20e
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1cf
.end method

.method private static colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 639
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 640
    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 641
    return-object v0
.end method

.method private static experience(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_9

    .line 263
    :goto_8
    return-void

    .line 259
    :cond_9
    const-string v0, "\u041e\u043f\u0438\u0442 \u0441 EMS"

    const-string v1, "EMS before"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 260
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    const-string v3, "First time"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u044a\u0442\u0438"

    const-string v3, "A few"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v4, "Regularly"

    .line 261
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v3, v6}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 260
    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42700000    # 60.0f

    .line 262
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8
.end method

.method private static fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 645
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 646
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 647
    return-object v0
.end method

.method private static footer(Landroid/content/Context;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 131
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    sget v1, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    if-lez v1, :cond_4c

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2039  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u041d\u0430\u0437\u0430\u0434"

    const-string v5, "Back"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 134
    new-instance v4, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x430c0000    # 140.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_4c
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v2, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    sget v1, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b8

    move v1, v0

    .line 140
    :goto_61
    if-eqz v1, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2726  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u0421\u044a\u0437\u0434\u0430\u0439 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430"

    const-string v5, "Create the session"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 142
    const/high16 v0, 0x41980000    # 19.0f

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    new-instance v5, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    if-eqz v1, :cond_d6

    const/4 v0, 0x6

    :goto_8c
    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    if-eqz v1, :cond_a1

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_a1

    .line 145
    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 146
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    :cond_a1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_d8

    const/high16 v0, 0x43a00000    # 320.0f

    :goto_a7
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    return-object v3

    :cond_b8
    move v1, v2

    .line 139
    goto :goto_61

    .line 141
    :cond_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v5, "Next"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  \u203a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7e

    .line 143
    :cond_d6
    const/4 v0, 0x5

    goto :goto_8c

    .line 148
    :cond_d8
    const/high16 v0, 0x435c0000    # 220.0f

    goto :goto_a7
.end method

.method private static freeTraining(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 586
    sget-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 587
    if-nez v3, :cond_27

    .line 588
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_1e

    const-string v0, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430\u2026"

    const-string v1, "The AI is writing the exercises\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    :goto_12
    const/high16 v1, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 588
    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    :cond_1d
    return-void

    .line 589
    :cond_1e
    const-string v0, "AI \u0449\u0435 \u0441\u044a\u0441\u0442\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u0441\u043b\u0435\u0434 \u043c\u0430\u043b\u043a\u043e."

    const-string v1, "The AI will write the exercises in a moment."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 593
    :cond_27
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a3

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    :goto_31
    const/high16 v1, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 594
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 595
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 596
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiWorkout;->lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 598
    :goto_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    if-nez v1, :cond_ac

    const/4 v0, 0x6

    :goto_79
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    .line 601
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9f

    .line 602
    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    :cond_9f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 593
    :cond_a3
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI workout"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 599
    :cond_ac
    const/16 v0, 0x8

    goto :goto_79
.end method

.method private static grow()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 188
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private static header(Landroid/content/Context;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v4, 0x1

    const/4 v5, -0x2

    .line 70
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 71
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v3, "AI coach"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v6, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string v0, "\u0413\u043e\u0441\u0442"

    const-string v2, "Guest"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   \u00b7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_59
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v6, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 76
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 77
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    if-ge v0, v7, :cond_a3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / 3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 80
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 83
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_a3
    const-string v0, "\u2715"

    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 86
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    new-instance v2, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-object v1

    .line 73
    :cond_cc
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_40

    .line 74
    :cond_d2
    const-string v0, ""

    goto :goto_59
.end method

.method private static health(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 301
    const-string v1, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v2, "Health"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {p0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 302
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 303
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 304
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->healthLabels(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0417\u0434\u0440\u0430\u0432/\u0430"

    const-string v4, "Healthy"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {p0, v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0418\u043c\u0430 \u043d\u0435\u0449\u043e"

    const-string v4, "Something"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    :goto_89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->grow()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    return-void

    .line 313
    :cond_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b6

    const-string v1, ", "

    :goto_ae
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a

    :cond_b6
    const-string v1, ""

    goto :goto_ae

    .line 317
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u26a0  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 319
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 320
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 322
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    const-string v0, "\u270e"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_89
.end method

.method static healthLabels(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 332
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 333
    :goto_7
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_20

    .line 334
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 335
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 338
    :cond_20
    :goto_20
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_39

    .line 339
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 340
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 343
    :cond_39
    return-object v2
.end method

.method static healthView(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v11, 0x42600000    # 56.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 775
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 776
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 777
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 778
    const-string v0, "\u041a\u0430\u043a\u0432\u043e \u0438\u043c\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442?"

    const-string v2, "What does the client have?"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 779
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 780
    :goto_40
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_9f

    .line 781
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v6, v2, v0

    .line 782
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v7, :cond_6a

    const-string v2, "postpartum"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "diastasis"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "menopause"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 780
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 785
    :cond_6a
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v7

    .line 786
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_9c

    const-string v2, "\u2713 "

    :goto_77
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 787
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 788
    new-instance v7, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;

    invoke-direct {v7, v6}, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_67

    .line 786
    :cond_9c
    const-string v2, ""

    goto :goto_77

    .line 791
    :cond_9f
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    const-string v0, "\u041d\u0435 \u0441\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0441 EMS \u043f\u0440\u0438"

    const-string v2, "No EMS with"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 794
    :goto_c3
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_112

    .line 795
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v6, v2, v0

    .line 796
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v7, :cond_dd

    const-string v2, "pregnancy"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 794
    :goto_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 799
    :cond_dd
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v7

    .line 800
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_10f

    const-string v2, "\u2298 "

    :goto_ea
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 801
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 802
    new-instance v7, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;

    invoke-direct {v7, v6}, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_da

    .line 800
    :cond_10f
    const-string v2, ""

    goto :goto_ea

    .line 805
    :cond_112
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 807
    const-string v2, "\u041d\u0438\u0449\u043e \u2014 \u0437\u0434\u0440\u0430\u0432/\u0430"

    const-string v3, "Nothing \u2014 healthy"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 808
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v1, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v5, "Done"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 811
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v1, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 813
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 814
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    const/16 v1, 0x12

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    return-object v4
.end method

.method static inputLine(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 372
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 373
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 374
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 375
    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 376
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 378
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 379
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 380
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 381
    const/16 v0, 0x4001

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 382
    const v0, 0x12000004

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 383
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 385
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$SayKey;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiWizard$SayKey;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 386
    new-instance v4, Lcom/isaigu/gymapp/ai/TalkButton;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/TalkButton;-><init>(Landroid/content/Context;)V

    .line 387
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_bd

    const/4 v0, 0x1

    :goto_7e
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setSend(Z)V

    .line 388
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$Draft;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/ai/AiWizard$Draft;-><init>(Lcom/isaigu/gymapp/ai/TalkButton;)V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 389
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;

    invoke-direct {v0, v3}, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/ai/TalkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, p2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v1, p2, 0x4

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v3, p2, 0x4

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 393
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    return-object v2

    :cond_bd
    move v0, v1

    .line 387
    goto :goto_7e
.end method

.method static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 617
    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 618
    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 619
    return-object v0
.end method

.method static lastAiWord()Ljava/lang/String;
    .registers 3

    .prologue
    .line 576
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v2

    .line 577
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-ltz v1, :cond_24

    .line 578
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_20

    .line 579
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    .line 582
    :goto_1f
    return-object v0

    .line 577
    :cond_20
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b

    .line 582
    :cond_24
    const-string v0, ""

    goto :goto_1f
.end method

.method private static num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 238
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 239
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 240
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;

    invoke-direct {v1, p3}, Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 249
    return-object v0
.end method

.method private static numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 231
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 232
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 233
    return-object v0
.end method

.method private static offline(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 546
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v1, "No AI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static openHealth(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 749
    if-nez p0, :cond_3

    .line 764
    :goto_2
    return-void

    .line 752
    :cond_3
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 753
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 754
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    .line 755
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->healthView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 756
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 758
    :try_start_20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 759
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x44570000    # 860.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3b} :catch_41

    .line 762
    :goto_3b
    sput-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;

    .line 763
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 760
    :catch_41
    move-exception v1

    goto :goto_3b
.end method

.method static openPad(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    .line 655
    if-nez p0, :cond_3

    .line 668
    :goto_2
    return-void

    .line 658
    :cond_3
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 659
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 660
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiWizard;->padView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 662
    :try_start_13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x43aa0000    # 340.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2e} :catch_34

    .line 666
    :goto_2e
    sput-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;

    .line 667
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 664
    :catch_34
    move-exception v1

    goto :goto_2e
.end method

.method static padView(Landroid/content/Context;I)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x2

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 672
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 673
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 674
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 675
    if-nez p1, :cond_e8

    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v3, "Age"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 677
    :goto_2e
    if-nez p1, :cond_100

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 678
    :goto_32
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x42300000    # 44.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 680
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 681
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    new-instance v6, Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    invoke-direct {v6, p1, v0}, Lcom/isaigu/gymapp/ai/AiWizard$PadState;-><init>(ILandroid/widget/TextView;)V

    .line 683
    const/16 v0, 0xc

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v7, v1

    const-string v0, "2"

    aput-object v0, v7, v8

    const-string v0, "3"

    aput-object v0, v7, v2

    const-string v0, "4"

    aput-object v0, v7, v12

    const/4 v0, 0x4

    const-string v3, "5"

    aput-object v3, v7, v0

    const/4 v0, 0x5

    const-string v3, "6"

    aput-object v3, v7, v0

    const/4 v0, 0x6

    const-string v3, "7"

    aput-object v3, v7, v0

    const/4 v0, 0x7

    const-string v3, "8"

    aput-object v3, v7, v0

    const/16 v0, 0x8

    const-string v3, "9"

    aput-object v3, v7, v0

    const/16 v0, 0x9

    const-string v3, "\u232b"

    aput-object v3, v7, v0

    const/16 v0, 0xa

    const-string v3, "0"

    aput-object v3, v7, v0

    const/16 v0, 0xb

    const-string v3, "\u2713"

    aput-object v3, v7, v0

    move v4, v1

    .line 684
    :goto_a6
    const/4 v0, 0x4

    if-ge v4, v0, :cond_125

    .line 685
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v3, v1

    .line 686
    :goto_ae
    if-ge v3, v12, :cond_118

    .line 687
    mul-int/lit8 v0, v4, 0x3

    add-int/2addr v0, v3

    aget-object v9, v7, v0

    .line 688
    const-string v0, "\u2713"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    move v0, v1

    :goto_be
    invoke-static {p0, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v10

    .line 689
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 690
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;

    invoke-direct {v0, v6, v9}, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;-><init>(Lcom/isaigu/gymapp/ai/AiWizard$PadState;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 692
    if-nez v3, :cond_111

    move v0, v1

    :goto_df
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 693
    invoke-virtual {v8, v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ae

    .line 675
    :cond_e8
    if-ne p1, v8, :cond_f5

    .line 676
    const-string v0, "\u0420\u044a\u0441\u0442, \u0441\u043c"

    const-string v3, "Height, cm"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2e

    :cond_f5
    const-string v0, "\u0422\u0435\u0433\u043b\u043e, \u043a\u0433"

    const-string v3, "Weight, kg"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2e

    .line 677
    :cond_100
    if-ne p1, v8, :cond_106

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    goto/16 :goto_32

    :cond_106
    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    goto/16 :goto_32

    :cond_10f
    move v0, v2

    .line 688
    goto :goto_be

    .line 692
    :cond_111
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_df

    .line 695
    :cond_118
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a6

    .line 697
    :cond_125
    return-object v5
.end method

.method private static planColumn(Landroid/content/Context;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 484
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 485
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 486
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 487
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 489
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->planFacts(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->advice()[Ljava/lang/String;

    move-result-object v4

    .line 492
    if-nez v4, :cond_15b

    .line 493
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_151

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435\u2026"

    const-string v6, "The AI is writing the advice\u2026"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_5a
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 493
    invoke-static {p0, v0, v7, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v5, 0xc

    .line 495
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 493
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    :cond_69
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->lastAiWord()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9e

    sget-boolean v5, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v5, :cond_9e

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->offline(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9e

    if-eqz v4, :cond_8d

    const/4 v5, 0x4

    aget-object v5, v4, v5

    if-eqz v5, :cond_8d

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9e

    .line 506
    :cond_8d
    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    :cond_9e
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_a6

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-eqz v0, :cond_19b

    :cond_a6
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_19b

    const/4 v0, 0x1

    .line 509
    :goto_ab
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 510
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 511
    const-string v2, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438 \u0438\u0437\u0431\u043e\u0440\u0430"

    const-string v5, "Change the choice"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 512
    new-instance v5, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43520000    # 210.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    if-eqz v0, :cond_19e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u25b6   "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\u0421\u0442\u0430\u0440\u0442"

    const-string v6, "Start"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_f8
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 516
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 517
    new-instance v5, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v5, v9}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    if-nez v0, :cond_114

    .line 519
    const v0, 0x3ee66666    # 0.45f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 520
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 522
    :cond_114
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 523
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 524
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 0 \u2014 \u043a\u0430\u0447\u0432\u0430\u0448 \u044f \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v2, "Strength starts at 0 \u2014 raise it during the session."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 528
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 529
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    return-object v3

    .line 494
    :cond_151
    const-string v0, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u044f\u0432\u044f\u0432\u0430\u0442 \u0442\u0443\u043a, \u043a\u043e\u0433\u0430\u0442\u043e AI \u0441\u044a\u0441\u0442\u0430\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v5, "The advice appears here when the AI has written the session."

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5a

    .line 497
    :cond_15b
    const-string v0, "\u041d\u0430\u0441\u043e\u043a\u0438 \u043e\u0442 AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v5, "From the AI coach"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v5, 0xe

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 498
    :goto_171
    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_69

    array-length v5, v4

    if-ge v0, v5, :cond_69

    .line 499
    aget-object v5, v4, v0

    if-eqz v5, :cond_198

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_198

    .line 500
    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v6, v4, v0

    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/ai/AiWizard;->adviceCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    :cond_198
    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    :cond_19b
    move v0, v1

    .line 508
    goto/16 :goto_ab

    .line 515
    :cond_19e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f\u2026"

    const-string v6, "The AI is writing\u2026"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f8
.end method

.method private static planFacts(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 14

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 402
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v2

    .line 403
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_17

    .line 404
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiWizard;->freeTraining(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 429
    :cond_16
    :goto_16
    return-void

    .line 405
    :cond_17
    if-eqz v2, :cond_16

    .line 406
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41c00000    # 24.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v3, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 407
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 408
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 409
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v3, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v0

    .line 411
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v0, v10

    aget v6, v0, v7

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043c\u0438\u043d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v6, "active"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v8, v10}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, v0, v11

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043c\u0438\u043d"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v5, "cool-down"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v5, :cond_192

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2013"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u043e\u0442 10"

    const-string v5, "feel of 10"

    .line 415
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 415
    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 414
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    .line 418
    if-eqz v3, :cond_167

    .line 419
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    if-lez v0, :cond_196

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 420
    :goto_f5
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    if-lez v1, :cond_19a

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 421
    :goto_fb
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    if-lez v2, :cond_19e

    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 422
    :goto_101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz  \u00b7  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v4, "on"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043f\u0430\u0443\u0437\u0430"

    const-string v2, "pause"

    .line 423
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u00b7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 422
    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 423
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 422
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    :cond_167
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_16

    .line 414
    :cond_192
    const-string v0, ""

    goto/16 :goto_bb

    .line 419
    :cond_196
    iget v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto/16 :goto_f5

    .line 420
    :cond_19a
    iget v1, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    goto/16 :goto_fb

    .line 421
    :cond_19e
    iget v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    goto/16 :goto_101
.end method

.method private static preview(Landroid/content/Context;)Landroid/view/View;
    .registers 6

    .prologue
    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41600000    # 14.0f

    .line 166
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 167
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 168
    const-string v1, "\u041f\u043b\u0430\u043d\u044a\u0442 \u0441\u0435\u0433\u0430"

    const-string v2, "The plan now"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 172
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->planFacts(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 174
    return-object v0
.end method

.method static refreshHealth()V
    .registers 2

    .prologue
    .line 767
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_18

    .line 768
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 769
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->healthView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 771
    :cond_18
    return-void
.end method

.method static reset()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiWizard;->editClient:Z

    .line 45
    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    .line 46
    return-void
.end method

.method private static result(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 434
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 435
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->chatColumn(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f933333    # 1.15f

    invoke-direct {v1, v5, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 437
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 438
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->planColumn(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-void
.end method

.method private static row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    .line 179
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 180
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 181
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 182
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-object v0
.end method

.method private static status(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 553
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->lastAiWord()Ljava/lang/String;

    move-result-object v0

    .line 554
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v1, :cond_35

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430\u2026"

    const-string v2, "The AI is writing the session\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 568
    :goto_26
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 569
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 570
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 571
    return-object v0

    .line 557
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->offline(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 558
    const-string v0, "\u0411\u0435\u0437 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u043f\u043b\u0430\u043d\u044a\u0442 \u0435 \u043f\u043e \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c\u0430"

    const-string v1, "No AI link \u2014 the plan follows the algorithm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_26

    .line 560
    :cond_46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8e

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0421\u044a\u0437\u0434\u0430\u0434\u0435\u043d\u043e \u043e\u0442 AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v2, "Created by the AI coach"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 562
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  \u00b7  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_26

    .line 562
    :cond_8b
    const-string v0, ""

    goto :goto_80

    .line 565
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v2, "AI coach"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_26
.end method

.method private static step(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    const/4 v3, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u041a\u043e\u0439 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0434\u043d\u0435\u0441?"

    const-string v2, "Who trains today?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "\u041a\u0430\u043a\u0432\u043e \u0449\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u0430\u043c\u0435?"

    const-string v2, "What shall we train?"

    .line 96
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "\u041d\u0435\u0449\u043e \u0441\u043f\u0435\u0446\u0438\u0430\u043b\u043d\u043e \u0437\u0430 \u0434\u043d\u0435\u0441?"

    const-string v2, "Anything special today?"

    .line 97
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 98
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u041f\u0440\u043e\u0444\u0438\u043b\u044a\u0442 \u0438 \u0437\u0434\u0440\u0430\u0432\u0435\u0442\u043e \u2014 \u0432\u0435\u0434\u043d\u044a\u0436, \u043f\u043e\u0441\u043b\u0435 AI \u0433\u0438 \u0437\u043d\u0430\u0435."

    const-string v3, "The profile and health \u2014 once, then the AI knows them."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "\u0426\u0435\u043b \u0438 \u0432\u0438\u0434. \u041f\u043b\u0430\u043d\u044a\u0442 \u0432\u0434\u044f\u0441\u043d\u043e \u0441\u043b\u0435\u0434\u0432\u0430 \u0438\u0437\u0431\u043e\u0440\u0430."

    const-string v3, "Goal and kind. The plan on the right follows the choice."

    .line 99
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u041f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435 \u2014 \u043a\u0430\u0436\u0438 \u0438\u043b\u0438 \u043f\u0438\u0448\u0438. \u041f\u043e\u0441\u043b\u0435 AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v3, "Optional \u2014 say or write it. Then the AI writes the session."

    .line 100
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 101
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    aget-object v0, v0, v2

    const/high16 v2, 0x41c00000    # 24.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    aget-object v0, v1, v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 105
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    if-nez v2, :cond_c9

    .line 106
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->client(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 107
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->experience(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 108
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->health(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 115
    :goto_82
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 117
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x3f933333    # 1.15f

    invoke-direct {v1, v4, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    sget v1, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    if-lez v1, :cond_b2

    .line 120
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 121
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 122
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->preview(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_b2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->footer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void

    .line 109
    :cond_c9
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->page:I

    if-ne v2, v5, :cond_d1

    .line 110
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->training(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_82

    .line 112
    :cond_d1
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->chosen(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 113
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->today(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_82
.end method

.method static tile(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41400000    # 12.0f

    .line 610
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 611
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 612
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    return-object v0
.end method

.method private static today(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 355
    const-string v0, "\u043a\u0430\u0436\u0438 \u043d\u0430 AI \u2014 \u201e\u0443\u043c\u043e\u0440\u0435\u043d\u0430 \u0435, \u0431\u043e\u043b\u0438 \u044f \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e\u201c"

    const-string v2, "tell the AI \u2014 \u201ctired, knee hurts\u201d"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->inputLine(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xe

    .line 356
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 355
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 359
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "\u0443\u043c\u043e\u0440\u0435\u043d/\u0430 \u0435"

    const-string v4, "tired"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v4, "\u043d\u0435 \u0435 \u044f\u043b/\u0430"

    const-string v5, "has not eaten"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "\u043f\u043e-\u043b\u0435\u043a\u043e \u0434\u043d\u0435\u0441"

    const-string v5, "lighter today"

    .line 360
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "\u0441\u0430\u043c\u043e 20 \u043c\u0438\u043d\u0443\u0442\u0438"

    const-string v5, "only 20 minutes"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "\u043f\u043e\u0432\u0435\u0447\u0435 \u043a\u043e\u0440\u0435\u043c"

    const-string v5, "more abs"

    .line 361
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "\u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v5, "more glutes"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 362
    array-length v4, v3

    move v0, v1

    :goto_63
    if-ge v0, v4, :cond_7b

    aget-object v5, v3, v0

    .line 363
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 364
    new-instance v7, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;

    invoke-direct {v7, v5}, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 367
    :cond_7b
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    return-void
.end method

.method private static training(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/high16 v12, 0x42700000    # 60.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 266
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 267
    const-string v0, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 268
    const/4 v0, 0x3

    new-array v6, v0, [Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v0, v6, v1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v0, v6, v3

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v0, v6, v10

    .line 269
    array-length v0, v6

    new-array v7, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    .line 271
    :goto_2d
    array-length v8, v6

    if-ge v0, v8, :cond_42

    .line 272
    aget-object v8, v6, v0

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 273
    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aget-object v9, v6, v0

    if-ne v8, v9, :cond_3f

    move v2, v0

    .line 271
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 277
    :cond_42
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v0, v10}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    invoke-static {p0, v7, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 278
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v1, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 277
    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    const-string v0, "\u0412\u0438\u0434"

    const-string v2, "Kind"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 281
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_109

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_109

    move v0, v3

    .line 282
    :goto_82
    if-eqz v0, :cond_10e

    .line 283
    new-array v5, v10, [Ljava/lang/String;

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v6, "Active \u00b7 exercises"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u00b7 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v6, "Passive \u00b7 at rest"

    .line 284
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v4, :cond_10c

    move v0, v3

    :goto_a1
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v6, 0x3

    invoke-direct {v4, v6}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 283
    invoke-static {p0, v5, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v1, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 283
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    :goto_b7
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Program"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 292
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v5, "Ready program"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AI \u044f \u0441\u044a\u0441\u0442\u0430\u0432\u044f"

    const-string v6, "The AI writes it"

    .line 293
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v4, :cond_135

    :goto_f2
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 292
    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v1, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 292
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void

    :cond_109
    move v0, v1

    .line 281
    goto/16 :goto_82

    :cond_10c
    move v0, v1

    .line 284
    goto :goto_a1

    .line 287
    :cond_10e
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v4, :cond_12c

    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u00b7 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v4, "Passive \u00b7 at rest"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_11c
    const/high16 v4, 0x41800000    # 16.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 287
    invoke-static {p0, v0, v4, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->grow()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 287
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b7

    .line 288
    :cond_12c
    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v4, "Active \u00b7 exercises"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11c

    :cond_135
    move v3, v1

    .line 293
    goto :goto_f2
.end method
