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

.field private static restHr:Landroid/widget/TextView;

.field private static restNote:Landroid/widget/TextView;

.field private static restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

.field private static restTime:Landroid/widget/TextView;

.field private static sideButton:Landroid/widget/TextView;

.field private static step:I

.field private static subtitleView:Landroid/widget/TextView;

.field private static titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(I)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/LinearLayout;)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 6

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V

    return-void
.end method

.method static attachButton(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 72
    if-nez p0, :cond_5

    .line 113
    :cond_4
    :goto_4
    return-void

    .line 75
    :cond_5
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 79
    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 81
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    goto :goto_4

    .line 85
    :cond_28
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    const-string v3, "xems_ai_button"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 88
    const-string v3, "AI"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 94
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 96
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 97
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 98
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const v6, 0x3da3d70a    # 0.08f

    invoke-direct {v5, v7, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 103
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 104
    const v6, 0x7f090297

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_91

    .line 106
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 107
    if-ltz v6, :cond_91

    .line 108
    add-int/lit8 v1, v6, 0x1

    .line 111
    :cond_91
    invoke-virtual {v0, v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
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

    .line 1820
    const/high16 v0, 0x41700000    # 15.0f

    const v1, -0xd0b08

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1821
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1822
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1823
    and-int v2, p1, v5

    const/high16 v3, 0x2a000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1824
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p1, v5

    const/high16 v4, -0x78000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1825
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1826
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1827
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

    .line 1781
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1782
    const v1, -0xe8e5df

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1783
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1784
    const v1, -0x746c5f

    invoke-static {p0, p2, v7, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1785
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1786
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1787
    const/high16 v2, 0x41f00000    # 30.0f

    const v3, -0xd0b08

    invoke-static {p0, p3, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1788
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_70

    .line 1789
    const/high16 v2, 0x41500000    # 13.0f

    const v3, -0x746c5f

    invoke-static {p0, p4, v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1790
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1791
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1793
    :cond_70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1794
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1795
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_87

    .line 1796
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1798
    :cond_87
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1799
    return-void
.end method

.method private static buildRestCard(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v11, -0x2

    const/16 v10, 0x11

    const/high16 v9, 0x43520000    # 210.0f

    const/4 v2, 0x0

    .line 1359
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v4

    .line 1360
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1361
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1362
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1363
    const v0, -0xe8e5df

    const/16 v3, 0x18

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1364
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1365
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v0, p0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    .line 1366
    sget-object v7, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-eqz v4, :cond_145

    const v0, -0xd1338f

    move v3, v0

    :goto_51
    if-nez v4, :cond_14b

    move v0, v1

    :goto_54
    invoke-virtual {v7, v3, v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setColor(IZ)V

    .line 1367
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1369
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1370
    const-string v3, ""

    const/high16 v7, 0x42300000    # 44.0f

    const v8, -0xd0b08

    invoke-static {p0, v3, v7, v8, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    .line 1371
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1372
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1373
    const-string v3, ""

    const/high16 v7, 0x41600000    # 14.0f

    const v8, -0x746c5f

    invoke-static {p0, v3, v7, v8, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    .line 1374
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1375
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1376
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1378
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1379
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1380
    if-eqz v4, :cond_14e

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u0431\u043b\u043e\u043a"

    const-string v3, "Ready for the next block"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1381
    :goto_c9
    const/high16 v7, 0x41d00000    # 26.0f

    .line 1382
    if-eqz v4, :cond_159

    const v0, -0xd1338f

    .line 1380
    :goto_d0
    invoke-static {p0, v3, v7, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1383
    const-string v0, ""

    const/high16 v1, 0x41700000    # 15.0f

    const v3, -0x746c5f

    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    .line 1384
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1385
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1386
    const-string v0, "\u25b6  \u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0431\u043b\u043e\u043a"

    const-string v1, "\u25b6  Next block"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1387
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1388
    if-eqz v4, :cond_15e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1389
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$24;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$24;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1396
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1397
    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43dc0000    # 440.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1401
    return-void

    .line 1366
    :cond_145
    const v0, -0xff2e01

    move v3, v0

    goto/16 :goto_51

    :cond_14b
    move v0, v2

    goto/16 :goto_54

    .line 1381
    :cond_14e
    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435"

    const-string v3, "Rest between blocks"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_c9

    .line 1382
    :cond_159
    const v0, -0xd0b08

    goto/16 :goto_d0

    .line 1388
    :cond_15e
    const v0, 0x3eb33333    # 0.35f

    goto :goto_107
.end method

.method private static buildShell(Landroid/app/Activity;)V
    .registers 12

    .prologue
    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 196
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    const v1, -0xf1efeb

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 200
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 203
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 206
    const-string v2, "AI"

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 207
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1ae

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 210
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 211
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
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

    .line 213
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 216
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 217
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    const v5, -0xd0b08

    invoke-static {p0, v3, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    .line 218
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    const v5, -0x746c5f

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    .line 219
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    .line 223
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 225
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    const-string v2, "\u2715"

    const v3, -0x746c5f

    invoke-static {p0, v2, v10, v3, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 227
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
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

    .line 229
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    .line 234
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 236
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 238
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    .line 241
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 243
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 246
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_1a7

    .line 248
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 250
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

    .line 251
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 252
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 253
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 254
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 255
    const v2, 0x3f3851ec    # 0.72f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 257
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 259
    :cond_1a7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 260
    return-void

    .line 208
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

    .line 1846
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1847
    const v1, -0xe8e5df

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1848
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1849
    return-object v0
.end method

.method private static centered(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 1937
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1938
    return-object p0
.end method

.method private static chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 1813
    const/high16 v0, 0x41500000    # 13.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1814
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1815
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

    .line 1816
    return-object v0
.end method

.method private static cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1723
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v5, v2

    .line 1724
    :goto_7
    const/16 v0, 0xa

    if-gt v5, v0, :cond_8c

    .line 1726
    if-lt v5, p1, :cond_70

    if-gt v5, p2, :cond_70

    move v0, v1

    .line 1727
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

    .line 1728
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1729
    if-eqz v0, :cond_7a

    .line 1730
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8e

    invoke-direct {v3, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1732
    :goto_34
    if-nez v0, :cond_40

    .line 1733
    const/16 v0, 0x9

    if-lt v5, v0, :cond_80

    const v0, 0x33ff4d4f

    :goto_3d
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1735
    :cond_40
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1736
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1737
    if-eqz p3, :cond_50

    .line 1738
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$31;

    invoke-direct {v0, p3, v5}, Lcom/isaigu/gymapp/ai/AiUi$31;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1745
    :cond_50
    if-eqz p3, :cond_84

    const/high16 v0, 0x42680000    # 58.0f

    :goto_54
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1746
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1747
    if-lez v5, :cond_8a

    if-eqz p3, :cond_87

    const/high16 v0, 0x41000000    # 8.0f

    :goto_63
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_67
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1748
    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_70
    move v0, v2

    .line 1726
    goto :goto_10

    .line 1727
    :cond_72
    const/high16 v3, 0x41700000    # 15.0f

    move v4, v3

    goto :goto_19

    :cond_76
    const v3, -0x746c5f

    goto :goto_1c

    .line 1731
    :cond_7a
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto :goto_34

    .line 1733
    :cond_80
    const v0, -0xe0dcd4

    goto :goto_3d

    .line 1745
    :cond_84
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_54

    .line 1747
    :cond_87
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_63

    :cond_8a
    move v0, v2

    goto :goto_67

    .line 1750
    :cond_8c
    return-object v6

    .line 1730
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
    .line 278
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 280
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_15

    .line 284
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 285
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 287
    return-void

    .line 281
    :catch_15
    move-exception v0

    goto :goto_9
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 1975
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
    .line 873
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v1, v2, :cond_f

    .line 882
    :cond_e
    :goto_e
    return-void

    .line 877
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

    .line 880
    :cond_21
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 881
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

    .line 1863
    const/high16 v0, 0x41800000    # 16.0f

    const v1, -0xd0b08

    invoke-static {p0, p1, v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1864
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1865
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1866
    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v3, v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1867
    return-object v0
.end method

.method private static go(I)V
    .registers 5

    .prologue
    .line 307
    sput p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    .line 308
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 310
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 311
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const-string v2, "Back"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    .line 313
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    .line 315
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    packed-switch p0, :pswitch_data_6c

    .line 324
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V

    .line 326
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->renderDots(Landroid/content/Context;)V

    .line 327
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->refresh()V

    .line 328
    return-void

    .line 317
    :pswitch_50
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V

    goto :goto_49

    .line 318
    :pswitch_54
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenProfile(Landroid/content/Context;)V

    goto :goto_49

    .line 319
    :pswitch_58
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCheck(Landroid/content/Context;)V

    goto :goto_49

    .line 320
    :pswitch_5c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRest(Landroid/content/Context;)V

    goto :goto_49

    .line 321
    :pswitch_60
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenPlan(Landroid/content/Context;)V

    goto :goto_49

    .line 322
    :pswitch_64
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_49

    .line 323
    :pswitch_68
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V

    goto :goto_49

    .line 316
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
    .line 1908
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 1913
    const v0, -0x1fbf05

    :goto_e
    return v0

    .line 1909
    :pswitch_f
    const v0, -0x83b201

    goto :goto_e

    .line 1910
    :pswitch_13
    const v0, -0x94c3

    goto :goto_e

    .line 1911
    :pswitch_17
    const v0, -0xd93926

    goto :goto_e

    .line 1912
    :pswitch_1b
    const v0, -0xb08401

    goto :goto_e

    .line 1908
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

    .line 1894
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v4, [I

    fill-array-data v3, :array_44

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1896
    int-to-float v0, p2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1897
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1898
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1899
    add-int/lit8 v0, p2, -0x2

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1900
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1902
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1903
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 1904
    return-object v0

    .line 1894
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
    .line 1948
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1949
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1950
    return-object v0
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 1839
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1840
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1841
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1842
    return-object v0
.end method

.method private static lighten(I)I
    .registers 5

    .prologue
    const/16 v3, 0xff

    .line 1918
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x3c

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1919
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x3c

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1920
    and-int/lit16 v2, p0, 0xff

    add-int/lit8 v2, v2, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1921
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
    .line 1968
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1970
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1971
    return-object v0
.end method

.method private static meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v1, 0x0

    .line 1754
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1755
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

    .line 1756
    const v0, -0x746c5f

    invoke-static {p0, p2, v6, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    const-string v0, ""

    const v1, -0xd0b08

    invoke-static {p0, v0, v6, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1759
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1760
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1761
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1762
    return-object v0

    :cond_4e
    move v0, v1

    .line 1755
    goto :goto_14
.end method

.method private static onStep(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v0, 0x2

    .line 377
    if-gez p1, :cond_28

    .line 378
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v1, v2, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 379
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 381
    :cond_12
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lez v1, :cond_22

    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v1, v3, :cond_22

    .line 382
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    :goto_1f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 413
    :cond_22
    :goto_22
    return-void

    .line 382
    :cond_23
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 386
    :cond_28
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    packed-switch v1, :pswitch_data_76

    :pswitch_2d
    goto :goto_22

    .line 387
    :pswitch_2e
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 388
    :pswitch_33
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 390
    :pswitch_37
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-nez v0, :cond_22

    .line 391
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 394
    :pswitch_4a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->finishRest(Landroid/content/Context;)V

    goto :goto_22

    .line 396
    :pswitch_4e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginCalibration()V

    .line 397
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 400
    :pswitch_55
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v0

    if-lez v0, :cond_22

    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-nez v0, :cond_22

    .line 402
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startRun(Landroid/content/Context;)V

    .line 403
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 407
    :pswitch_6e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 408
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    goto :goto_22

    .line 386
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
    .line 137
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    :cond_8
    :goto_8
    return-void

    .line 140
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_16

    .line 142
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8

    .line 145
    :cond_16
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1f

    .line 146
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8

    .line 149
    :cond_1f
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_35

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2d

    .line 152
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 155
    :cond_2d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->beginSetup(Landroid/content/Context;)V

    .line 156
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_8

    .line 159
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

    .line 1871
    const/high16 v0, 0x41800000    # 16.0f

    const v1, -0xd0b08

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1872
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1873
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1874
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1875
    and-int v2, p2, v5

    const/high16 v3, 0x2e000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1876
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p2, v5

    const/high16 v4, -0x67000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1877
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1878
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1879
    return-object v0
.end method

.method private static primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 1853
    const/high16 v0, 0x41880000    # 17.0f

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1854
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1855
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1857
    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1858
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1859
    return-object v0

    .line 1855
    :array_28
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 290
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 291
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 304
    :cond_f
    :goto_f
    return-void

    .line 294
    :cond_10
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_22

    .line 295
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_f

    .line 298
    :cond_22
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 300
    :try_start_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_3b

    .line 298
    :goto_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 301
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

    .line 341
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 342
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lt v0, v8, :cond_e

    .line 361
    :cond_d
    return-void

    :cond_e
    move v5, v4

    .line 345
    :goto_f
    if-ge v5, v8, :cond_d

    .line 346
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 347
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v5, v0, :cond_67

    const/4 v0, 0x1

    move v3, v0

    .line 348
    :goto_1c
    if-eqz v3, :cond_69

    .line 349
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_76

    invoke-direct {v0, v2, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v2, v0

    .line 352
    :goto_2c
    if-nez v3, :cond_38

    .line 353
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v5, v0, :cond_70

    const v0, -0x77000001

    :goto_35
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 355
    :cond_38
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 356
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_74

    const/high16 v0, 0x41e00000    # 28.0f

    :goto_4b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 358
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_f

    :cond_67
    move v3, v4

    .line 347
    goto :goto_1c

    .line 351
    :cond_69
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v2, v0

    goto :goto_2c

    .line 353
    :cond_70
    const v0, 0x26ffffff

    goto :goto_35

    :cond_74
    move v0, v1

    .line 357
    goto :goto_4b

    .line 349
    :array_76
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 14

    .prologue
    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v8, 0x41d00000    # 26.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1284
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 1285
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_29

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isManualContinue()Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 1286
    :goto_17
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v4, :cond_2b

    const-string v3, "cp"

    .line 1290
    :goto_1d
    if-nez v3, :cond_72

    .line 1291
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1292
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1351
    :cond_28
    :goto_28
    return-void

    :cond_29
    move v0, v2

    .line 1285
    goto :goto_17

    .line 1287
    :cond_2b
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v4, :cond_56

    const-string v3, "checkpoint"

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "cp"

    goto :goto_1d

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 1288
    :cond_56
    if-eqz v0, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 1289
    :cond_70
    const/4 v3, 0x0

    goto :goto_1d

    .line 1295
    :cond_72
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1296
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1297
    if-eqz v0, :cond_28

    .line 1298
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    goto :goto_28

    .line 1302
    :cond_85
    if-eqz v0, :cond_94

    .line 1303
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1304
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1305
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->buildRestCard(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;)V

    .line 1306
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    goto :goto_28

    .line 1309
    :cond_94
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1310
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1311
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1312
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1313
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1314
    const v0, -0xe8e5df

    const/16 v5, 0x18

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1315
    const-string v0, "cp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 1316
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    .line 1317
    const-string v3, "\u041a\u0430\u043a \u0435 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0435\u0433\u0430?"

    const-string v5, "How does it feel now?"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v5, -0xd0b08

    invoke-static {p0, v3, v8, v5, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0 = \u043d\u0438\u0449\u043e \u00b7 10 = \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u043e. \u0426\u0435\u043b: "

    const-string v5, "0 = nothing \u00b7 10 = maximal. Target: "

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u2013"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41600000    # 14.0f

    const v5, -0x746c5f

    invoke-static {p0, v1, v3, v5, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1320
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$22;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$22;-><init>()V

    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x16

    .line 1325
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1320
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    :goto_12f
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_28

    .line 1327
    :cond_13d
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v3

    .line 1328
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430"

    const-string v5, "Heart rate reached the ceiling"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v5, -0xb2b1

    invoke-static {p0, v0, v8, v5, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1330
    if-eqz v3, :cond_1ac

    .line 1331
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043f\u043e\u0434 \u0437\u043e\u043d\u0430\u0442\u0430 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u0442 30 s. \u041c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0448."

    const-string v1, "HR has been below the recovery level for over 30 s. You may continue."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    :goto_161
    const/high16 v1, 0x41700000    # 15.0f

    const v5, -0x746c5f

    .line 1330
    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1336
    const-string v0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1337
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1338
    if-eqz v3, :cond_1e0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_184
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1339
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$23;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$23;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1346
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1347
    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12f

    .line 1335
    :cond_1ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0421\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v5, "Stimulation is off. Continue unlocks when HR stays below "

    .line 1333
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1335
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v5

    iget-wide v6, v5, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {v1, v6, v7}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0437\u0430 30 s."

    const-string v5, " for 30 s."

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_161

    .line 1338
    :cond_1e0
    const v0, 0x3eb33333    # 0.35f

    goto :goto_184
.end method

.method private static renderVerdict(Landroid/widget/LinearLayout;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 676
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 677
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 678
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v4

    .line 679
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 680
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "\u0421\u0435\u0441\u0438\u044f\u0442\u0430 \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0437\u0430\u043f\u043e\u0447\u043d\u0435: "

    const-string v1, "Session cannot start: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 681
    :goto_24
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 682
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

    .line 681
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 682
    :cond_47
    const-string v0, ""

    goto :goto_30

    .line 684
    :cond_4a
    const v0, -0xb2b1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 695
    :goto_58
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7b

    .line 696
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v1

    if-nez v1, :cond_6a

    const/4 v2, 0x1

    :cond_6a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 697
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_d9

    const v0, 0x3ecccccd    # 0.4f

    :goto_78
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 699
    :cond_7b
    return-void

    .line 685
    :cond_7c
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "\u041c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438. "

    const-string v1, "OK to continue. "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 687
    :goto_92
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b8

    .line 688
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

    .line 687
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    .line 688
    :cond_b5
    const-string v0, ""

    goto :goto_9e

    .line 690
    :cond_b8
    const/16 v0, -0x4fe0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_58

    .line 692
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

    .line 697
    :cond_d9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_78
.end method

.method private static roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1694
    const/high16 v0, 0x41d00000    # 26.0f

    const v1, -0xd0b08

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1695
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1696
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1697
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1698
    const v2, -0xe0dcd4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1699
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1700
    return-object v0
.end method

.method private static rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .prologue
    .line 1883
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1884
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1885
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1886
    if-lez p3, :cond_13

    .line 1887
    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1889
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

    .line 971
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 972
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_128

    move v7, v0

    .line 973
    :goto_18
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Strength calibration"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
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

    .line 975
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 974
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 977
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 978
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 979
    new-instance v2, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 980
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v1, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 982
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 983
    const-string v1, "0%"

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {p0, v1, v4, v14, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 984
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 985
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 986
    const-string v4, ""

    const/high16 v10, 0x41500000    # 13.0f

    const v11, -0x746c5f

    invoke-static {p0, v4, v10, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 987
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 988
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 989
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 990
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 992
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 993
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v9, v5, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 994
    if-eqz v7, :cond_12b

    .line 995
    const-string v5, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e \u0441\u0430\u043c\u0430. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e\u201c, \u043a\u043e\u0433\u0430\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0442\u0438\u0433\u043d\u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v10, "Strength rises smoothly by itself. Tap \u201cEnough\u201d when the sensation reaches the target."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 997
    :goto_d2
    const/high16 v10, 0x41700000    # 15.0f

    .line 994
    invoke-static {p0, v5, v10, v14, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1000
    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    const/4 v11, 0x0

    invoke-static {p0, v5, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v5

    const/16 v10, 0x12

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1002
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v6, v10, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1003
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1004
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1005
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1006
    const-string v6, "\u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v8, "Start session"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1008
    sget-object v8, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$17;

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AiUi$17;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    return-void

    :cond_128
    move v7, v6

    .line 972
    goto/16 :goto_18

    .line 997
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

    .line 588
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    .line 589
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v3, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u0440\u0435\u0434\u0438 \u0441\u0435\u0441\u0438\u044f"

    const-string v5, "Pre-session check"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v3, "\u0421\u0442\u044a\u043f\u043a\u0430 3 \u043e\u0442 6 \u00b7 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u0441\u0435 \u0432\u0441\u0435\u043a\u0438 \u043f\u044a\u0442"

    const-string v5, "Step 3 of 6 \u00b7 answered every time"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 593
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 594
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 595
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 596
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 597
    const-string v0, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v3, "Contraindications"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    sget-object v9, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v10, v9

    move v3, v2

    :goto_46
    if-ge v3, v10, :cond_73

    aget-object v11, v9, v3

    .line 599
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 600
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

    .line 598
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_46

    :cond_71
    move v0, v2

    .line 600
    goto :goto_61

    .line 609
    :cond_73
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 610
    const-string v3, "\u0414\u043d\u0435\u0441"

    const-string v9, "Today"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
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

    .line 619
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

    .line 627
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

    .line 635
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

    .line 643
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

    .line 651
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

    .line 659
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

    .line 667
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 670
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 671
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v2, "Measure resting HR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 672
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V

    .line 673
    return-void
.end method

.method private static screenGoal(Landroid/content/Context;)V
    .registers 16

    .prologue
    .line 418
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u041a\u0430\u043a\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430 \u0434\u043d\u0435\u0441?"

    const-string v2, "What is today\'s goal?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u044a\u043f\u043a\u0430 1 \u043e\u0442 6 \u00b7 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0441\u0435 \u0438\u0437\u0433\u0440\u0430\u0436\u0434\u0430 \u043e\u0442 \u0446\u0435\u043b\u0442\u0430"

    const-string v2, "Step 1 of 6 \u00b7 the program is built from the goal"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    .line 422
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 423
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_32
    if-ge v1, v7, :cond_151

    aget-object v8, v6, v1

    .line 426
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 427
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

    .line 428
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 429
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 430
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

    .line 431
    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 432
    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v0

    const/high16 v10, 0x41b00000    # 22.0f

    const v11, -0xd0b08

    const/4 v12, 0x1

    invoke-static {p0, v0, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 435
    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 436
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiText;->goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v0

    const/high16 v10, 0x41500000    # 13.0f

    const v11, -0x746c5f

    const/4 v12, 0x0

    invoke-static {p0, v0, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v8, v0, :cond_d2

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v8, v0, :cond_134

    .line 439
    :cond_d2
    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u00b7 \u041f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v10, "Active \u00b7 Passive"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    :goto_da
    const/high16 v10, 0x41300000    # 11.0f

    const v11, -0x746c5f

    const/4 v12, 0x1

    .line 438
    invoke-static {p0, v0, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 441
    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 442
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 443
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$1;

    invoke-direct {v0, v2, v8}, Lcom/isaigu/gymapp/ai/AiUi$1;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Goal;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v8, :cond_13d

    const/4 v0, 0x1

    .line 459
    :goto_104
    if-eqz v0, :cond_13f

    .line 460
    const v0, -0xe0dcd4

    const/16 v8, 0x12

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 459
    :goto_10f
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 464
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_129

    .line 465
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 467
    :cond_129
    invoke-virtual {v4, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_32

    .line 440
    :cond_134
    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v10, "Passive"

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_da

    .line 458
    :cond_13d
    const/4 v0, 0x0

    goto :goto_104

    .line 461
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

    .line 470
    :cond_151
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 473
    const-string v0, "\u0420\u0435\u0436\u0438\u043c"

    const-string v4, "Mode"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v7, "Active \u00b7 exercises"

    .line 474
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const-string v6, "\u041f\u0430\u0441\u0438\u0432\u043d\u043e \u00b7 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v7, "Passive \u00b7 no movement"

    .line 475
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 476
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

    .line 477
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v8

    aput-boolean v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$2;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/ai/AiUi$2;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 474
    invoke-static {p0, v5, v0, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 473
    invoke-static {p0, v4, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 485
    const-string v0, "\u041a\u043e\u0439 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430"

    const-string v5, "Who operates"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "\u0422\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v8, "Trainer"

    .line 486
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    const-string v7, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e"

    const-string v8, "Self"

    .line 487
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 488
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v7, :cond_258

    const/4 v0, 0x0

    :goto_1d3
    const/4 v7, 0x0

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$3;

    invoke-direct {v8, v2}, Lcom/isaigu/gymapp/ai/AiUi$3;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 486
    invoke-static {p0, v6, v0, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 485
    invoke-static {p0, v5, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 496
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v2, :cond_25b

    .line 497
    const-string v0, "\u0422\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430 \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0436\u0434\u0430\u0432\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e."

    const-string v2, "The trainer calibrates and confirms continuation."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    :goto_1ef
    const/high16 v2, 0x41400000    # 12.0f

    const v6, -0x746c5f

    const/4 v7, 0x0

    .line 496
    invoke-static {p0, v0, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 501
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 502
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 505
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 506
    invoke-virtual {v1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 509
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 510
    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 512
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v1, "Next"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 513
    return-void

    .line 476
    :cond_255
    const/4 v0, 0x1

    goto/16 :goto_18c

    .line 488
    :cond_258
    const/4 v0, 0x1

    goto/16 :goto_1d3

    .line 499
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
    .line 887
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 888
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v4

    .line 889
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 890
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u0422\u0432\u043e\u044f\u0442 \u043f\u043b\u0430\u043d"

    const-string v5, "Your plan"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
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

    .line 892
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

    .line 893
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 895
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 896
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

    .line 897
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

    .line 898
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

    .line 899
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_2f7

    .line 900
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

    .line 902
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

    .line 903
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

    .line 904
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

    .line 905
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 907
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 908
    const-string v0, "\u0421\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430"

    const-string v1, "Structure"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 910
    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 911
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42080000    # 34.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 913
    const/4 v0, 0x0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v1, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 914
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

    .line 915
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 916
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

    .line 917
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v10

    const/4 v11, 0x1

    .line 916
    invoke-static {p0, v1, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 918
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 919
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

    .line 920
    iget-object v9, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v9, :cond_230

    .line 921
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

    .line 923
    :cond_230
    const/high16 v9, 0x41400000    # 12.0f

    const v10, -0x746c5f

    const/4 v11, 0x0

    invoke-static {p0, v1, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 924
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v1, v10, :cond_307

    .line 925
    const-string v1, "\u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u043f\u043e \u0443\u043c\u043e\u0440\u0430"

    const-string v10, "fatigue-driven blocks"

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    :goto_250
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " \u00b7 "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    .line 927
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 928
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

    .line 924
    invoke-static {p0, v1, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 929
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const v11, 0x3df5c28f    # 0.12f

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v0, v0

    iget v12, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-float v12, v12

    div-float/2addr v0, v12

    .line 930
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v1, v9, v10, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 929
    invoke-virtual {v6, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_186

    .line 892
    :cond_2c0
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v5, "passive"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    .line 897
    :cond_2ca
    const-string v0, "\u2014"

    goto/16 :goto_aa

    :cond_2ce
    const-string v1, ""

    goto/16 :goto_af

    .line 900
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

    .line 901
    :cond_2f7
    const-string v0, "\u2014"

    goto/16 :goto_f7

    .line 902
    :cond_2fb
    const-string v1, ""

    goto/16 :goto_104

    .line 903
    :cond_2ff
    const-string v0, "\u2014"

    goto/16 :goto_128

    :cond_303
    const-string v2, ""

    goto/16 :goto_12c

    .line 926
    :cond_307
    const-string v1, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    const-string v10, "continuous"

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_250

    .line 928
    :cond_311
    const-string v1, ""

    goto/16 :goto_28b

    .line 932
    :cond_315
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 933
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 936
    const-string v0, "\u0417\u0430\u0449\u0438\u0442\u0430 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v2, "Protection during the session"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 937
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 938
    const-string v2, "\u0421\u0442\u043e\u043f \u0441 \u0435\u0434\u0438\u043d \u0434\u043e\u043f\u0438\u0440"

    const-string v3, "One-tap stop"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xb2b1

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 939
    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_380

    .line 940
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

    .line 942
    :cond_380
    const-string v2, "\u0420\u0430\u043c\u043f\u0430 0.3\u20130.5 s"

    const-string v3, "Ramp 0.3\u20130.5 s"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xff2e01

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 943
    const-string v2, "\u0421\u0438\u043b\u0430 \u2264 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435\u0442\u043e"

    const-string v3, "Strength \u2264 calibration"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xff2e01

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 944
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043f\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v3, "Rest on muscle fatigue"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x83b201

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 945
    const-string v2, "3 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0438 \u0442\u043e\u0447\u043a\u0438"

    const-string v3, "3 checkpoints"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0x83b201

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 946
    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v2, :cond_3e2

    iget-boolean v2, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v2, :cond_3e2

    .line 947
    const-string v2, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u0438 \u043f\u043e \u043f\u0443\u043b\u0441\u0430"

    const-string v3, "HR corrections"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd1338f

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 949
    :cond_3e2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-eqz v0, :cond_40e

    .line 951
    iget-boolean v0, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_43c

    .line 952
    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043b\u0443\u0436\u0438 \u0441\u0430\u043c\u043e \u0437\u0430 \u0442\u0430\u0432\u0430\u043d\u0430."

    const-string v2, "Passive program \u2014 HR only guards the ceiling."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    :goto_3f5
    const/high16 v2, 0x41500000    # 13.0f

    const v3, -0x746c5f

    const/4 v6, 0x0

    .line 951
    invoke-static {p0, v0, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 955
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 956
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 958
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

    .line 959
    const-string v3, "NO_BAND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_414

    .line 960
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

    .line 953
    :cond_43c
    const-string v0, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442 \u0438 \u043c\u043e\u0434\u0435\u043b\u044a\u0442 \u043d\u0430 \u0443\u043c\u043e\u0440\u0430\u0442\u0430."

    const-string v2, "No band \u2014 plan and fatigue model only."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f5

    .line 963
    :cond_445
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 965
    const-string v0, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "Calibrate strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 966
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

    .line 518
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    .line 519
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v5, "\u041f\u0440\u043e\u0444\u0438\u043b"

    const-string v6, "Profile"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v5, "\u0421\u0442\u044a\u043f\u043a\u0430 2 \u043e\u0442 6 \u00b7 \u043e\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438\u0434\u0432\u0430\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435"

    const-string v6, "Step 2 of 6 \u00b7 max HR and zones come from the profile"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 523
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 524
    const-string v0, "\u041f\u043e\u043b"

    const-string v7, "Sex"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "\u041c\u044a\u0436"

    const-string v9, "Male"

    .line 525
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 526
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v9, :cond_1de

    move v0, v1

    :goto_54
    const/4 v9, 0x0

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$4;

    invoke-direct {v10, v4}, Lcom/isaigu/gymapp/ai/AiUi$4;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 524
    invoke-static {p0, v8, v0, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 532
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 524
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    const-string v0, "\u041a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v7, "Fitness"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "\u041d\u0438\u0441\u043a\u0430"

    const-string v9, "Low"

    .line 534
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

    .line 535
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v8

    const/4 v9, 0x0

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$5;

    invoke-direct {v10, v4}, Lcom/isaigu/gymapp/ai/AiUi$5;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 533
    invoke-static {p0, v7, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 541
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 533
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 545
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

    .line 552
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 545
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_1e1

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 554
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

    .line 555
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$7;

    invoke-direct {v10, v4, v0}, Lcom/isaigu/gymapp/ai/AiUi$7;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V

    invoke-static {p0, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v0

    .line 554
    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 562
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 554
    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 564
    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v6, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v0

    .line 567
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 568
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 569
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 570
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

    .line 572
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

    .line 573
    const/16 v0, 0x16

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-ge v0, v12, :cond_1b6

    .line 575
    const v0, -0xb2b1

    const-string v6, "AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u043f\u044a\u043b\u043d\u043e\u043b\u0435\u0442\u043d\u0438."

    const-string v7, "AI sessions are for adults only."

    .line 576
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 575
    invoke-static {p0, v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0xc

    .line 577
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 575
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    :cond_1b6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 580
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v5, "Next"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 581
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v5, v12, :cond_1e9

    :goto_1d0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 582
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v0, v12, :cond_1eb

    move v0, v3

    :goto_1da
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 583
    return-void

    :cond_1de
    move v0, v2

    .line 526
    goto/16 :goto_54

    .line 553
    :cond_1e1
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v0

    goto/16 :goto_f8

    :cond_1e9
    move v2, v1

    .line 581
    goto :goto_1d0

    .line 582
    :cond_1eb
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1da
.end method

.method private static screenReport(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1437
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 1438
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041e\u0442\u0447\u0435\u0442"

    const-string v3, "Report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    if-nez v1, :cond_27

    .line 1440
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1441
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1524
    :goto_26
    return-void

    .line 1444
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

    .line 1445
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1446
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1447
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1448
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1449
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1450
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1452
    const-string v0, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v5, "Share report"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1453
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$25;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$25;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1459
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    const-string v5, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
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

    .line 1464
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$26;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiUi$26;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26
.end method

.method private static screenRest(Landroid/content/Context;)V
    .registers 18

    .prologue
    .line 704
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v3, "Resting heart rate"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v2, "\u0421\u0442\u044a\u043f\u043a\u0430 4 \u043e\u0442 6 \u00b7 \u0441\u0435\u0434\u043d\u0438 \u0438\u043b\u0438 \u043b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0431\u0435\u0437 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v3, "Step 4 of 6 \u00b7 sit or lie still, no stimulation"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_1aa

    const/4 v5, 0x1

    .line 708
    :goto_25
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 709
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 711
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 712
    new-instance v7, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 713
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 715
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 716
    const-string v4, "--"

    const/high16 v6, 0x42800000    # 64.0f

    const v8, -0xd0b08

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 717
    const/16 v4, 0x11

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 718
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 719
    const-string v4, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v8, "bpm"

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v8, 0x41600000    # 14.0f

    const v9, -0x746c5f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 720
    const-string v4, ""

    const/high16 v8, 0x41700000    # 15.0f

    const v9, -0xff2e01

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 721
    const/16 v4, 0x11

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 722
    const/4 v4, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v8, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 723
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v4, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 727
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 728
    const/high16 v3, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 729
    const-string v3, ""

    const/high16 v4, 0x41a00000    # 20.0f

    const v8, -0xd0b08

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 730
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 731
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    const v9, -0x746c5f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v9, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 732
    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v11, 0x0

    const/high16 v12, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 733
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 734
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 735
    const-string v4, "\u041c\u0435\u0434\u0438\u0430\u043d\u0430"

    const-string v11, "Median"

    invoke-static {v4, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v11

    .line 736
    const-string v4, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435"

    const-string v12, "Spread"

    invoke-static {v4, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v12

    .line 737
    const-string v4, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b"

    const-string v13, "Interval"

    invoke-static {v4, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v13

    .line 738
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 739
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 740
    const/4 v4, 0x0

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v4, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 741
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    const/4 v15, -0x2

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-direct {v4, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 744
    const-string v1, "\u041a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v2, "To the plan"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 746
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v2

    .line 747
    if-eqz v2, :cond_19d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v1

    if-nez v1, :cond_19d

    .line 748
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiSession;->acquireBand(Landroid/app/Activity;)V

    .line 751
    :cond_19d
    sget-object v14, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$16;

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v13}, Lcom/isaigu/gymapp/ai/AiUi$16;-><init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    return-void

    .line 707
    :cond_1aa
    const/4 v5, 0x0

    goto/16 :goto_25
.end method

.method private static screenRun(Landroid/content/Context;)V
    .registers 36

    .prologue
    .line 1073
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    .line 1074
    if-nez v6, :cond_b

    .line 1075
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 1275
    :goto_a
    return-void

    .line 1078
    :cond_b
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v12

    .line 1079
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v14

    .line 1080
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

    .line 1081
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v7, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435. \u0421\u0442\u043e\u043f\u044a\u0442 \u0435 \u0432\u0438\u043d\u0430\u0433\u0438 \u043d\u0430\u043b\u0438\u0447\u0435\u043d."

    const-string v8, "AI manages strength, pauses and rests. Stop is always available."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    new-instance v5, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1085
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 1086
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v26

    .line 1089
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v15

    .line 1090
    const-string v7, ""

    const/high16 v8, 0x41f00000    # 30.0f

    const v9, -0xd0b08

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 1091
    const-string v8, ""

    const/high16 v9, 0x41800000    # 16.0f

    const v11, -0x746c5f

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v9, v11, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1092
    const-string v9, ""

    const/high16 v11, 0x41500000    # 13.0f

    const v13, -0xf1efeb

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v9, v11, v13, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 1093
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

    .line 1094
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v11, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
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

    .line 1097
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1098
    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1099
    new-instance v11, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 1100
    invoke-virtual {v11, v12}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 1101
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

    .line 1102
    const/high16 v16, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v16

    move/from16 v0, v16

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1103
    invoke-virtual {v15, v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
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

    .line 1105
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

    .line 1106
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1107
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x0

    const/16 v18, -0x1

    const v19, 0x3f8ccccd    # 1.1f

    invoke-direct/range {v16 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1111
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

    .line 1112
    new-instance v16, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v15, 0x41800000    # 16.0f

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1113
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

    .line 1114
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1115
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v19

    .line 1116
    const/16 v15, 0x11

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1117
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

    .line 1118
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1119
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1120
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

    .line 1121
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

    .line 1122
    const/16 v20, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1123
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

    .line 1124
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1125
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

    .line 1126
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/high16 v21, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1127
    const/high16 v20, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1128
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1131
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v27

    .line 1132
    new-instance v18, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1133
    const-string v19, "\u0421\u0438\u043b\u0430"

    const-string v20, "Strength"

    invoke-static/range {v19 .. v20}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v19

    .line 1134
    new-instance v20, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1135
    const-string v21, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v22, "Muscle fatigue"

    invoke-static/range {v21 .. v22}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v21

    .line 1136
    new-instance v22, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1137
    const-string v23, "\u0414\u043e\u0437\u0430"

    const-string v24, "Dose"

    invoke-static/range {v23 .. v24}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v23

    .line 1138
    const-string v24, ""

    const/high16 v25, 0x41a00000    # 20.0f

    const v28, -0xd0b08

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v24

    .line 1139
    const/16 v25, 0x0

    const/high16 v28, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1140
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1141
    const-string v25, ""

    const/high16 v28, 0x41500000    # 13.0f

    const v29, -0x746c5f

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v25

    .line 1142
    const/16 v28, 0x0

    const/high16 v29, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1143
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1144
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, 0x0

    const/16 v30, -0x1

    const/high16 v31, 0x3f800000    # 1.0f

    invoke-direct/range {v28 .. v31}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1145
    const/high16 v29, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1146
    invoke-virtual/range {v26 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v28, -0x1

    const/high16 v29, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v29

    invoke-direct/range {v27 .. v29}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v28

    .line 1151
    const/16 v26, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1152
    const/16 v26, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1153
    new-instance v26, Landroid/view/View;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1154
    new-instance v27, Landroid/graphics/drawable/GradientDrawable;

    sget-object v29, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    fill-array-data v30, :array_5f8

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1156
    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1157
    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1158
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v29, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v29

    const/high16 v30, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    const-string v26, ""

    const/high16 v27, 0x41880000    # 17.0f

    const v29, -0xd0b08

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v26

    .line 1160
    const/high16 v27, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v27

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1161
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v29, 0x0

    const/16 v30, -0x2

    const/high16 v31, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    const-string v27, ""

    const/high16 v29, 0x41500000    # 13.0f

    const v30, -0x746c5f

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v27

    .line 1163
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1164
    const/16 v29, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1168
    new-instance v29, Landroid/widget/FrameLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1169
    const v10, -0x19f1efeb

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1170
    const/16 v10, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1171
    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1172
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v28, -0x1

    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    sget-object v10, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1177
    const-string v5, ""

    const v10, -0x746c5f

    move-object/from16 v0, p0

    invoke-static {v0, v5, v10}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v28

    .line 1178
    const/4 v5, 0x2

    const/high16 v10, 0x41900000    # 18.0f

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1179
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$18;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$18;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    const-string v5, "\u041d\u0430\u043c\u0430\u043b\u0438 \u221210%"

    const-string v10, "Reduce \u221210%"

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v10, -0x4fe0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v10}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 1186
    const/4 v10, 0x2

    const/high16 v30, 0x41900000    # 18.0f

    move/from16 v0, v30

    invoke-virtual {v5, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1187
    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$19;

    invoke-direct {v10}, Lcom/isaigu/gymapp/ai/AiUi$19;-><init>()V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    const-string v10, "\u0421\u0422\u041e\u041f"

    const-string v30, "STOP"

    move-object/from16 v0, v30

    invoke-static {v10, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/high16 v30, 0x41b00000    # 22.0f

    const/16 v31, -0x1

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v10, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1194
    const/16 v30, 0x11

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1195
    const v30, -0xb2b1

    const/high16 v31, 0x41e80000    # 29.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v30 .. v33}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    new-instance v30, Lcom/isaigu/gymapp/ai/AiUi$20;

    invoke-direct/range {v30 .. v30}, Lcom/isaigu/gymapp/ai/AiUi$20;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    sget-object v30, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v32, 0x435c0000    # 220.0f

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v32

    const/high16 v33, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v33

    invoke-direct/range {v31 .. v33}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
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

    .line 1205
    const/high16 v31, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1206
    sget-object v31, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v30, Landroid/view/View;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/high16 v34, 0x3f800000    # 1.0f

    invoke-direct/range {v31 .. v34}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1208
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v31, 0x43960000    # 300.0f

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

    move-object/from16 v0, v30

    invoke-virtual {v5, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    sget-object v30, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$21;

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v29}, Lcom/isaigu/gymapp/ai/AiUi$21;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1154
    nop

    :array_5f8
    .array-data 4
        -0x83b201
        -0xff2e01
    .end array-data
.end method

.method private static scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    .line 1954
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1955
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1956
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1957
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1958
    return-object v0
.end method

.method private static sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1831
    const/high16 v0, 0x41400000    # 12.0f

    const v1, -0x746c5f

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1832
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1833
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1834
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1835
    return-object v0
.end method

.method private static segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 14

    .prologue
    .line 1633
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1634
    const v0, -0xe8e5df

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const v2, 0x1fffffff

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1635
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

    .line 1636
    const/4 v0, 0x0

    :goto_34
    array-length v1, p1

    if-ge v0, v1, :cond_b3

    .line 1638
    if-eqz p3, :cond_3d

    aget-boolean v1, p3, v0

    if-eqz v1, :cond_a4

    :cond_3d
    const/4 v1, 0x1

    move v3, v1

    .line 1639
    :goto_3f
    if-ne v0, p2, :cond_a7

    const/4 v1, 0x1

    .line 1640
    :goto_42
    aget-object v5, p1, v0

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v1, :cond_a9

    const/4 v2, -0x1

    :goto_49
    invoke-static {p0, v5, v6, v2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1641
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1642
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

    .line 1643
    if-eqz v1, :cond_89

    .line 1644
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_b4

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1646
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1647
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1649
    :cond_89
    if-eqz v3, :cond_95

    if-nez v1, :cond_95

    .line 1650
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$27;

    invoke-direct {v1, p4, v0}, Lcom/isaigu/gymapp/ai/AiUi$27;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1657
    :cond_95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1636
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1638
    :cond_a4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3f

    .line 1639
    :cond_a7
    const/4 v1, 0x0

    goto :goto_42

    .line 1640
    :cond_a9
    if-eqz v3, :cond_af

    const v2, -0xd0b08

    goto :goto_49

    :cond_af
    const v2, 0x55ffffff    # 3.518437E13f

    goto :goto_49

    .line 1659
    :cond_b3
    return-object v4

    .line 1644
    :array_b4
    .array-data 4
        -0x83b201
        -0xa59301
    .end array-data
.end method

.method private static setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 331
    if-eqz p2, :cond_15

    .line 332
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42580000    # 54.0f

    .line 333
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
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

    .line 336
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
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

    .line 338
    return-void
.end method

.method private static shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 12

    .prologue
    .line 1527
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1562
    :cond_4
    :goto_4
    return-void

    .line 1530
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1531
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 1532
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    .line 1533
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

    .line 1534
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1535
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

    .line 1536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_23f

    const-string v0, "-"

    :goto_73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2013"

    .line 1537
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

    .line 1538
    const-string v0, "Duration "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_255

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

    .line 1539
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

    .line 1540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25b

    const-string v0, "-"

    :goto_ff
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 HRR60 "

    .line 1541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_27b

    const-string v0, "-"

    :goto_115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 kcal "

    .line 1542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_289

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1543
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

    .line 1544
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

    .line 1545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nblocks: #,phase,t_block,t_rest,q,F_end,dHR,R,D,tau,V\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 1547
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%s,%.0f,%.0f,%.0f,%.1f,%.1f,%.2f,%.2f,%.1f,%.2f%n"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 1548
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

    .line 1547
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c1

    .line 1536
    :cond_23f
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

    .line 1538
    :cond_255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_ae

    .line 1540
    :cond_25b
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

    .line 1541
    :cond_27b
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_115

    .line 1542
    :cond_289
    const-string v0, "-"

    goto/16 :goto_144

    .line 1550
    :cond_28d
    const-string v0, "\nlog:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1552
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29a

    .line 1554
    :cond_2b0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v3, "XEMS AI report"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    :try_start_2cc
    const-string v1, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v2, "Share report"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2db
    .catch Ljava/lang/Throwable; {:try_start_2cc .. :try_end_2db} :catch_2dd

    goto/16 :goto_4

    .line 1560
    :catch_2dd
    move-exception v0

    goto/16 :goto_4
.end method

.method static show()V
    .registers 1

    .prologue
    .line 165
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 171
    :goto_c
    return-void

    .line 168
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_c

    .line 169
    :catch_16
    move-exception v0

    goto :goto_c
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 185
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 186
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->buildShell(Landroid/app/Activity;)V

    .line 188
    :cond_f
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 189
    return-void
.end method

.method private static statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v6, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    .line 1766
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1767
    const v1, -0xe8e5df

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1768
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1769
    const v1, -0x746c5f

    invoke-static {p0, p2, v5, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1770
    const-string v1, "\u2014"

    const/high16 v2, 0x41b00000    # 22.0f

    const v3, -0xd0b08

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1771
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1772
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1773
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5e

    .line 1774
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1776
    :cond_5e
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1777
    return-object v1
.end method

.method private static stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I
    .registers 3

    .prologue
    .line 174
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 178
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 175
    :pswitch_d
    const/4 v0, 0x3

    goto :goto_c

    .line 176
    :pswitch_f
    const/4 v0, 0x4

    goto :goto_c

    .line 177
    :pswitch_11
    const/4 v0, 0x5

    goto :goto_c

    .line 174
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

    .line 1663
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1664
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1665
    const v1, -0xe8e5df

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const v3, 0x1fffffff

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1666
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1667
    const-string v1, "\u2212"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1668
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$28;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$28;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1674
    const-string v2, "+"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1675
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$29;

    invoke-direct {v3, p3}, Lcom/isaigu/gymapp/ai/AiUi$29;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1681
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1682
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1683
    const/high16 v4, 0x42080000    # 34.0f

    const v5, -0xd0b08

    invoke-static {p0, p1, v4, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1684
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1685
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1686
    const/high16 v4, 0x41400000    # 12.0f

    const v5, -0x746c5f

    invoke-static {p0, p2, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1687
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1688
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1689
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1690
    return-object v0
.end method

.method private static styleSideButton()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 116
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 127
    :goto_5
    return-void

    .line 119
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v2, :cond_39

    move v0, v1

    .line 120
    :goto_f
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3c

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 122
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 123
    if-eqz v0, :cond_33

    .line 124
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const v1, -0xd1338f

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 126
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 119
    :cond_39
    const/4 v0, 0x0

    goto :goto_f

    .line 120
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

    .line 1802
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1803
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1804
    const/4 v0, 0x7

    new-array v5, v0, [F

    fill-array-data v5, :array_4a

    move v0, v1

    .line 1805
    :goto_19
    array-length v2, p2

    if-ge v0, v2, :cond_49

    .line 1806
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

    .line 1807
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v7, v5, v7

    invoke-direct {v3, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1805
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1806
    :cond_41
    const/high16 v2, 0x41600000    # 14.0f

    move v3, v2

    goto :goto_23

    :cond_45
    const v2, -0xd0b08

    goto :goto_28

    .line 1809
    :cond_49
    return-object v4

    .line 1804
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
    .line 1925
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1926
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1927
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1928
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1929
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1930
    if-eqz p4, :cond_1f

    .line 1931
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1933
    :cond_1f
    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1980
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 1983
    :goto_8
    return-void

    .line 1981
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    .line 1704
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1705
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1706
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1707
    const/high16 v1, 0x41700000    # 15.0f

    const v2, -0xd0b08

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1710
    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1711
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$30;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$30;-><init>(Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1717
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1718
    return-object v0
.end method

.method private static updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 14

    .prologue
    .line 1404
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-nez v0, :cond_5

    .line 1432
    :goto_4
    return-void

    .line 1407
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v2

    .line 1408
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v4

    .line 1409
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_8a

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x2710

    cmp-long v0, v0, v6

    if-gez v0, :cond_8a

    const/4 v0, 0x1

    .line 1410
    :goto_1e
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    if-eqz v0, :cond_8c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v5, "bpm"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_45
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1412
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestOverS(J)D

    move-result-wide v0

    .line 1413
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1414
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_8f

    .line 1416
    const-string v0, "\u0414\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 \u2014 AI \u0449\u0435 \u0437\u0430\u043f\u043e\u0447\u043d\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e \u0438 \u0449\u0435 \u0432\u0434\u0438\u0433\u043d\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430. \u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u043f\u043b\u0430\u043d\u0430 \u0441\u0442\u043e\u0438."

    const-string v1, "Long pause \u2014 AI starts softer and ramps back over a few pulses. The plan clock is on hold."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    :goto_85
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1409
    :cond_8a
    const/4 v0, 0x0

    goto :goto_1e

    .line 1410
    :cond_8c
    const-string v0, ""

    goto :goto_45

    .line 1418
    :cond_8f
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d\u0438. \u041d\u0430\u0442\u0438\u0441\u043d\u0438, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u0438 \u0432 \u043f\u043e\u0437\u0438\u0446\u0438\u044f."

    const-string v1, "Muscles and HR have recovered. Tap when in position."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 1422
    :cond_98
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v0

    .line 1423
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v2, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1424
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430 "

    const-string v2, "Muscle fatigue "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 1426
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1427
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestHrOk()Z

    move-result v1

    if-nez v1, :cond_11d

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u0447\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u0430 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v2, " \u00b7 waiting for HR below "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1429
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v2

    iget-wide v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1431
    :cond_11d
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". \u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0431\u043b\u043e\u043a \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u0441\u0430\u043c\u043e \u0440\u044a\u0447\u043d\u043e."

    const-string v3, ". The next block starts only by hand."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private static vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 1942
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1943
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1944
    return-object v0
.end method

.method private static weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 1962
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1963
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1964
    return-object v0
.end method
