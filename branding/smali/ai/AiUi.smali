.class final Lcom/isaigu/gymapp/ai/AiUi;
.super Ljava/lang/Object;
.source "AiUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiUi$OpenListener;,
        Lcom/isaigu/gymapp/ai/AiUi$CloseListener;,
        Lcom/isaigu/gymapp/ai/AiUi$StepListener;,
        Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;,
        Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;,
        Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;,
        Lcom/isaigu/gymapp/ai/AiUi$FlowRow;
    }
.end annotation


# static fields
.field private static final BTN_TAG:Ljava/lang/String; = "xems_ai_button"

.field private static final HEART_BTN_ID:I = 0x7f090297

.field private static final SETUP_STEPS:I = 0x6

.field private static final SIDEBAR_ID:I = 0x7f090155

.field static final STEP_CALIB:I = 0x5

.field static final STEP_CHECK:I = 0x2

.field static final STEP_GOAL:I = 0x0

.field static final STEP_PLAN:I = 0x4

.field static final STEP_PROFILE:I = 0x1

.field static final STEP_REPORT:I = 0x7

.field static final STEP_REST:I = 0x3

.field static final STEP_RUN:I = 0x6

.field private static backBtn:Landroid/widget/TextView;

.field private static body:Landroid/widget/FrameLayout;

.field private static dialog:Landroid/app/Dialog;

.field private static dotsView:Landroid/widget/LinearLayout;

.field private static footer:Landroid/widget/LinearLayout;

.field private static primaryBtn:Landroid/widget/TextView;

.field private static final refreshers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sideButton:Landroid/widget/TextView;

.field private static step:I

.field private static subtitleView:Landroid/widget/TextView;

.field private static titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(I)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/LinearLayout;)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 6

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V

    return-void
.end method

.method static attachButton(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 73
    if-nez p0, :cond_5

    .line 114
    :cond_4
    :goto_4
    return-void

    .line 76
    :cond_5
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 80
    check-cast v0, Landroid/widget/LinearLayout;

    .line 81
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 82
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    goto :goto_4

    .line 86
    :cond_28
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v3, "xems_ai_button"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 89
    const-string v3, "AI"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 95
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 98
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 99
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 101
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const v6, 0x3da3d70a    # 0.08f

    invoke-direct {v5, v7, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 105
    const v6, 0x7f090297

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 106
    if-eqz v6, :cond_91

    .line 107
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 108
    if-ltz v6, :cond_91

    .line 109
    add-int/lit8 v1, v6, 0x1

    .line 112
    :cond_91
    invoke-virtual {v0, v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 9

    .prologue
    const v5, 0xffffff

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41500000    # 13.0f

    .line 1685
    const/high16 v0, 0x41700000    # 15.0f

    const v1, -0xd0b08

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1686
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1687
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1688
    and-int v2, p1, v5

    const/high16 v3, 0x2a000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1689
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p1, v5

    const/high16 v4, -0x78000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1690
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1691
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1692
    return-object v0
.end method

.method private static bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v6, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v5, 0x0

    .line 1646
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1647
    const v1, -0xe8e5df

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1648
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1649
    const v1, -0x746c5f

    invoke-static {p0, p2, v7, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1650
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1651
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1652
    const/high16 v2, 0x41f00000    # 30.0f

    const v3, -0xd0b08

    invoke-static {p0, p3, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1653
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_70

    .line 1654
    const/high16 v2, 0x41500000    # 13.0f

    const v3, -0x746c5f

    invoke-static {p0, p4, v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1655
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1656
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1658
    :cond_70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1659
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1660
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_87

    .line 1661
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1663
    :cond_87
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1664
    return-void
.end method

.method private static buildShell(Landroid/app/Activity;)V
    .registers 12

    .prologue
    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 183
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 184
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 186
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    const v1, -0xf1efeb

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 190
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 193
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 196
    const-string v2, "AI"

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 197
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 198
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1ae

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 200
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 201
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    const v5, -0xd0b08

    invoke-static {p0, v3, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    .line 208
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    const v5, -0x746c5f

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    .line 209
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    .line 213
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 215
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    const-string v2, "\u2715"

    const v3, -0x746c5f

    invoke-static {p0, v2, v10, v3, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 217
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 219
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    .line 224
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 226
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 228
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    .line 231
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 232
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 233
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 236
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1a7

    .line 238
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 240
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f70a3d7    # 0.94f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const v3, 0x44bb8000    # 1500.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 241
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 243
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 244
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 245
    const v2, 0x3f3851ec    # 0.72f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 247
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 249
    :cond_1a7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 250
    return-void

    .line 198
    nop

    :array_1ae
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1711
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1712
    const v1, -0xe8e5df

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1713
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1714
    return-object v0
.end method

.method private static centered(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 1802
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1803
    return-object p0
.end method

.method private static chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 1678
    const/high16 v0, 0x41500000    # 13.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1679
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1680
    const v1, 0xffffff

    and-int/2addr v1, p2

    const/high16 v2, 0x22000000

    or-int/2addr v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v2, v5, v5}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1681
    return-object v0
.end method

.method private static cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1588
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v5, v2

    .line 1589
    :goto_7
    const/16 v0, 0xa

    if-gt v5, v0, :cond_8c

    .line 1591
    if-lt v5, p1, :cond_70

    if-gt v5, p2, :cond_70

    move v0, v1

    .line 1592
    :goto_10
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    if-eqz p3, :cond_72

    const/high16 v3, 0x41a00000    # 20.0f

    move v4, v3

    :goto_19
    if-eqz v0, :cond_76

    const/4 v3, -0x1

    :goto_1c
    invoke-static {p0, v7, v4, v3, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1593
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1594
    if-eqz v0, :cond_7a

    .line 1595
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8e

    invoke-direct {v3, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1597
    :goto_34
    if-nez v0, :cond_40

    .line 1598
    const/16 v0, 0x9

    if-lt v5, v0, :cond_80

    const v0, 0x33ff4d4f

    :goto_3d
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1600
    :cond_40
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1601
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1602
    if-eqz p3, :cond_50

    .line 1603
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$30;

    invoke-direct {v0, p3, v5}, Lcom/isaigu/gymapp/ai/AiUi$30;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1610
    :cond_50
    if-eqz p3, :cond_84

    const/high16 v0, 0x42680000    # 58.0f

    :goto_54
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1611
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1612
    if-lez v5, :cond_8a

    if-eqz p3, :cond_87

    const/high16 v0, 0x41000000    # 8.0f

    :goto_63
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_67
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1613
    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1589
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_70
    move v0, v2

    .line 1591
    goto :goto_10

    .line 1592
    :cond_72
    const/high16 v3, 0x41700000    # 15.0f

    move v4, v3

    goto :goto_19

    :cond_76
    const v3, -0x746c5f

    goto :goto_1c

    .line 1596
    :cond_7a
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto :goto_34

    .line 1598
    :cond_80
    const v0, -0xe0dcd4

    goto :goto_3d

    .line 1610
    :cond_84
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_54

    .line 1612
    :cond_87
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_63

    :cond_8a
    move v0, v2

    goto :goto_67

    .line 1615
    :cond_8c
    return-object v6

    .line 1595
    nop

    :array_8e
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static dismiss()V
    .registers 1

    .prologue
    .line 268
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 270
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_15

    .line 274
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 275
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 277
    return-void

    .line 271
    :catch_15
    move-exception v0

    goto :goto_9
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 1840
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static finishRest(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 845
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v1, v2, :cond_f

    .line 854
    :cond_e
    :goto_e
    return-void

    .line 849
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_21

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_e

    .line 852
    :cond_21
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 853
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_e
.end method

.method private static ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x41d00000    # 26.0f

    const/4 v3, 0x0

    .line 1728
    const/high16 v0, 0x41800000    # 16.0f

    const v1, -0xd0b08

    invoke-static {p0, p1, v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1729
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1730
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1731
    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v3, v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1732
    return-object v0
.end method

.method private static go(I)V
    .registers 5

    .prologue
    .line 297
    sput p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    .line 298
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 300
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 301
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const-string v2, "Back"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    .line 303
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    .line 305
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    packed-switch p0, :pswitch_data_6c

    .line 314
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V

    .line 316
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->renderDots(Landroid/content/Context;)V

    .line 317
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->refresh()V

    .line 318
    return-void

    .line 307
    :pswitch_50
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V

    goto :goto_49

    .line 308
    :pswitch_54
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenProfile(Landroid/content/Context;)V

    goto :goto_49

    .line 309
    :pswitch_58
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCheck(Landroid/content/Context;)V

    goto :goto_49

    .line 310
    :pswitch_5c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRest(Landroid/content/Context;)V

    goto :goto_49

    .line 311
    :pswitch_60
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenPlan(Landroid/content/Context;)V

    goto :goto_49

    .line 312
    :pswitch_64
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_49

    .line 313
    :pswitch_68
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V

    goto :goto_49

    .line 306
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_54
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
        :pswitch_68
    .end packed-switch
.end method

.method private static goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I
    .registers 3

    .prologue
    .line 1773
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$31;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 1778
    const v0, -0x1fbf05

    :goto_e
    return v0

    .line 1774
    :pswitch_f
    const v0, -0x83b201

    goto :goto_e

    .line 1775
    :pswitch_13
    const v0, -0x94c3

    goto :goto_e

    .line 1776
    :pswitch_17
    const v0, -0xd93926

    goto :goto_e

    .line 1777
    :pswitch_1b
    const v0, -0xb08401

    goto :goto_e

    .line 1773
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method private static gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1759
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v4, [I

    fill-array-data v3, :array_44

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1761
    int-to-float v0, p2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1762
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1763
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1764
    add-int/lit8 v0, p2, -0x2

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1765
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1767
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1768
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 1769
    return-object v0

    .line 1759
    nop

    :array_44
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 1813
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1814
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1815
    return-object v0
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 1704
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1705
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1706
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1707
    return-object v0
.end method

.method private static lighten(I)I
    .registers 5

    .prologue
    const/16 v3, 0xff

    .line 1783
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x3c

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1784
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x3c

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1785
    and-int/lit16 v2, p0, 0xff

    add-int/lit8 v2, v2, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1786
    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 1833
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1835
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1836
    return-object v0
.end method

.method private static meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v1, 0x0

    .line 1619
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1620
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4e

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_14
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1621
    const v0, -0x746c5f

    invoke-static {p0, p2, v6, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    const-string v0, ""

    const v1, -0xd0b08

    invoke-static {p0, v0, v6, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1624
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1625
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1626
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1627
    return-object v0

    :cond_4e
    move v0, v1

    .line 1620
    goto :goto_14
.end method

.method private static onStep(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v0, 0x2

    .line 367
    if-gez p1, :cond_28

    .line 368
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v1, v2, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 369
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 371
    :cond_12
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lez v1, :cond_22

    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v1, v3, :cond_22

    .line 372
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    :goto_1f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 403
    :cond_22
    :goto_22
    return-void

    .line 372
    :cond_23
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 376
    :cond_28
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    packed-switch v1, :pswitch_data_76

    :pswitch_2d
    goto :goto_22

    .line 377
    :pswitch_2e
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 378
    :pswitch_33
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 380
    :pswitch_37
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-nez v0, :cond_22

    .line 381
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 384
    :pswitch_4a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->finishRest(Landroid/content/Context;)V

    goto :goto_22

    .line 386
    :pswitch_4e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginCalibration()V

    .line 387
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 390
    :pswitch_55
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v0

    if-lez v0, :cond_22

    .line 391
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-nez v0, :cond_22

    .line 392
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startRun(Landroid/content/Context;)V

    .line 393
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 397
    :pswitch_6e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    goto :goto_22

    .line 376
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_33
        :pswitch_37
        :pswitch_4a
        :pswitch_4e
        :pswitch_55
        :pswitch_2d
        :pswitch_6e
    .end packed-switch
.end method

.method static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 138
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    :cond_8
    :goto_8
    return-void

    .line 141
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_16

    .line 143
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8

    .line 146
    :cond_16
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1f

    .line 147
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8

    .line 150
    :cond_1f
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_35

    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2d

    .line 153
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 156
    :cond_2d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->beginSetup(Landroid/content/Context;)V

    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8

    .line 160
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8
.end method

.method private static pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .prologue
    const v5, 0xffffff

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x41600000    # 14.0f

    .line 1736
    const/high16 v0, 0x41800000    # 16.0f

    const v1, -0xd0b08

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1737
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1738
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1739
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1740
    and-int v2, p2, v5

    const/high16 v3, 0x2e000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1741
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p2, v5

    const/high16 v4, -0x67000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1742
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1743
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1744
    return-object v0
.end method

.method private static primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 1718
    const/high16 v0, 0x41880000    # 17.0f

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1719
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1720
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1722
    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1723
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1724
    return-object v0

    .line 1720
    :array_28
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 281
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 294
    :cond_f
    :goto_f
    return-void

    .line 284
    :cond_10
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_22

    .line 285
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_f

    .line 288
    :cond_22
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 290
    :try_start_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_3b

    .line 288
    :goto_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 291
    :catch_3b
    move-exception v0

    goto :goto_37
.end method

.method private static renderDots(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v8, 0x6

    const/4 v4, 0x0

    const/high16 v1, 0x41000000    # 8.0f

    .line 331
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 332
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lt v0, v8, :cond_e

    .line 351
    :cond_d
    return-void

    :cond_e
    move v5, v4

    .line 335
    :goto_f
    if-ge v5, v8, :cond_d

    .line 336
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 337
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v5, v0, :cond_67

    const/4 v0, 0x1

    move v3, v0

    .line 338
    :goto_1c
    if-eqz v3, :cond_69

    .line 339
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_76

    invoke-direct {v0, v2, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v2, v0

    .line 342
    :goto_2c
    if-nez v3, :cond_38

    .line 343
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v5, v0, :cond_70

    const v0, -0x77000001

    :goto_35
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 345
    :cond_38
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 346
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_74

    const/high16 v0, 0x41e00000    # 28.0f

    :goto_4b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 349
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_f

    :cond_67
    move v3, v4

    .line 337
    goto :goto_1c

    .line 341
    :cond_69
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v2, v0

    goto :goto_2c

    .line 343
    :cond_70
    const v0, 0x26ffffff

    goto :goto_35

    :cond_74
    move v0, v1

    .line 347
    goto :goto_4b

    .line 339
    :array_76
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 14

    .prologue
    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v8, 0x41d00000    # 26.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1245
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 1246
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_1e

    const-string v0, "cp"

    .line 1249
    :goto_12
    if-nez v0, :cond_4b

    .line 1250
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1251
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1300
    :cond_1d
    :goto_1d
    return-void

    .line 1247
    :cond_1e
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v1, :cond_49

    const-string v0, "checkpoint"

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "cp"

    goto :goto_12

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 1248
    :cond_49
    const/4 v0, 0x0

    goto :goto_12

    .line 1254
    :cond_4b
    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1255
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1258
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1259
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1260
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1261
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1262
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1263
    const v2, -0xe8e5df

    const/16 v3, 0x18

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1264
    const-string v2, "cp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1265
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    .line 1266
    const-string v2, "\u041a\u0430\u043a \u0435 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0435\u0433\u0430?"

    const-string v3, "How does it feel now?"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd0b08

    invoke-static {p0, v2, v8, v3, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 = \u043d\u0438\u0449\u043e \u00b7 10 = \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u043e. \u0426\u0435\u043b: "

    const-string v4, "0 = nothing \u00b7 10 = maximal. Target: "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u2013"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    const v4, -0x746c5f

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1269
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$22;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$22;-><init>()V

    invoke-static {p0, v2, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x16

    .line 1274
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 1269
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    :goto_f3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1d

    .line 1276
    :cond_101
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v2

    .line 1277
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430"

    const-string v3, "Heart rate reached the ceiling"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, -0xb2b1

    invoke-static {p0, v0, v8, v3, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1279
    if-eqz v2, :cond_170

    .line 1280
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043f\u043e\u0434 \u0437\u043e\u043d\u0430\u0442\u0430 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u0442 30 s. \u041c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0448."

    const-string v3, "HR has been below the recovery level for over 30 s. You may continue."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1284
    :goto_125
    const/high16 v3, 0x41700000    # 15.0f

    const v4, -0x746c5f

    .line 1279
    invoke-static {p0, v0, v3, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1285
    const-string v0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v3, "Continue"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 1286
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1287
    if-eqz v2, :cond_1a4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_148
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1288
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$23;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$23;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1295
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1296
    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f3

    .line 1284
    :cond_170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v4, "Stimulation is off. Continue unlocks when HR stays below "

    .line 1282
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1284
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v3

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v4

    iget-wide v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0437\u0430 30 s."

    const-string v4, " for 30 s."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_125

    .line 1287
    :cond_1a4
    const v0, 0x3eb33333    # 0.35f

    goto :goto_148
.end method

.method private static renderVerdict(Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 667
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 668
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v4

    .line 669
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "\u0421\u0435\u0441\u0438\u044f\u0442\u0430 \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0437\u0430\u043f\u043e\u0447\u043d\u0435: "

    const-string v1, "Session cannot start: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 671
    :goto_24
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 672
    if-lez v1, :cond_47

    const-string v0, " \u00b7 "

    :goto_30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->screeningCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 672
    :cond_47
    const-string v0, ""

    goto :goto_30

    .line 674
    :cond_4a
    const v0, -0xb2b1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    :goto_58
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7b

    .line 686
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v1

    if-nez v1, :cond_6a

    const/4 v2, 0x1

    :cond_6a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 687
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_d9

    const v0, 0x3ecccccd    # 0.4f

    :goto_78
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 689
    :cond_7b
    return-void

    .line 675
    :cond_7c
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 676
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "\u041c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438. "

    const-string v1, "OK to continue. "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 677
    :goto_92
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b8

    .line 678
    if-lez v1, :cond_b5

    const-string v0, " \u00b7 "

    :goto_9e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->screeningCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    .line 678
    :cond_b5
    const-string v0, ""

    goto :goto_9e

    .line 680
    :cond_b8
    const/16 v0, -0x4fe0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_58

    .line 682
    :cond_c6
    const v0, -0xd1338f

    const-string v1, "\u0412\u0441\u0438\u0447\u043a\u043e \u0435 \u043d\u0430\u0440\u0435\u0434 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438."

    const-string v5, "All clear \u2014 OK to continue."

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_58

    .line 687
    :cond_d9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_78
.end method

.method private static roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1559
    const/high16 v0, 0x41d00000    # 26.0f

    const v1, -0xd0b08

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1560
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1561
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1562
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1563
    const v2, -0xe0dcd4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1564
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    return-object v0
.end method

.method private static rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .prologue
    .line 1748
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1749
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1750
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1751
    if-lez p3, :cond_13

    .line 1752
    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1754
    :cond_13
    return-object v0
.end method

.method private static screenCalib(Landroid/content/Context;)V
    .registers 16

    .prologue
    const v14, -0xd0b08

    const/16 v13, 0x11

    const/4 v0, 0x1

    const/high16 v12, 0x43960000    # 300.0f

    const/4 v6, 0x0

    .line 943
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 944
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_128

    move v7, v0

    .line 945
    :goto_18
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Strength calibration"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0421\u0442\u044a\u043f\u043a\u0430 6 \u043e\u0442 6 \u00b7 \u0446\u0435\u043b: \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v5, "Step 6 of 6 \u00b7 target sensation "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u2013"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u043e\u0442 10"

    const-string v5, " of 10"

    .line 947
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 946
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 949
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 950
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 951
    new-instance v2, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 952
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v1, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 954
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 955
    const-string v1, "0%"

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {p0, v1, v4, v14, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 956
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 957
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 958
    const-string v4, ""

    const/high16 v10, 0x41500000    # 13.0f

    const v11, -0x746c5f

    invoke-static {p0, v4, v10, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 959
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 960
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 961
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 964
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 965
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v9, v5, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 966
    if-eqz v7, :cond_12b

    .line 967
    const-string v5, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e \u0441\u0430\u043c\u0430. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e\u201c, \u043a\u043e\u0433\u0430\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0442\u0438\u0433\u043d\u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v10, "Strength rises smoothly by itself. Tap \u201cEnough\u201d when the sensation reaches the target."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 969
    :goto_d2
    const/high16 v10, 0x41700000    # 15.0f

    .line 966
    invoke-static {p0, v5, v10, v14, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 972
    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    const/4 v11, 0x0

    invoke-static {p0, v5, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v5

    const/16 v10, 0x12

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 974
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v6, v10, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 975
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 976
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 978
    const-string v6, "\u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v8, "Start session"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 980
    sget-object v8, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$17;

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AiUi$17;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    return-void

    :cond_128
    move v7, v6

    .line 944
    goto/16 :goto_18

    .line 969
    :cond_12b
    const-string v5, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441 \u043f\u043b\u044a\u0437\u0433\u0430\u0447\u0438\u0442\u0435 \u043a\u0430\u043a\u0442\u043e \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u0432\u0434\u0438\u0433\u0430\u0439 \u043e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    const-string v10, "Set the muscles with the sliders as usual, then raise overall strength to the target sensation."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d2
.end method

.method private static screenCheck(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    .line 579
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v3, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u0440\u0435\u0434\u0438 \u0441\u0435\u0441\u0438\u044f"

    const-string v5, "Pre-session check"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v3, "\u0421\u0442\u044a\u043f\u043a\u0430 3 \u043e\u0442 6 \u00b7 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u0441\u0435 \u0432\u0441\u0435\u043a\u0438 \u043f\u044a\u0442"

    const-string v5, "Step 3 of 6 \u00b7 answered every time"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 583
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 584
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 586
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 587
    const-string v0, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v3, "Contraindications"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    sget-object v9, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v10, v9

    move v3, v2

    :goto_46
    if-ge v3, v10, :cond_73

    aget-object v11, v9, v3

    .line 589
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 590
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiText;->contraindication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_71

    move v0, v1

    :goto_61
    new-instance v13, Lcom/isaigu/gymapp/ai/AiUi$8;

    invoke-direct {v13, v4, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi$8;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v12, v0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_46

    :cond_71
    move v0, v2

    .line 590
    goto :goto_61

    .line 599
    :cond_73
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 600
    const-string v3, "\u0414\u043d\u0435\u0441"

    const-string v9, "Today"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    const-string v3, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0438\u043b\u0438 \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v9, "Fever or illness"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$9;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$9;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 609
    const-string v3, "\u0410\u043b\u043a\u043e\u0445\u043e\u043b \u0438\u043b\u0438 \u0441\u0438\u043b\u0435\u043d \u0441\u0442\u0440\u0435\u0441 (48 \u0447)"

    const-string v9, "Alcohol or heavy stress (48 h)"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$10;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$10;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    const-string v3, "\u0418\u0437\u0432\u0435\u0441\u0442\u043d\u0430 \u0430\u0440\u0438\u0442\u043c\u0438\u044f"

    const-string v9, "Known arrhythmia"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$11;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$11;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 625
    const-string v3, "\u041b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430, \u043f\u043e\u043d\u0438\u0436\u0430\u0432\u0430\u0449\u0438 \u043f\u0443\u043b\u0441\u0430"

    const-string v9, "HR-lowering medication"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$12;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$12;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    const-string v3, "\u0425\u0440\u0430\u043d\u0435\u043d\u0435 \u0432 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0447"

    const-string v9, "Ate in the last 2 h"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$13;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$13;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    const-string v3, "\u041f\u0438\u043b \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v9, "Drank water before"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$14;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$14;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    const-string v3, "\u041f\u043e\u0447\u0438\u0432\u0430\u043b \u043f\u043e\u043d\u0435 10 \u043c\u0438\u043d"

    const-string v9, "Rested at least 10 min"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$15;

    invoke-direct {v10, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi$15;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v3, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 661
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v2, "Measure resting HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 662
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V

    .line 663
    return-void
.end method

.method private static screenGoal(Landroid/content/Context;)V
    .registers 16

    .prologue
    .line 408
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u041a\u0430\u043a\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430 \u0434\u043d\u0435\u0441?"

    const-string v2, "What is today\'s goal?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u044a\u043f\u043a\u0430 1 \u043e\u0442 6 \u00b7 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0441\u0435 \u0438\u0437\u0433\u0440\u0430\u0436\u0434\u0430 \u043e\u0442 \u0446\u0435\u043b\u0442\u0430"

    const-string v2, "Step 1 of 6 \u00b7 the program is built from the goal"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    .line 412
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 413
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 414
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_32
    if-ge v1, v7, :cond_151

    aget-object v8, v6, v1

    .line 416
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 417
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41900000    # 18.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 418
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 419
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 420
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiUi;->goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiUi;->goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v14

    invoke-static {v14}, Lcom/isaigu/gymapp/ai/AiUi;->lighten(I)I

    move-result v14

    aput v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 421
    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 422
    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v0

    const/high16 v10, 0x41b00000    # 22.0f

    const v11, -0xd0b08

    const/4 v12, 0x1

    invoke-static {p0, v0, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 425
    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiText;->goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v0

    const/high16 v10, 0x41500000    # 13.0f

    const v11, -0x746c5f

    const/4 v12, 0x0

    invoke-static {p0, v0, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 428
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v8, v0, :cond_d2

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v8, v0, :cond_134

    .line 429
    :cond_d2
    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u00b7 \u041f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v10, "Active \u00b7 Passive"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    :goto_da
    const/high16 v10, 0x41300000    # 11.0f

    const v11, -0x746c5f

    const/4 v12, 0x1

    .line 428
    invoke-static {p0, v0, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 431
    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 432
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 433
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$1;

    invoke-direct {v0, v2, v8}, Lcom/isaigu/gymapp/ai/AiUi$1;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Goal;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v8, :cond_13d

    const/4 v0, 0x1

    .line 449
    :goto_104
    if-eqz v0, :cond_13f

    .line 450
    const v0, -0xe0dcd4

    const/16 v8, 0x12

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 449
    :goto_10f
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 454
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_129

    .line 455
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 457
    :cond_129
    invoke-virtual {v4, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_32

    .line 430
    :cond_134
    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v10, "Passive"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_da

    .line 448
    :cond_13d
    const/4 v0, 0x0

    goto :goto_104

    .line 451
    :cond_13f
    const v0, -0xe8e5df

    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const v10, 0x1fffffff

    const/4 v11, 0x1

    invoke-static {v0, v8, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_10f

    .line 460
    :cond_151
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 463
    const-string v0, "\u0420\u0435\u0436\u0438\u043c"

    const-string v4, "Mode"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v7, "Active \u00b7 exercises"

    .line 464
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const-string v6, "\u041f\u0430\u0441\u0438\u0432\u043d\u043e \u00b7 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v7, "Passive \u00b7 no movement"

    .line 465
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 466
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v6, :cond_255

    const/4 v0, 0x0

    :goto_18c
    const/4 v6, 0x2

    new-array v6, v6, [Z

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 467
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v8

    aput-boolean v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$2;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/ai/AiUi$2;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 464
    invoke-static {p0, v5, v0, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 463
    invoke-static {p0, v4, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 475
    const-string v0, "\u041a\u043e\u0439 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430"

    const-string v5, "Who operates"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "\u0422\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v8, "Trainer"

    .line 476
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    const-string v7, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e"

    const-string v8, "Self"

    .line 477
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 478
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v7, :cond_258

    const/4 v0, 0x0

    :goto_1d3
    const/4 v7, 0x0

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$3;

    invoke-direct {v8, v2}, Lcom/isaigu/gymapp/ai/AiUi$3;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 476
    invoke-static {p0, v6, v0, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 475
    invoke-static {p0, v5, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 486
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v2, :cond_25b

    .line 487
    const-string v0, "\u0422\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430 \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0436\u0434\u0430\u0432\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e."

    const-string v2, "The trainer calibrates and confirms continuation."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_1ef
    const/high16 v2, 0x41400000    # 12.0f

    const v6, -0x746c5f

    const/4 v7, 0x0

    .line 486
    invoke-static {p0, v0, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 491
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 492
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 495
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 496
    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 500
    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 502
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v1, "Next"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 503
    return-void

    .line 466
    :cond_255
    const/4 v0, 0x1

    goto/16 :goto_18c

    .line 478
    :cond_258
    const/4 v0, 0x1

    goto/16 :goto_1d3

    .line 489
    :cond_25b
    const-string v0, "\u041f\u043e-\u0442\u0435\u0441\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438, \u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u0438 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0438 \u0442\u043e\u0447\u043a\u0438, \u0442\u0430\u0432\u0430\u043d 90%."

    const-string v2, "Tighter limits, mandatory checkpoints, 90% ceiling."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1ef
.end method

.method private static screenPlan(Landroid/content/Context;)V
    .registers 15

    .prologue
    .line 859
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 860
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v4

    .line 861
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 862
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u0422\u0432\u043e\u044f\u0442 \u043f\u043b\u0430\u043d"

    const-string v5, "Your plan"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u0442\u044a\u043f\u043a\u0430 5 \u043e\u0442 6 \u00b7 "

    const-string v6, "Step 5 of 6 \u00b7 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u00b7 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v5, :cond_2c0

    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u043e"

    const-string v5, "active"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v6, v2

    .line 865
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 867
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v2, "bpm"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 869
    const-string v0, "\u041f\u043e\u043a\u043e\u0439"

    const-string v1, "Rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_2ca

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_aa
    iget-boolean v1, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_2ce

    move-object v1, v2

    :goto_af
    invoke-static {p0, v6, v7, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0443\u043c"

    const-string v1, "Max"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v6, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_2f7

    .line 872
    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2264 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-virtual {v4, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    :goto_f7
    const-string v1, "\u041a\u043e\u0440\u0438\u0434\u043e\u0440"

    const-string v7, "Corridor"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v1, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_2fb

    move-object v1, v2

    :goto_104
    invoke-static {p0, v6, v7, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v0, "\u0422\u0430\u0432\u0430\u043d"

    const-string v1, "Ceiling"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_2ff

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_128
    iget-boolean v7, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v7, :cond_303

    :goto_12c
    invoke-static {p0, v6, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v0, "\u0412\u0440\u0435\u043c\u0435"

    const-string v1, "Time"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v8, v1

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v6, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 879
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 880
    const-string v0, "\u0421\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430"

    const-string v1, "Structure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 881
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 882
    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 883
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42080000    # 34.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 885
    const/4 v0, 0x0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 886
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_186
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_315

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 887
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u00b7 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v10, v9

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v9, 0x41700000    # 15.0f

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 889
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v10

    const/4 v11, 0x1

    .line 888
    invoke-static {p0, v1, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 890
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " Hz \u00b7 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u00b5s \u00b7 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " s"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v9, :cond_230

    .line 893
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "  \u2194  "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v9, v9, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " Hz"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 895
    :cond_230
    const/high16 v9, 0x41400000    # 12.0f

    const v10, -0x746c5f

    const/4 v11, 0x0

    invoke-static {p0, v1, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 896
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v1, v10, :cond_307

    .line 897
    const-string v1, "\u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u043f\u043e \u0443\u043c\u043e\u0440\u0430"

    const-string v10, "fatigue-driven blocks"

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    :goto_250
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u00b7 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    .line 899
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 900
    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    iget-wide v12, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    cmpl-double v1, v10, v12

    if-eqz v1, :cond_311

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u2192"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_28b
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "%"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v9, 0x41400000    # 12.0f

    const v10, -0x746c5f

    const/4 v11, 0x0

    .line 896
    invoke-static {p0, v1, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 901
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const v11, 0x3df5c28f    # 0.12f

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v0, v0

    iget v12, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-float v12, v12

    div-float/2addr v0, v12

    .line 902
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v1, v9, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 901
    invoke-virtual {v6, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_186

    .line 864
    :cond_2c0
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v5, "passive"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    .line 869
    :cond_2ca
    const-string v0, "\u2014"

    goto/16 :goto_aa

    :cond_2ce
    const-string v1, ""

    goto/16 :goto_af

    .line 872
    :cond_2d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-virtual {v4, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-virtual {v4, v8, v9}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f7

    .line 873
    :cond_2f7
    const-string v0, "\u2014"

    goto/16 :goto_f7

    .line 874
    :cond_2fb
    const-string v1, ""

    goto/16 :goto_104

    .line 875
    :cond_2ff
    const-string v0, "\u2014"

    goto/16 :goto_128

    :cond_303
    const-string v2, ""

    goto/16 :goto_12c

    .line 898
    :cond_307
    const-string v1, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    const-string v10, "continuous"

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_250

    .line 900
    :cond_311
    const-string v1, ""

    goto/16 :goto_28b

    .line 904
    :cond_315
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 905
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 908
    const-string v0, "\u0417\u0430\u0449\u0438\u0442\u0430 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v2, "Protection during the session"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 910
    const-string v2, "\u0421\u0442\u043e\u043f \u0441 \u0435\u0434\u0438\u043d \u0434\u043e\u043f\u0438\u0440"

    const-string v3, "One-tap stop"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xb2b1

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 911
    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_380

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0422\u0430\u0432\u0430\u043d "

    const-string v6, "Ceiling "

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2192 \u043f\u0430\u0443\u0437\u0430"

    const-string v6, " \u2192 pause"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, -0xb2b1

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 914
    :cond_380
    const-string v2, "\u0420\u0430\u043c\u043f\u0430 0.3\u20130.5 s"

    const-string v3, "Ramp 0.3\u20130.5 s"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xff2e01

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 915
    const-string v2, "\u0421\u0438\u043b\u0430 \u2264 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v3, "Strength \u2264 calibration"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xff2e01

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 916
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043f\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v3, "Rest on muscle fatigue"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x83b201

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 917
    const-string v2, "3 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0438 \u0442\u043e\u0447\u043a\u0438"

    const-string v3, "3 checkpoints"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x83b201

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 918
    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_3e2

    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v2, :cond_3e2

    .line 919
    const-string v2, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u0438 \u043f\u043e \u043f\u0443\u043b\u0441\u0430"

    const-string v3, "HR corrections"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd1338f

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 921
    :cond_3e2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 922
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-eqz v0, :cond_40e

    .line 923
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_43c

    .line 924
    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043b\u0443\u0436\u0438 \u0441\u0430\u043c\u043e \u0437\u0430 \u0442\u0430\u0432\u0430\u043d\u0430."

    const-string v2, "Passive program \u2014 HR only guards the ceiling."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    :goto_3f5
    const/high16 v2, 0x41500000    # 13.0f

    const v3, -0x746c5f

    const/4 v6, 0x0

    .line 923
    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 927
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 928
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 930
    :cond_40e
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_414
    :goto_414
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_445

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 931
    const-string v3, "NO_BAND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_414

    .line 932
    const/16 v3, -0x4fe0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->flag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_414

    .line 925
    :cond_43c
    const-string v0, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442 \u0438 \u043c\u043e\u0434\u0435\u043b\u044a\u0442 \u043d\u0430 \u0443\u043c\u043e\u0440\u0430\u0442\u0430."

    const-string v2, "No band \u2014 plan and fatigue model only."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f5

    .line 935
    :cond_445
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 937
    const-string v0, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "Calibrate strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 938
    return-void
.end method

.method private static screenProfile(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v12, 0x12

    const/16 v11, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 508
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    .line 509
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v5, "\u041f\u0440\u043e\u0444\u0438\u043b"

    const-string v6, "Profile"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v5, "\u0421\u0442\u044a\u043f\u043a\u0430 2 \u043e\u0442 6 \u00b7 \u043e\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438\u0434\u0432\u0430\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435"

    const-string v6, "Step 2 of 6 \u00b7 max HR and zones come from the profile"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 513
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 514
    const-string v0, "\u041f\u043e\u043b"

    const-string v7, "Sex"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "\u041c\u044a\u0436"

    const-string v9, "Male"

    .line 515
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 516
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v9, :cond_1de

    move v0, v1

    :goto_54
    const/4 v9, 0x0

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$4;

    invoke-direct {v10, v4}, Lcom/isaigu/gymapp/ai/AiUi$4;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 514
    invoke-static {p0, v8, v0, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 522
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 514
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    const-string v0, "\u041a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v7, "Fitness"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "\u041d\u0438\u0441\u043a\u0430"

    const-string v9, "Low"

    .line 524
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v9, "Mid"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x2

    const-string v9, "\u0412\u0438\u0441\u043e\u043a\u0430"

    const-string v10, "High"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 525
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$5;

    invoke-direct {v10, v4}, Lcom/isaigu/gymapp/ai/AiUi$5;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 523
    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 531
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 523
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 535
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v7, "Age"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v9, "years"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$6;

    invoke-direct {v9, v4}, Lcom/isaigu/gymapp/ai/AiUi$6;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 542
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 535
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_1e1

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 544
    :goto_f8
    const-string v7, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    const-string v8, "Duration"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v9, v0, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u043c\u0438\u043d\u0443\u0442\u0438"

    const-string v10, "minutes"

    .line 545
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$7;

    invoke-direct {v10, v4, v0}, Lcom/isaigu/gymapp/ai/AiUi$7;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V

    invoke-static {p0, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v0

    .line 544
    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 552
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 544
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 554
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v6, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v0

    .line 557
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 558
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 559
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 560
    const-string v7, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u0435\u043d \u043f\u0443\u043b\u0441 \u043f\u043e \u0444\u043e\u0440\u043c\u0443\u043b\u0430"

    const-string v8, "Formula max HR"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41600000    # 14.0f

    const v9, -0x746c5f

    invoke-static {p0, v7, v8, v9, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v8, "bpm"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v7, 0x41b00000    # 22.0f

    const v8, -0xd0b08

    invoke-static {p0, v0, v7, v8, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-ge v0, v12, :cond_1b6

    .line 565
    const v0, -0xb2b1

    const-string v6, "AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u043f\u044a\u043b\u043d\u043e\u043b\u0435\u0442\u043d\u0438."

    const-string v7, "AI sessions are for adults only."

    .line 566
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 565
    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0xc

    .line 567
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 565
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    :cond_1b6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 570
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v5, "Next"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 571
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v5, v12, :cond_1e9

    :goto_1d0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 572
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v0, v12, :cond_1eb

    move v0, v3

    :goto_1da
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 573
    return-void

    :cond_1de
    move v0, v2

    .line 516
    goto/16 :goto_54

    .line 543
    :cond_1e1
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v0

    goto/16 :goto_f8

    :cond_1e9
    move v2, v1

    .line 571
    goto :goto_1d0

    .line 572
    :cond_1eb
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1da
.end method

.method private static screenReport(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1305
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 1306
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041e\u0442\u0447\u0435\u0442"

    const-string v3, "Report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    if-nez v1, :cond_27

    .line 1308
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1390
    :goto_26
    return-void

    .line 1312
    :cond_27
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v3

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1313
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1314
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1315
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1316
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1317
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1318
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1320
    const-string v0, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v5, "Share report"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1321
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$24;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$24;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1327
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1328
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    const-string v5, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43960000    # 300.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42680000    # 58.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$25;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiUi$25;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26
.end method

.method private static screenRest(Landroid/content/Context;)V
    .registers 18

    .prologue
    .line 694
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v3, "Resting heart rate"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v2, "\u0421\u0442\u044a\u043f\u043a\u0430 4 \u043e\u0442 6 \u00b7 \u0441\u0435\u0434\u043d\u0438 \u0438\u043b\u0438 \u043b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0431\u0435\u0437 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v3, "Step 4 of 6 \u00b7 sit or lie still, no stimulation"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_193

    const/4 v4, 0x1

    .line 698
    :goto_25
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 699
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 701
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 702
    new-instance v6, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 703
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v7, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v3, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 705
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 706
    const-string v5, "--"

    const/high16 v7, 0x42800000    # 64.0f

    const v8, -0xd0b08

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 707
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 708
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    const-string v7, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v8, "bpm"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41600000    # 14.0f

    const v9, -0x746c5f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    const-string v7, ""

    const/high16 v8, 0x41700000    # 15.0f

    const v9, -0xff2e01

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 711
    const/16 v7, 0x11

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 712
    const/4 v7, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v8, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 713
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 714
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v10, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v7, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 717
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 718
    const/high16 v2, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v7, v8, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 719
    const-string v2, ""

    const/high16 v7, 0x41a00000    # 20.0f

    const v8, -0xd0b08

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v7, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 720
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    const-string v2, ""

    const/high16 v8, 0x41600000    # 14.0f

    const v10, -0x746c5f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 722
    const/4 v2, 0x0

    const/high16 v10, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/4 v11, 0x0

    const/high16 v12, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v8, v2, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 723
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 725
    const-string v10, "\u041c\u0435\u0434\u0438\u0430\u043d\u0430"

    const-string v11, "Median"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    .line 726
    const-string v11, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435"

    const-string v12, "Spread"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v2, v11}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    .line 727
    const-string v12, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b"

    const-string v13, "Interval"

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v12

    .line 728
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 730
    const/4 v13, 0x0

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 731
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    const/4 v15, -0x2

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 734
    const-string v1, "\u041a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v3, "To the plan"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 736
    sget-object v13, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$16;

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AiUi$16;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    return-void

    .line 697
    :cond_193
    const/4 v4, 0x0

    goto/16 :goto_25
.end method

.method private static screenRun(Landroid/content/Context;)V
    .registers 35

    .prologue
    .line 1045
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    .line 1046
    if-nez v6, :cond_b

    .line 1047
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 1242
    :goto_a
    return-void

    .line 1050
    :cond_b
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v12

    .line 1051
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v14

    .line 1052
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v8

    iget-object v8, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u043d\u0430 \u0436\u0438\u0432\u043e"

    const-string v9, "live"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1053
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v7, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435. \u0421\u0442\u043e\u043f\u044a\u0442 \u0435 \u0432\u0438\u043d\u0430\u0433\u0438 \u043d\u0430\u043b\u0438\u0447\u0435\u043d."

    const-string v8, "AI manages strength, pauses and rests. Stop is always available."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    new-instance v5, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1057
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 1058
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v25

    .line 1061
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v15

    .line 1062
    const-string v7, ""

    const/high16 v8, 0x41f00000    # 30.0f

    const v9, -0xd0b08

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 1063
    const-string v8, ""

    const/high16 v9, 0x41800000    # 16.0f

    const v11, -0x746c5f

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v11, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1064
    const-string v9, ""

    const/high16 v11, 0x41500000    # 13.0f

    const v13, -0xf1efeb

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v9, v11, v13, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 1065
    const/high16 v11, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v13, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v16, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v16

    const/high16 v17, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v11, v13, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1066
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v11, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    const/4 v11, 0x0

    const/high16 v13, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v11, v13, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1069
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1070
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1071
    new-instance v11, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 1072
    invoke-virtual {v11, v12}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 1073
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/high16 v17, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1074
    const/high16 v16, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v16

    move/from16 v0, v16

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1075
    invoke-virtual {v15, v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    const-string v13, ""

    const/high16 v16, 0x41500000    # 13.0f

    const v17, -0x746c5f

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v13, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    .line 1077
    const/16 v16, 0x0

    const/high16 v17, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1078
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1079
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x0

    const/16 v18, -0x1

    const v19, 0x3f8ccccd    # 1.1f

    invoke-direct/range {v16 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1083
    const v15, -0xe8e5df

    const/high16 v16, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v16

    const v17, 0x1fffffff

    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v15, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1084
    new-instance v16, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v15, 0x41800000    # 16.0f

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1085
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v17, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    const/high16 v19, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v19

    const/16 v20, 0x11

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v15, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1086
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v19

    .line 1088
    const/16 v15, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1089
    const-string v15, "--"

    const/high16 v17, 0x42780000    # 62.0f

    const v20, -0xd0b08

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v15, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v15

    .line 1090
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1091
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1092
    const-string v17, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v20, "bpm"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/high16 v20, 0x41600000    # 14.0f

    const v21, -0x746c5f

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    const-string v17, ""

    const/high16 v20, 0x41500000    # 13.0f

    const v21, -0x746c5f

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v17

    .line 1094
    const/16 v20, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1095
    const/16 v20, 0x0

    const/high16 v21, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1096
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1097
    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v21, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v21

    const/high16 v22, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v22

    const/16 v23, 0x11

    invoke-direct/range {v20 .. v23}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v18 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1098
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/high16 v21, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1099
    const/high16 v20, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1100
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v26

    .line 1104
    new-instance v18, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1105
    const-string v19, "\u0421\u0438\u043b\u0430"

    const-string v20, "Strength"

    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v19

    .line 1106
    new-instance v20, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1107
    const-string v21, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v22, "Muscle fatigue"

    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v21

    .line 1108
    new-instance v22, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1109
    const-string v23, "\u0414\u043e\u0437\u0430"

    const-string v24, "Dose"

    invoke-static/range {v23 .. v24}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v23

    .line 1110
    const-string v24, ""

    const/high16 v27, 0x41500000    # 13.0f

    const v28, -0x746c5f

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v24

    .line 1111
    const/16 v27, 0x0

    const/high16 v28, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1112
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1113
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/high16 v30, 0x3f800000    # 1.0f

    invoke-direct/range {v27 .. v30}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1114
    const/high16 v28, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1115
    invoke-virtual/range {v25 .. v27}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v27, -0x1

    const/high16 v28, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v28

    invoke-direct/range {v26 .. v28}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v27

    .line 1120
    const/16 v25, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1121
    const/16 v25, 0x10

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1122
    new-instance v25, Landroid/view/View;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1123
    new-instance v26, Landroid/graphics/drawable/GradientDrawable;

    sget-object v28, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_5bc

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1125
    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1126
    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v28, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v28

    const/high16 v29, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v29

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1128
    const-string v25, ""

    const/high16 v26, 0x41880000    # 17.0f

    const v28, -0xd0b08

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v25

    .line 1129
    const/high16 v26, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1130
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, 0x0

    const/16 v29, -0x2

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    const-string v26, ""

    const/high16 v28, 0x41500000    # 13.0f

    const v29, -0x746c5f

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v26

    .line 1132
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1133
    const/16 v28, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1134
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1137
    new-instance v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1138
    const v10, -0x19f1efeb

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1139
    const/16 v10, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1140
    const/4 v10, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1141
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v27, -0x1

    const/16 v29, -0x1

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1143
    sget-object v10, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1146
    const-string v5, ""

    const v10, -0x746c5f

    move-object/from16 v0, p0

    invoke-static {v0, v5, v10}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v27

    .line 1147
    const/4 v5, 0x2

    const/high16 v10, 0x41900000    # 18.0f

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1148
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$18;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$18;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    const-string v5, "\u041d\u0430\u043c\u0430\u043b\u0438 \u221210%"

    const-string v10, "Reduce \u221210%"

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v10, -0x4fe0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v10}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 1155
    const/4 v10, 0x2

    const/high16 v29, 0x41900000    # 18.0f

    move/from16 v0, v29

    invoke-virtual {v5, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1156
    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$19;

    invoke-direct {v10}, Lcom/isaigu/gymapp/ai/AiUi$19;-><init>()V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    const-string v10, "\u0421\u0422\u041e\u041f"

    const-string v29, "STOP"

    move-object/from16 v0, v29

    invoke-static {v10, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/high16 v29, 0x41b00000    # 22.0f

    const/16 v30, -0x1

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v10, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1163
    const/16 v29, 0x11

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1164
    const v29, -0xb2b1

    const/high16 v30, 0x41e80000    # 29.0f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    new-instance v29, Lcom/isaigu/gymapp/ai/AiUi$20;

    invoke-direct/range {v29 .. v29}, Lcom/isaigu/gymapp/ai/AiUi$20;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    sget-object v29, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v31, 0x435c0000    # 220.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    const/high16 v32, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v32

    invoke-direct/range {v30 .. v32}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v30, 0x435c0000    # 220.0f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v30

    const/high16 v31, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    invoke-direct/range {v29 .. v31}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1174
    const/high16 v30, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1175
    sget-object v30, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v29, Landroid/view/View;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-direct/range {v30 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v30, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v30

    const/high16 v31, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    invoke-direct/range {v29 .. v31}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1179
    sget-object v29, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$21;

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v28}, Lcom/isaigu/gymapp/ai/AiUi$21;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1123
    :array_5bc
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    .line 1819
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1820
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1821
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1822
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1823
    return-object v0
.end method

.method private static sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1696
    const/high16 v0, 0x41400000    # 12.0f

    const v1, -0x746c5f

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1697
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1698
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1699
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1700
    return-object v0
.end method

.method private static segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 14

    .prologue
    .line 1498
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1499
    const v0, -0xe8e5df

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const v2, 0x1fffffff

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1500
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1501
    const/4 v0, 0x0

    :goto_34
    array-length v1, p1

    if-ge v0, v1, :cond_b3

    .line 1503
    if-eqz p3, :cond_3d

    aget-boolean v1, p3, v0

    if-eqz v1, :cond_a4

    :cond_3d
    const/4 v1, 0x1

    move v3, v1

    .line 1504
    :goto_3f
    if-ne v0, p2, :cond_a7

    const/4 v1, 0x1

    .line 1505
    :goto_42
    aget-object v5, p1, v0

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v1, :cond_a9

    const/4 v2, -0x1

    :goto_49
    invoke-static {p0, v5, v6, v2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1506
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1507
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1508
    if-eqz v1, :cond_89

    .line 1509
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_b4

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1511
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1512
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    :cond_89
    if-eqz v3, :cond_95

    if-nez v1, :cond_95

    .line 1515
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$26;

    invoke-direct {v1, p4, v0}, Lcom/isaigu/gymapp/ai/AiUi$26;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    :cond_95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1503
    :cond_a4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3f

    .line 1504
    :cond_a7
    const/4 v1, 0x0

    goto :goto_42

    .line 1505
    :cond_a9
    if-eqz v3, :cond_af

    const v2, -0xd0b08

    goto :goto_49

    :cond_af
    const v2, 0x55ffffff    # 3.518437E13f

    goto :goto_49

    .line 1524
    :cond_b3
    return-object v4

    .line 1509
    :array_b4
    .array-data 4
        -0x83b201
        -0xa59301
    .end array-data
.end method

.method private static setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 321
    if-eqz p2, :cond_15

    .line 322
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42580000    # 54.0f

    .line 323
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42680000    # 58.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    return-void
.end method

.method private static shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 12

    .prologue
    .line 1393
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1427
    :cond_4
    :goto_4
    return-void

    .line 1396
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 1398
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    .line 1399
    const-string v3, "XEMS AI \u2014 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1400
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1401
    const-string v0, "HR rest "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 max "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 cap "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 corridor x "

    .line 1402
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_210

    const-string v0, "-"

    :goto_73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2013"

    .line 1403
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1404
    const-string v0, "Duration "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_226

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    :goto_ae
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getStartMs()J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 dose "

    .line 1405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v1

    iget-wide v8, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% of plan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 corridor "

    .line 1406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_22c

    const-string v0, "-"

    :goto_ff
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 HRR60 "

    .line 1407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_24c

    const-string v0, "-"

    :goto_115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1408
    const-string v0, "L1 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " L2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " L3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " L4 "

    .line 1409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " u "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCapHits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags "

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nblocks: #,phase,t_block,t_rest,q,F_end,dHR,R,D,tau,V\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_192
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 1412
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%s,%.0f,%.0f,%.0f,%.1f,%.1f,%.2f,%.2f,%.1f,%.2f%n"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 1413
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    .line 1412
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_192

    .line 1402
    :cond_210
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_73

    .line 1404
    :cond_226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_ae

    .line 1406
    :cond_22c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ff

    .line 1407
    :cond_24c
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_115

    .line 1415
    :cond_25a
    const-string v0, "\nlog:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_267
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1417
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_267

    .line 1419
    :cond_27d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v3, "XEMS AI report"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1422
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    :try_start_299
    const-string v1, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v2, "Share report"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a8
    .catch Ljava/lang/Throwable; {:try_start_299 .. :try_end_2a8} :catch_2aa

    goto/16 :goto_4

    .line 1425
    :catch_2aa
    move-exception v0

    goto/16 :goto_4
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 175
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 176
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->buildShell(Landroid/app/Activity;)V

    .line 178
    :cond_f
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 179
    return-void
.end method

.method private static statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v6, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    .line 1631
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1632
    const v1, -0xe8e5df

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1633
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1634
    const v1, -0x746c5f

    invoke-static {p0, p2, v5, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1635
    const-string v1, "\u2014"

    const/high16 v2, 0x41b00000    # 22.0f

    const v3, -0xd0b08

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1636
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1637
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1638
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5e

    .line 1639
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1641
    :cond_5e
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    return-object v1
.end method

.method private static stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I
    .registers 3

    .prologue
    .line 164
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$31;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 168
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 165
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_c

    .line 166
    :pswitch_f
    const/4 v0, 0x4

    goto :goto_c

    .line 167
    :pswitch_11
    const/4 v0, 0x5

    goto :goto_c

    .line 164
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method private static stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;
    .registers 14

    .prologue
    const/16 v9, 0x11

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x42700000    # 60.0f

    const/high16 v4, 0x41000000    # 8.0f

    .line 1528
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1529
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1530
    const v1, -0xe8e5df

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1532
    const-string v1, "\u2212"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1533
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$27;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$27;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1539
    const-string v2, "+"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1540
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$28;

    invoke-direct {v3, p3}, Lcom/isaigu/gymapp/ai/AiUi$28;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1546
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1547
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1548
    const/high16 v4, 0x42080000    # 34.0f

    const v5, -0xd0b08

    invoke-static {p0, p1, v4, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1549
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1550
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1551
    const/high16 v4, 0x41400000    # 12.0f

    const v5, -0x746c5f

    invoke-static {p0, p2, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1552
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1553
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1555
    return-object v0
.end method

.method private static styleSideButton()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 128
    :goto_5
    return-void

    .line 120
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v2, :cond_39

    move v0, v1

    .line 121
    :goto_f
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3c

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 123
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 124
    if-eqz v0, :cond_33

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const v1, -0xd1338f

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 127
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 120
    :cond_39
    const/4 v0, 0x0

    goto :goto_f

    .line 121
    nop

    :array_3c
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static varargs tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/high16 v2, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    .line 1667
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1668
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1669
    const/4 v0, 0x7

    new-array v5, v0, [F

    fill-array-data v5, :array_4a

    move v0, v1

    .line 1670
    :goto_19
    array-length v2, p2

    if-ge v0, v2, :cond_49

    .line 1671
    aget-object v6, p2, v0

    if-eqz p1, :cond_41

    const/high16 v2, 0x41400000    # 12.0f

    move v3, v2

    :goto_23
    if-eqz p1, :cond_45

    const v2, -0x746c5f

    :goto_28
    invoke-static {p0, v6, v3, v2, p1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1672
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v7, v5, v7

    invoke-direct {v3, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1670
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1671
    :cond_41
    const/high16 v2, 0x41600000    # 14.0f

    move v3, v2

    goto :goto_23

    :cond_45
    const v2, -0xd0b08

    goto :goto_28

    .line 1674
    :cond_49
    return-object v4

    .line 1669
    :array_4a
    .array-data 4
        0x3f000000    # 0.5f
        0x3fb33333    # 1.4f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;
    .registers 8

    .prologue
    .line 1790
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1791
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1793
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1794
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1795
    if-eqz p4, :cond_1f

    .line 1796
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1798
    :cond_1f
    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1845
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 1848
    :goto_8
    return-void

    .line 1846
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    .line 1569
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1570
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1571
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1572
    const/high16 v1, 0x41700000    # 15.0f

    const v2, -0xd0b08

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1574
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1575
    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1576
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$29;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$29;-><init>(Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1582
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1583
    return-object v0
.end method

.method private static vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 1807
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1808
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1809
    return-object v0
.end method

.method private static weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 1827
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1828
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1829
    return-object v0
.end method
