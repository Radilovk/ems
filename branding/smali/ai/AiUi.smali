.class final Lcom/isaigu/gymapp/ai/AiUi;
.super Ljava/lang/Object;
.source "AiUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiUi$FlowRow;,
        Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;,
        Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;,
        Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;,
        Lcom/isaigu/gymapp/ai/AiUi$StepListener;,
        Lcom/isaigu/gymapp/ai/AiUi$CloseListener;,
        Lcom/isaigu/gymapp/ai/AiUi$OpenListener;
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
            "Ljava/util/List<",
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

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 3

    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 3

    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;I)V
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(I)V
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/LinearLayout;)V
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 3

    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 5

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V

    return-void
.end method

.method static attachButton(Landroid/view/View;)V
    .registers 9

    .line 72
    if-nez p0, :cond_3

    .line 73
    return-void

    .line 75
    :cond_3
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 76
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_f

    .line 77
    return-void

    .line 79
    :cond_f
    check-cast p0, Landroid/widget/LinearLayout;

    .line 80
    const-string v0, "xems_ai_button"

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 83
    return-void

    .line 85
    :cond_25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->applyTheme(Landroid/content/Context;)V

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 89
    const-string v0, "AI"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const/4 v0, 0x2

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    const v0, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 95
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 98
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 99
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 101
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const v7, 0x3da3d70a    # 0.08f

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 105
    const v6, 0x7f090297

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 106
    if-eqz v6, :cond_93

    .line 107
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 108
    if-ltz v6, :cond_93

    .line 109
    add-int/lit8 v5, v6, 0x1

    .line 112
    :cond_93
    invoke-virtual {p0, v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 113
    add-int/2addr v5, v3

    invoke-virtual {p0, v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 114
    return-void
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 7

    .line 1911
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v1, 0x41700000    # 15.0f

    const/4 v2, 0x1

    invoke-static {p0, p2, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 1912
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1913
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1914
    const v1, 0xffffff

    and-int/2addr p1, v1

    const/high16 v1, 0x2a000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1915
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, -0x78000000

    or-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1916
    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1917
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1918
    return-object p2
.end method

.method private static bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1872
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1873
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1874
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1875
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, p2, v2, v1, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1876
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 1877
    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1878
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p0, p3, v3, v1, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1879
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v1, 0x0

    if-lez p3, :cond_6b

    .line 1880
    const/high16 p3, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p4, p3, v3, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p3

    .line 1881
    const/high16 p4, 0x40800000    # 4.0f

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p4

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p3, p4, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1882
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1884
    :cond_6b
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1885
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1886
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-lez p3, :cond_82

    .line 1887
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1889
    :cond_82
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1890
    return-void
.end method

.method private static buildRestCard(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 13

    .line 1440
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result p2

    .line 1441
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1442
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1443
    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1444
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/16 v2, 0x18

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1445
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1446
    new-instance v2, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v2, p0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    .line 1447
    if-eqz p2, :cond_42

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto :goto_44

    :cond_42
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    :goto_44
    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setColor(IZ)V

    .line 1448
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x43520000    # 210.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1450
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1451
    const/high16 v5, 0x42300000    # 44.0f

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v7, ""

    const/4 v8, 0x1

    invoke-static {p0, v7, v5, v6, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    .line 1452
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1453
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1454
    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v9, 0x0

    invoke-static {p0, v7, v5, v6, v9}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    .line 1455
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1456
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1457
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1458
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1459
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1460
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1461
    if-eqz p2, :cond_b9

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u0431\u043b\u043e\u043a"

    const-string v4, "Ready for the next block"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c1

    .line 1462
    :cond_b9
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435"

    const-string v4, "Rest between blocks"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c1
    const/high16 v4, 0x41d00000    # 26.0f

    .line 1463
    if-eqz p2, :cond_c8

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    goto :goto_ca

    :cond_c8
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 1461
    :goto_ca
    invoke-static {p0, v2, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1464
    const/high16 v2, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v7, v2, v4, v9}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    .line 1465
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v9, v4, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1466
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1467
    const-string v2, "\u25b6  \u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0431\u043b\u043e\u043a"

    const-string v4, "\u25b6  Next block"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1468
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1469
    if-eqz p2, :cond_fd

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_100

    :cond_fd
    const p2, 0x3eb33333    # 0.35f

    :goto_100
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1470
    new-instance p2, Lcom/isaigu/gymapp/ai/AiUi$28;

    invoke-direct {p2}, Lcom/isaigu/gymapp/ai/AiUi$28;-><init>()V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1476
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42680000    # 58.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1477
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1478
    invoke-virtual {v1, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1479
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43dc0000    # 440.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    const/4 v2, -0x2

    invoke-direct {p2, p0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1482
    return-void
.end method

.method private static buildShell(Landroid/app/Activity;)V
    .registers 14

    .line 193
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiViews;->applyTheme(Landroid/content/Context;)V

    .line 194
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 196
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 198
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v3, v5, v6, v1}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 202
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v3, v5, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 207
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 208
    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const-string v7, "AI"

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {p0, v7, v8, v6, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 209
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x2

    new-array v11, v10, [I

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v12, v11, v2

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v12, v11, v1

    invoke-direct {v8, v9, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 212
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 213
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v6, v8, v12, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 215
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 218
    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v8, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 219
    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v9, ""

    const/high16 v11, 0x41b00000    # 22.0f

    invoke-static {p0, v9, v11, v8, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    .line 220
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static {p0, v9, v8, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    .line 221
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    .line 225
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const-string v6, "\u2715"

    invoke-static {p0, v6, v4, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v1, v6, v11, v12, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 231
    new-instance v6, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;-><init>()V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    .line 236
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 238
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 239
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 240
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    .line 243
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 244
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 245
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 248
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_194

    .line 250
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 252
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f70a3d7    # 0.94f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const v3, 0x44bb8000    # 1500.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 253
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 254
    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 255
    invoke-virtual {v0, v7}, Landroid/view/Window;->setGravity(I)V

    .line 256
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 257
    const v1, 0x3f3851ec    # 0.72f

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 258
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 259
    invoke-virtual {v0, v10}, Landroid/view/Window;->addFlags(I)V

    .line 261
    :cond_194
    sget-object p0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 262
    return-void
.end method

.method private static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 7

    .line 1937
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1938
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1939
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v1, v4, v2, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1940
    return-object v0
.end method

.method private static centered(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 2046
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2047
    return-object p0
.end method

.method private static chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 7

    .line 1904
    const/high16 v0, 0x41500000    # 13.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1905
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1906
    const v0, 0xffffff

    and-int/2addr p2, v0

    const/high16 v0, 0x22000000

    or-int/2addr p2, v0

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1907
    return-object p1
.end method

.method private static cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 13

    .line 1811
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1812
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0xa

    if-gt v2, v3, :cond_91

    .line 1813
    nop

    .line 1814
    const/4 v3, 0x1

    if-lt v2, p1, :cond_12

    if-gt v2, p2, :cond_12

    const/4 v4, 0x1

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    .line 1816
    :goto_13
    int-to-float v5, v2

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiUi;->heat(F)I

    move-result v5

    .line 1817
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_24

    const/high16 v7, 0x41a00000    # 20.0f

    goto :goto_26

    :cond_24
    const/high16 v7, 0x41700000    # 15.0f

    :goto_26
    if-eqz v4, :cond_2b

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    goto :goto_2d

    :cond_2b
    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    :goto_2d
    invoke-static {p0, v6, v7, v8, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 1818
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1819
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1820
    if-eqz v4, :cond_41

    .line 1821
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_59

    .line 1823
    :cond_41
    const/16 v4, 0x22

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1824
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/16 v8, 0x88

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v5

    invoke-virtual {v7, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1826
    :goto_59
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1827
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1828
    if-eqz p3, :cond_69

    .line 1829
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$35;

    invoke-direct {v3, p3, v2}, Lcom/isaigu/gymapp/ai/AiUi$35;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1836
    :cond_69
    if-eqz p3, :cond_6e

    const/high16 v3, 0x42680000    # 58.0f

    goto :goto_70

    :cond_6e
    const/high16 v3, 0x42180000    # 38.0f

    :goto_70
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 1837
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1838
    if-lez v2, :cond_87

    if-eqz p3, :cond_80

    const/high16 v3, 0x41000000    # 8.0f

    goto :goto_82

    :cond_80
    const/high16 v3, 0x40a00000    # 5.0f

    :goto_82
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    goto :goto_88

    :cond_87
    const/4 v3, 0x0

    :goto_88
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1839
    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1841
    :cond_91
    return-object v0
.end method

.method private static dismiss()V
    .registers 1

    .line 280
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 282
    :try_start_4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 284
    goto :goto_9

    .line 283
    :catchall_8
    move-exception v0

    .line 286
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 287
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 289
    return-void
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 2

    .line 2084
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static finishRest(Landroid/content/Context;)V
    .registers 6

    .line 911
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object p0

    .line 912
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_f

    goto :goto_36

    .line 915
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_22

    .line 916
    return-void

    .line 918
    :cond_22
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 919
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 920
    return-void

    .line 913
    :cond_36
    :goto_36
    return-void
.end method

.method private static ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .line 1955
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1956
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1957
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1959
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const/high16 v1, 0x41d80000    # 27.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v0, p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1960
    return-object p1
.end method

.method private static go(I)V
    .registers 5

    .line 309
    sput p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    .line 310
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 312
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 314
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const-string v2, "Back"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    .line 315
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    .line 317
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    packed-switch p0, :pswitch_data_68

    .line 326
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V

    goto :goto_61

    .line 325
    :pswitch_46
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V

    goto :goto_61

    .line 324
    :pswitch_4a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_61

    .line 323
    :pswitch_4e
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenPlan(Landroid/content/Context;)V

    goto :goto_61

    .line 322
    :pswitch_52
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRest(Landroid/content/Context;)V

    goto :goto_61

    .line 321
    :pswitch_56
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCheck(Landroid/content/Context;)V

    goto :goto_61

    .line 320
    :pswitch_5a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenProfile(Landroid/content/Context;)V

    goto :goto_61

    .line 319
    :pswitch_5e
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V

    .line 328
    :goto_61
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->renderDots(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->refresh()V

    .line 330
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
    .end packed-switch
.end method

.method private static goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I
    .registers 2

    .line 2001
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    .line 2006
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->PINK:I

    return p0

    .line 2005
    :cond_17
    const p0, -0xbd5a0b

    return p0

    .line 2004
    :cond_1b
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    return p0

    .line 2003
    :cond_1e
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    return p0

    .line 2002
    :cond_21
    sget p0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    return p0
.end method

.method private static gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 16

    .line 1987
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v3, v2, [I

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1989
    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1990
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1991
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1992
    sub-int/2addr p2, v2

    int-to-float p1, p2

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1993
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    new-array p2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p2, v5

    aput-object v1, p2, v6

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1995
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    .line 1996
    const/4 v8, 0x1

    move-object v7, p1

    move v9, v12

    move v10, v12

    move v11, v12

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 1997
    return-object p1
.end method

.method private static heat(F)I
    .registers 4

    .line 2012
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiViews;->heatGradient()[I

    move-result-object v0

    .line 2013
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float p0, p0, v1

    .line 2014
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    float-to-int v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2015
    int-to-float v2, v1

    sub-float/2addr p0, v2

    .line 2016
    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    invoke-static {v2, v0, p0}, Lcom/isaigu/gymapp/ai/AiUi;->mix(IIF)I

    move-result p0

    return p0
.end method

.method private static horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 2057
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2058
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2059
    return-object v0
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 4

    .line 1930
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1931
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1932
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1933
    return-object v0
.end method

.method private static lighten(I)I
    .registers 4

    .line 2027
    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2028
    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3c

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2029
    and-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x3c

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 2030
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private static matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 2077
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2079
    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2080
    return-object v0
.end method

.method private static meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;
    .registers 11

    .line 1845
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1846
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_12

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1847
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v4, 0x1

    invoke-static {p0, p2, v3, v1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1849
    sget p2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v1, ""

    invoke-static {p0, v1, v3, p2, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 1850
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1851
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1852
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1853
    return-object p2
.end method

.method private static mix(IIF)I
    .registers 7

    .line 2020
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2021
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, v1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2022
    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    mul-float p0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 2023
    shl-int/lit8 p1, v0, 0x10

    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private static onStep(Landroid/content/Context;I)V
    .registers 7

    .line 379
    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gez p1, :cond_23

    .line 380
    sget p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne p0, v2, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 381
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 383
    :cond_14
    sget p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lez p0, :cond_22

    if-ge p0, v0, :cond_22

    .line 384
    if-ne p0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    add-int/lit8 v3, p0, -0x1

    :goto_1f
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 386
    :cond_22
    return-void

    .line 388
    :cond_23
    sget p1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-eqz p1, :cond_77

    if-eq p1, v4, :cond_73

    const/4 v4, 0x3

    if-eq p1, v3, :cond_61

    if-eq p1, v4, :cond_5d

    if-eq p1, v1, :cond_56

    if-eq p1, v2, :cond_3d

    const/4 p0, 0x7

    if-eq p1, p0, :cond_36

    goto :goto_7a

    .line 409
    :cond_36
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 410
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    .line 411
    goto :goto_7a

    .line 402
    :cond_3d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result p1

    if-eqz p1, :cond_7a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result p1

    if-lez p1, :cond_7a

    .line 403
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result p1

    if-nez p1, :cond_7a

    .line 404
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startRun(Landroid/content/Context;)V

    .line 405
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_7a

    .line 398
    :cond_56
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginCalibration()V

    .line 399
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 400
    goto :goto_7a

    .line 396
    :cond_5d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->finishRest(Landroid/content/Context;)V

    goto :goto_7a

    .line 392
    :cond_61
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result p0

    if-nez p0, :cond_7a

    .line 393
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_7a

    .line 390
    :cond_73
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_7a

    .line 389
    :cond_77
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 415
    :cond_7a
    :goto_7a
    return-void
.end method

.method static open(Landroid/app/Activity;)V
    .registers 3

    .line 138
    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3d

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

    .line 144
    return-void

    .line 146
    :cond_16
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1f

    .line 147
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    .line 148
    return-void

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

    .line 154
    return-void

    .line 156
    :cond_2d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->beginSetup(Landroid/content/Context;)V

    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    .line 158
    return-void

    .line 160
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    .line 161
    return-void

    .line 139
    :cond_3d
    :goto_3d
    return-void
.end method

.method private static pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 7

    .line 1964
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1965
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1966
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1967
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1968
    const v1, 0xffffff

    and-int/2addr p2, v1

    const/high16 v1, 0x2e000000

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1969
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, -0x67000000

    or-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1970
    const/high16 p2, 0x41d00000    # 26.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1971
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1972
    return-object p1
.end method

.method private static primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 8

    .line 1945
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const/high16 v1, 0x41880000    # 17.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1946
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1947
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v4, v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1949
    const/high16 v1, 0x41e80000    # 29.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1950
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1951
    return-object p1
.end method

.method static refresh()V
    .registers 2

    .line 292
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 293
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3a

    .line 296
    :cond_e
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_20

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_20

    .line 297
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 298
    return-void

    .line 300
    :cond_20
    const/4 v0, 0x0

    :goto_21
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 302
    :try_start_29
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    .line 304
    goto :goto_36

    .line 303
    :catchall_35
    move-exception v1

    .line 300
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 306
    :cond_39
    return-void

    .line 294
    :cond_3a
    :goto_3a
    return-void
.end method

.method private static renderDots(Landroid/content/Context;)V
    .registers 11

    .line 343
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 344
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_b

    .line 345
    return-void

    .line 347
    :cond_b
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_7d

    .line 348
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 349
    sget v4, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    .line 350
    :goto_1c
    if-eqz v4, :cond_31

    .line 351
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v9, v8, v0

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    aput v9, v8, v5

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_36

    .line 353
    :cond_31
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 354
    :goto_36
    if-nez v4, :cond_4a

    .line 355
    sget v5, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v2, v5, :cond_3f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_47

    :cond_3f
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v7, 0x30

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v5

    :goto_47
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 357
    :cond_4a
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 358
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x41000000    # 8.0f

    if-eqz v4, :cond_60

    const/high16 v4, 0x41e00000    # 28.0f

    goto :goto_62

    :cond_60
    const/high16 v4, 0x41000000    # 8.0f

    :goto_62
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 361
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 363
    :cond_7d
    return-void
.end method

.method private static renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 12

    .line 1365
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    .line 1366
    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_12

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isManualContinue()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1367
    :goto_13
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    const/4 v5, 0x0

    const-string v6, "cp"

    if-ne v0, v4, :cond_1c

    move-object v0, v6

    goto :goto_5d

    .line 1368
    :cond_1c
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v0, v4, :cond_44

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPauseReason()Ljava/lang/String;

    move-result-object v0

    const-string v4, "checkpoint"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object v0, v6

    goto :goto_5d

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    .line 1369
    :cond_44
    if-eqz v1, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rest"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    .line 1370
    :cond_5c
    move-object v0, v5

    .line 1371
    :goto_5d
    if-nez v0, :cond_68

    .line 1372
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1373
    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1374
    return-void

    .line 1376
    :cond_68
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1377
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1378
    if-eqz v1, :cond_7a

    .line 1379
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1381
    :cond_7a
    return-void

    .line 1383
    :cond_7b
    if-eqz v1, :cond_8a

    .line 1384
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1385
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1386
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->buildRestCard(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;)V

    .line 1387
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    .line 1388
    return-void

    .line 1390
    :cond_8a
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1391
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1392
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p3

    .line 1393
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1394
    const/high16 p4, 0x42100000    # 36.0f

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, p4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p4

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p3, v1, v5, p4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1395
    sget p4, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/16 v1, 0x18

    invoke-static {p0, p4, v1}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1396
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/high16 v0, 0x41d00000    # 26.0f

    if-eqz p4, :cond_124

    .line 1397
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object p2

    .line 1398
    const-string p4, "\u041a\u0430\u043a \u0435 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0435\u0433\u0430?"

    const-string v1, "How does it feel now?"

    invoke-static {p4, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p4, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1399
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0 = \u043d\u0438\u0449\u043e \u00b7 10 = \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u043e. \u0426\u0435\u043b: "

    const-string v1, "0 = nothing \u00b7 10 = maximal. Target: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u2013"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/high16 v0, 0x41600000    # 14.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p4, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p4

    invoke-static {p4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1401
    iget p4, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget p2, p2, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$26;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$26;-><init>()V

    invoke-static {p0, p4, p2, v0}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object p2

    const/16 p4, 0x16

    .line 1406
    invoke-static {p0, p4}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    .line 1401
    invoke-virtual {p3, p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    goto/16 :goto_1c5

    .line 1408
    :cond_124
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result p4

    .line 1409
    const-string v1, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430"

    const-string v4, "Heart rate reached the ceiling"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-static {p0, v1, v0, v4, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1411
    if-eqz p4, :cond_148

    .line 1412
    const-string p2, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043f\u043e\u0434 \u0437\u043e\u043d\u0430\u0442\u0430 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u0442 30 s. \u041c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0448."

    const-string v0, "HR has been below the recovery level for over 30 s. You may continue."

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_178

    .line 1416
    :cond_148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1414
    const-string v1, "\u0421\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v2, "Stimulation is off. Continue unlocks when HR stays below "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object p2

    iget-wide v4, p2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " \u0437\u0430 30 s."

    const-string v1, " for 30 s."

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_178
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 1411
    invoke-static {p0, p2, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1417
    const-string p2, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v0, "Continue"

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    .line 1418
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1419
    if-eqz p4, :cond_19b

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_19e

    :cond_19b
    const p4, 0x3eb33333    # 0.35f

    :goto_19e
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1420
    new-instance p4, Lcom/isaigu/gymapp/ai/AiUi$27;

    invoke-direct {p4}, Lcom/isaigu/gymapp/ai/AiUi$27;-><init>()V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1426
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x438c0000    # 280.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1427
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, p4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1428
    invoke-virtual {p3, p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1430
    :goto_1c5
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    const/4 p4, -0x2

    invoke-direct {p0, p4, p4, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, p3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    return-void
.end method

.method private static renderVerdict(Landroid/widget/LinearLayout;)V
    .registers 9

    .line 714
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 715
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 716
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v1

    .line 717
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v2

    const-string v3, " \u00b7 "

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v2, :cond_58

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\u0421\u0435\u0441\u0438\u044f\u0442\u0430 \u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0437\u0430\u043f\u043e\u0447\u043d\u0435: "

    const-string v7, "Session cannot start: "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    nop

    :goto_28
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4a

    .line 720
    if-lez v5, :cond_34

    move-object v6, v3

    goto :goto_35

    :cond_34
    move-object v6, v4

    :goto_35
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiText;->screeningCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 722
    :cond_4a
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 723
    goto :goto_af

    :cond_58
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "\u041c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438. "

    const-string v7, "OK to continue. "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 725
    nop

    :goto_6e
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_90

    .line 726
    if-lez v5, :cond_7a

    move-object v6, v3

    goto :goto_7b

    :cond_7a
    move-object v6, v4

    :goto_7b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->warns:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiText;->screeningCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 728
    :cond_90
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    goto :goto_af

    .line 730
    :cond_9e
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    const-string v3, "\u0412\u0441\u0438\u0447\u043a\u043e \u0435 \u043d\u0430\u0440\u0435\u0434 \u2014 \u043c\u043e\u0436\u0435 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438."

    const-string v4, "All clear \u2014 OK to continue."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    :goto_af
    sget-object p0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    if-eqz p0, :cond_d2

    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d2

    .line 734
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 735
    sget-object p0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_cd

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_cf

    :cond_cd
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_cf
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 737
    :cond_d2
    return-void
.end method

.method private static roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 1782
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v1, 0x41d00000    # 26.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p0

    .line 1783
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1784
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1785
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1786
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1787
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1788
    return-object p0
.end method

.method private static rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .line 1976
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1977
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1978
    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1979
    if-lez p3, :cond_13

    .line 1980
    mul-int/lit8 p3, p3, 0x2

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1982
    :cond_13
    return-object v0
.end method

.method private static screenCalib(Landroid/content/Context;)V
    .registers 15

    .line 1016
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 1017
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_12

    const/4 v7, 0x1

    goto :goto_13

    :cond_12
    const/4 v7, 0x0

    .line 1018
    :goto_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v5, "Strength calibration"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u0442\u044a\u043f\u043a\u0430 6 \u043e\u0442 6 \u00b7 \u0446\u0435\u043b: \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v6, "Step 6 of 6 \u00b7 target sensation "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u2013"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1020
    const-string v5, " \u043e\u0442 10"

    const-string v6, " of 10"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1022
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1023
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1024
    new-instance v5, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {v5, p0, v6}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1025
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v8, 0x43960000    # 300.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v6, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1027
    const/16 v9, 0x11

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1028
    const/high16 v10, 0x42700000    # 60.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v12, "0%"

    invoke-static {p0, v12, v10, v11, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1029
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1030
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1031
    const/high16 v11, 0x41500000    # 13.0f

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const-string v13, ""

    invoke-static {p0, v13, v11, v12, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 1032
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1033
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1034
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v9, v12, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1038
    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1039
    if-eqz v7, :cond_ce

    .line 1040
    const-string v6, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e \u0441\u0430\u043c\u0430. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e\u201c, \u043a\u043e\u0433\u0430\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0442\u0438\u0433\u043d\u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v8, "Strength rises smoothly by itself. Tap \u201cEnough\u201d when the sensation reaches the target."

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d6

    .line 1042
    :cond_ce
    const-string v6, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441 \u043f\u043b\u044a\u0437\u0433\u0430\u0447\u0438\u0442\u0435 \u043a\u0430\u043a\u0442\u043e \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u0432\u0434\u0438\u0433\u0430\u0439 \u043e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    const-string v8, "Set the muscles with the sliders as usual, then raise overall strength to the target sensation."

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_d6
    const/high16 v8, 0x41700000    # 15.0f

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 1039
    invoke-static {p0, v6, v8, v9, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1045
    iget v6, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v8, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    const/4 v9, 0x0

    invoke-static {p0, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x12

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1047
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v4, v8, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1048
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1049
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v8, v4, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1051
    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v1, "Start session"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1053
    sget-object v8, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$19;

    move-object v0, v9

    move-object v1, v10

    move-object v2, v5

    move-object v4, v11

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AiUi$19;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    return-void
.end method

.method private static screenCheck(Landroid/content/Context;)V
    .registers 14

    .line 626
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 627
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043f\u0440\u0435\u0434\u0438 \u0441\u0435\u0441\u0438\u044f"

    const-string v3, "Pre-session check"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v2, "\u0421\u0442\u044a\u043f\u043a\u0430 3 \u043e\u0442 6 \u00b7 \u043e\u0442\u0433\u043e\u0432\u0430\u0440\u044f \u0441\u0435 \u0432\u0441\u0435\u043a\u0438 \u043f\u044a\u0442"

    const-string v3, "Step 3 of 6 \u00b7 answered every time"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 631
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 632
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 634
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 635
    const-string v5, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v6, "Contraindications"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    sget-object v5, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_45
    const/4 v9, 0x1

    if-ge v8, v6, :cond_71

    aget-object v10, v5, v8

    .line 637
    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 638
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AiText;->contraindication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_61

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_61

    goto :goto_62

    :cond_61
    const/4 v9, 0x0

    :goto_62
    new-instance v11, Lcom/isaigu/gymapp/ai/AiUi$10;

    invoke-direct {v11, v0, v10, v2}, Lcom/isaigu/gymapp/ai/AiUi$10;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v12, v9, v11}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    .line 647
    :cond_71
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 648
    const-string v6, "\u0414\u043d\u0435\u0441"

    const-string v8, "Today"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    const-string v6, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0438\u043b\u0438 \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v8, "Fever or illness"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$11;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$11;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    const-string v6, "\u0410\u043b\u043a\u043e\u0445\u043e\u043b \u0438\u043b\u0438 \u0441\u0438\u043b\u0435\u043d \u0441\u0442\u0440\u0435\u0441 (48 \u0447)"

    const-string v8, "Alcohol or heavy stress (48 h)"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$12;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$12;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 665
    const-string v6, "\u0418\u0437\u0432\u0435\u0441\u0442\u043d\u0430 \u0430\u0440\u0438\u0442\u043c\u0438\u044f"

    const-string v8, "Known arrhythmia"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$13;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$13;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 673
    const-string v6, "\u041b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430, \u043f\u043e\u043d\u0438\u0436\u0430\u0432\u0430\u0449\u0438 \u043f\u0443\u043b\u0441\u0430"

    const-string v8, "HR-lowering medication"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$14;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$14;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    const-string v6, "\u0425\u0440\u0430\u043d\u0435\u043d\u0435 \u0432 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 2 \u0447"

    const-string v8, "Ate in the last 2 h"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->ateLast2h:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$15;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$15;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    const-string v6, "\u041f\u0438\u043b \u0432\u043e\u0434\u0430 \u043f\u0440\u0435\u0434\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v8, "Drank water before"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hydrated:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$16;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$16;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 697
    const-string v6, "\u041f\u043e\u0447\u0438\u0432\u0430\u043b \u043f\u043e\u043d\u0435 10 \u043c\u0438\u043d"

    const-string v8, "Rested at least 10 min"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v8, v8, Lcom/isaigu/gymapp/ai/AiModel$Screening;->restedLast10min:Z

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$17;

    invoke-direct {v10, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi$17;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Landroid/widget/LinearLayout;)V

    invoke-static {p0, v6, v8, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 705
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 709
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v1, "Measure resting HR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 710
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->renderVerdict(Landroid/widget/LinearLayout;)V

    .line 711
    return-void
.end method

.method private static screenGoal(Landroid/content/Context;)V
    .registers 19

    .line 420
    move-object/from16 v0, p0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u043a\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430 \u0434\u043d\u0435\u0441?"

    const-string v3, "What is today\'s goal?"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v2, "\u0421\u0442\u044a\u043f\u043a\u0430 1 \u043e\u0442 6 \u00b7 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u0441\u0435 \u0438\u0437\u0433\u0440\u0430\u0436\u0434\u0430 \u043e\u0442 \u0446\u0435\u043b\u0442\u0430"

    const-string v3, "Step 1 of 6 \u00b7 the program is built from the goal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    .line 424
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 425
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_33
    const/4 v13, 0x2

    if-ge v8, v6, :cond_141

    aget-object v11, v5, v8

    .line 428
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 429
    const/high16 v14, 0x41900000    # 18.0f

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v10, v12, v9, v15, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 430
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v12, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v13, v13, [I

    .line 432
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiUi;->goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v15

    const/16 v17, 0x0

    aput v15, v13, v17

    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiUi;->goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v15

    invoke-static {v15}, Lcom/isaigu/gymapp/ai/AiUi;->lighten(I)I

    move-result v15

    const/16 v16, 0x1

    aput v15, v13, v16

    invoke-direct {v9, v12, v13}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 433
    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 434
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42200000    # 40.0f

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v9, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v12, 0x41b00000    # 22.0f

    const/4 v13, 0x1

    invoke-static {v0, v7, v12, v9, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 437
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v7, v13, v12, v13, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 438
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiText;->goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41500000    # 13.0f

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {v0, v7, v9, v12, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v11, v7, :cond_d5

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v11, v7, :cond_cc

    goto :goto_d5

    .line 442
    :cond_cc
    const-string v7, "\u041f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v9, "Passive"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_dd

    .line 441
    :cond_d5
    :goto_d5
    const-string v7, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u00b7 \u041f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v9, "Active \u00b7 Passive"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 442
    :goto_dd
    const/high16 v9, 0x41300000    # 11.0f

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 440
    const/4 v13, 0x1

    invoke-static {v0, v7, v9, v12, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 443
    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v9, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 444
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 445
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$1;

    invoke-direct {v7, v1, v11}, Lcom/isaigu/gymapp/ai/AiUi$1;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Goal;)V

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v7, v11, :cond_104

    const/4 v7, 0x1

    goto :goto_105

    :cond_104
    const/4 v7, 0x0

    .line 461
    :goto_105
    if-eqz v7, :cond_110

    .line 462
    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const/16 v9, 0x12

    invoke-static {v0, v7, v9}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_11d

    .line 463
    :cond_110
    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v12, 0x1

    invoke-static {v7, v9, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    .line 461
    :goto_11d
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v7, v12, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 466
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_137

    .line 467
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 469
    :cond_137
    invoke-virtual {v3, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_33

    .line 472
    :cond_141
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 475
    const-string v4, "\u0420\u0435\u0436\u0438\u043c"

    const-string v5, "Mode"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/String;

    .line 476
    const-string v6, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v7, "Active \u00b7 exercises"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 477
    const-string v6, "\u041f\u0430\u0441\u0438\u0432\u043d\u043e \u00b7 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v7, "Passive \u00b7 no movement"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 478
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v6, v7, :cond_17c

    const/4 v6, 0x0

    goto :goto_17d

    :cond_17c
    const/4 v6, 0x1

    :goto_17d
    new-array v7, v13, [Z

    iget-object v8, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 479
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v8

    const/4 v9, 0x0

    aput-boolean v8, v7, v9

    const/4 v8, 0x1

    aput-boolean v8, v7, v8

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$2;

    invoke-direct {v8, v1}, Lcom/isaigu/gymapp/ai/AiUi$2;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 476
    invoke-static {v0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v5

    .line 475
    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 487
    const-string v5, "\u041a\u043e\u0439 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430"

    const-string v6, "Who operates"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/String;

    .line 488
    const-string v7, "\u0422\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v8, "Trainer"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 489
    const-string v7, "\u0421\u0430\u043c\u043e\u0441\u0442\u043e\u044f\u0442\u0435\u043b\u043d\u043e"

    const-string v8, "Self"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 490
    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v7, v9, :cond_1c2

    const/4 v7, 0x0

    goto :goto_1c3

    :cond_1c2
    const/4 v7, 0x1

    :goto_1c3
    const/4 v9, 0x0

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$3;

    invoke-direct {v10, v1}, Lcom/isaigu/gymapp/ai/AiUi$3;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 488
    invoke-static {v0, v6, v7, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v6

    .line 487
    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 498
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v6, v7, :cond_1e0

    .line 499
    const-string v6, "\u0422\u0440\u0435\u043d\u044c\u043e\u0440\u044a\u0442 \u043a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430 \u0438 \u043f\u043e\u0442\u0432\u044a\u0440\u0436\u0434\u0430\u0432\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e."

    const-string v7, "The trainer calibrates and confirms continuation."

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1e8

    .line 501
    :cond_1e0
    const-string v6, "\u041f\u043e-\u0442\u0435\u0441\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438, \u0437\u0430\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u0438 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0438 \u0442\u043e\u0447\u043a\u0438, \u0442\u0430\u0432\u0430\u043d 90%."

    const-string v7, "Tighter limits, mandatory checkpoints, 90% ceiling."

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1e8
    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 498
    const/high16 v9, 0x41400000    # 12.0f

    const/4 v10, 0x0

    invoke-static {v0, v6, v9, v7, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 503
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v6, v7, v9, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 504
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v6

    if-eqz v6, :cond_219

    iget-object v6, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v6

    if-eqz v6, :cond_219

    const/4 v6, 0x1

    goto :goto_21a

    :cond_219
    const/4 v6, 0x0

    .line 507
    :goto_21a
    const/4 v7, -0x2

    if-eqz v6, :cond_229

    .line 508
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v9, v11, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22c

    .line 507
    :cond_229
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 510
    :goto_22c
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 511
    if-eqz v6, :cond_23b

    .line 512
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 514
    :cond_23b
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 517
    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 518
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v3

    if-eqz v3, :cond_2a5

    .line 523
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-ne v3, v4, :cond_261

    .line 524
    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    iput-object v3, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 526
    :cond_261
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 527
    const-string v4, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 (\u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u043f\u0430\u0443\u0437\u0430)"

    const-string v5, "Double impulse (active pause)"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq v5, v6, :cond_275

    const/4 v15, 0x1

    goto :goto_276

    :cond_275
    const/4 v15, 0x0

    :goto_276
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$4;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$4;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {v0, v4, v15, v5}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 534
    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiText;->pauseHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    invoke-static {v0, v1, v5, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 535
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 539
    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    :cond_2a5
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 542
    const-string v1, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v2, "Next"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 543
    return-void
.end method

.method private static screenPlan(Landroid/content/Context;)V
    .registers 20

    .line 925
    move-object/from16 v0, p0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v1

    .line 926
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v2

    .line 927
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v3

    .line 928
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v5, "\u0422\u0432\u043e\u044f\u0442 \u043f\u043b\u0430\u043d"

    const-string v6, "Your plan"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0442\u044a\u043f\u043a\u0430 5 \u043e\u0442 6 \u00b7 "

    const-string v7, "Step 5 of 6 \u00b7 "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v3, v7, :cond_46

    const-string v3, "\u0430\u043a\u0442\u0438\u0432\u043d\u043e"

    const-string v7, "active"

    goto :goto_4a

    :cond_46
    const-string v3, "\u043f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v7, "passive"

    :goto_4a
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v7, v3

    .line 931
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 929
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 933
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v8, "bpm"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 935
    const-string v7, "\u041f\u043e\u043a\u043e\u0439"

    const-string v8, "Rest"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    const-string v9, "\u2014"

    const-string v10, ""

    if-eqz v8, :cond_a8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a9

    :cond_a8
    move-object v8, v9

    :goto_a9
    iget-boolean v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v11, :cond_af

    move-object v11, v5

    goto :goto_b0

    :cond_af
    move-object v11, v10

    :goto_b0
    invoke-static {v0, v4, v7, v8, v11}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v7, "\u041c\u0430\u043a\u0441\u0438\u043c\u0443\u043c"

    const-string v8, "Max"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v4, v7, v8, v5}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-boolean v7, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v7, :cond_104

    .line 938
    iget-wide v7, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_e3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2264 "

    goto :goto_f3

    :cond_e3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-virtual {v2, v11, v12}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u2013"

    :goto_f3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-virtual {v2, v11, v12}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_105

    .line 939
    :cond_104
    move-object v7, v9

    .line 940
    :goto_105
    const-string v8, "\u041a\u043e\u0440\u0438\u0434\u043e\u0440"

    const-string v11, "Corridor"

    invoke-static {v8, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v11, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v11, :cond_113

    move-object v11, v5

    goto :goto_114

    :cond_113
    move-object v11, v10

    :goto_114
    invoke-static {v0, v4, v8, v7, v11}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v7, "\u0422\u0430\u0432\u0430\u043d"

    const-string v8, "Ceiling"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v8, :cond_134

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_134
    iget-boolean v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v8, :cond_139

    goto :goto_13a

    :cond_139
    move-object v5, v10

    :goto_13a
    invoke-static {v0, v4, v7, v9, v5}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v5, "\u0412\u0440\u0435\u043c\u0435"

    const-string v7, "Time"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v7, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v7, v7

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v5, v7, v10}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 945
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 946
    const-string v5, "\u0421\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430"

    const-string v7, "Structure"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    new-instance v5, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 948
    invoke-virtual {v5, v1}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 949
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x42080000    # 34.0f

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 951
    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 952
    iget-object v8, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_190
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_2c1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 953
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 954
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v15}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    move-object/from16 v16, v8

    int-to-double v7, v15

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41700000    # 15.0f

    iget-object v14, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 955
    invoke-static {v14}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v14

    .line 954
    invoke-static {v0, v7, v8, v14, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 956
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 957
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Hz \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u00b5s \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v8, v8, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 958
    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    if-eqz v8, :cond_22b

    .line 959
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  \u2194  "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v7, v7, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Hz"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 961
    :cond_22b
    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v0, v7, v12, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 962
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v12, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v8, v12, :cond_24a

    .line 963
    const-string v8, "\u0431\u043b\u043e\u043a\u043e\u0432\u0435 \u043f\u043e \u0443\u043c\u043e\u0440\u0430"

    const-string v12, "fatigue-driven blocks"

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_252

    .line 964
    :cond_24a
    const-string v8, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    const-string v12, "continuous"

    invoke-static {v8, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_252
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v17

    .line 965
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 966
    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    move-object v8, v10

    iget-wide v9, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    cmpl-double v12, v14, v9

    if-eqz v12, :cond_288

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u2192"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    mul-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_289

    :cond_288
    move-object v9, v8

    :goto_289
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 962
    const/high16 v10, 0x41400000    # 12.0f

    const/4 v12, 0x0

    invoke-static {v0, v7, v10, v9, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 967
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const v12, 0x3df5c28f    # 0.12f

    iget v11, v11, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v11, v11

    iget v14, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-float v14, v14

    div-float/2addr v11, v14

    .line 968
    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v7, v12, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 967
    invoke-virtual {v5, v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    move-object v10, v8

    move-object/from16 v8, v16

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v9, 0x0

    goto/16 :goto_190

    .line 970
    :cond_2c1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 971
    const/16 v5, 0x10

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 974
    const-string v6, "\u0417\u0430\u0449\u0438\u0442\u0430 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v7, "Protection during the session"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 975
    new-instance v6, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v6, v0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 976
    const-string v7, "\u0421\u0442\u043e\u043f \u0441 \u0435\u0434\u0438\u043d \u0434\u043e\u043f\u0438\u0440"

    const-string v8, "One-tap stop"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 977
    iget-boolean v7, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v7, :cond_327

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0422\u0430\u0432\u0430\u043d "

    const-string v9, "Ceiling "

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " \u2192 \u043f\u0430\u0443\u0437\u0430"

    const-string v9, " \u2192 pause"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 980
    :cond_327
    nop

    .line 981
    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_32f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_346

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 982
    iget-object v9, v9, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    sget-object v10, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->FATIGUE_DRIVEN:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    if-ne v9, v10, :cond_343

    const/4 v9, 0x1

    goto :goto_344

    :cond_343
    const/4 v9, 0x0

    :goto_344
    or-int/2addr v8, v9

    .line 983
    goto :goto_32f

    .line 984
    :cond_346
    if-eqz v8, :cond_359

    .line 985
    const-string v7, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043f\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v8, "Rest on muscle fatigue"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-static {v0, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 987
    :cond_359
    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Plan;->pauseOn:Z

    if-eqz v1, :cond_36e

    .line 988
    const-string v1, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v7, "Double impulse"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 990
    :cond_36e
    const-string v1, "3 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u043d\u0438 \u0442\u043e\u0447\u043a\u0438"

    const-string v7, "3 checkpoints"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 991
    iget-boolean v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_398

    iget-boolean v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-nez v1, :cond_398

    .line 992
    const-string v1, "\u041a\u043e\u0440\u0435\u043a\u0446\u0438\u0438 \u043f\u043e \u043f\u0443\u043b\u0441\u0430"

    const-string v7, "HR corrections"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 994
    :cond_398
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 995
    iget-boolean v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->safetyOnly:Z

    if-eqz v1, :cond_3c9

    .line 996
    iget-boolean v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_3ac

    .line 997
    const-string v1, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430 \u2014 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u043b\u0443\u0436\u0438 \u0441\u0430\u043c\u043e \u0437\u0430 \u0442\u0430\u0432\u0430\u043d\u0430."

    const-string v6, "Passive program \u2014 HR only guards the ceiling."

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b4

    .line 998
    :cond_3ac
    const-string v1, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442 \u0438 \u043c\u043e\u0434\u0435\u043b\u044a\u0442 \u043d\u0430 \u0443\u043c\u043e\u0440\u0430\u0442\u0430."

    const-string v6, "No band \u2014 plan and fatigue model only."

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3b4
    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 996
    const/4 v8, 0x0

    invoke-static {v0, v1, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1000
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1001
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1003
    :cond_3c9
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3cf
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1004
    const-string v6, "NO_BAND"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f6

    .line 1005
    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->flag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    :cond_3f6
    goto :goto_3cf

    .line 1008
    :cond_3f7
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1010
    const-string v1, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v2, "Calibrate strength"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1011
    return-void
.end method

.method private static screenProfile(Landroid/content/Context;)V
    .registers 12

    .line 548
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 549
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041f\u0440\u043e\u0444\u0438\u043b"

    const-string v3, "Profile"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v2, "\u0421\u0442\u044a\u043f\u043a\u0430 2 \u043e\u0442 6 \u00b7 \u043e\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0438\u0434\u0432\u0430\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u0438\u044f\u0442 \u043f\u0443\u043b\u0441 \u0438 \u0437\u043e\u043d\u0438\u0442\u0435"

    const-string v3, "Step 2 of 6 \u00b7 max HR and zones come from the profile"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 553
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 554
    const-string v3, "\u041f\u043e\u043b"

    const-string v4, "Sex"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    .line 555
    const-string v6, "\u041c\u044a\u0436"

    const-string v7, "Male"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "\u0416\u0435\u043d\u0430"

    const-string v8, "Female"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 556
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v6, v9, :cond_4f

    const/4 v6, 0x0

    goto :goto_50

    :cond_4f
    const/4 v6, 0x1

    :goto_50
    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$5;

    invoke-direct {v9, v0}, Lcom/isaigu/gymapp/ai/AiUi$5;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 554
    const/4 v10, 0x0

    invoke-static {p0, v5, v6, v10, v9}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 562
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 554
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    const-string v3, "\u041a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v5, "Fitness"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    .line 564
    const-string v6, "\u041d\u0438\u0441\u043a\u0430"

    const-string v9, "Low"

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v9, "Mid"

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "\u0412\u0438\u0441\u043e\u043a\u0430"

    const-string v9, "High"

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 565
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v4

    new-instance v6, Lcom/isaigu/gymapp/ai/AiUi$6;

    invoke-direct {v6, v0}, Lcom/isaigu/gymapp/ai/AiUi$6;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 563
    invoke-static {p0, v5, v4, v10, v6}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 571
    const/16 v4, 0x10

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 563
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 574
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 575
    const-string v3, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v5, "Age"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v10, "years"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$7;

    invoke-direct {v10, v0}, Lcom/isaigu/gymapp/ai/AiUi$7;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v5, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 582
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 575
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    const-string v3, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$8;

    invoke-direct {v9, v0}, Lcom/isaigu/gymapp/ai/AiUi$8;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    const-string v10, "kg"

    invoke-static {p0, v5, v10, v9}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v5

    invoke-static {p0, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 590
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 583
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v3, :cond_126

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_12c

    :cond_126
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v3

    .line 592
    :goto_12c
    const-string v5, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442"

    const-string v9, "Duration"

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v10, v3, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 593
    const-string v9, "\u043c\u0438\u043d\u0443\u0442\u0438"

    const-string v10, "minutes"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$9;

    invoke-direct {v10, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi$9;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V

    invoke-static {p0, v6, v9, v10}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v3

    .line 592
    invoke-static {p0, v5, v3}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 600
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 592
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    const/16 v3, 0x16

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 602
    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v5, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v2

    .line 605
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 606
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 607
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 608
    const-string v4, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u0435\u043d \u043f\u0443\u043b\u0441 \u043f\u043e \u0444\u043e\u0440\u043c\u0443\u043b\u0430"

    const-string v6, "Formula max HR"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41600000    # 14.0f

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v4, v6, v9, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v6, "bpm"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41b00000    # 22.0f

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v2, v4, v6, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    iget v2, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1e2

    .line 613
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    .line 614
    const-string v4, "AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u043f\u044a\u043b\u043d\u043e\u043b\u0435\u0442\u043d\u0438."

    const-string v5, "AI sessions are for adults only."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    invoke-static {p0, v2, v4}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0xc

    .line 615
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 613
    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    :cond_1e2
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 618
    const-string v1, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v2, "Next"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v8}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 619
    sget-object p0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v1, v3, :cond_1fd

    const/4 v7, 0x1

    :cond_1fd
    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 620
    sget-object p0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v0, v3, :cond_207

    goto :goto_20a

    :cond_207
    const v10, 0x3ecccccd    # 0.4f

    :goto_20a
    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 621
    return-void
.end method

.method private static screenReport(Landroid/content/Context;)V
    .registers 13

    .line 1518
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 1519
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041e\u0442\u0447\u0435\u0442"

    const-string v3, "Report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    const-string v0, "Close"

    const-string v2, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const/4 v3, 0x0

    const-string v4, ""

    if-nez v1, :cond_27

    .line 1521
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1523
    return-void

    .line 1525
    :cond_27
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/ai/AiText;->state(Lcom/isaigu/gymapp/ai/AiEngine$State;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1527
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1528
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1529
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1530
    const/16 v7, 0x10

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1531
    sget-object v7, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1533
    const-string v7, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v8, "Share report"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    .line 1534
    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$29;

    invoke-direct {v8, v1}, Lcom/isaigu/gymapp/ai/AiUi$29;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    sget-object v8, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x42580000    # 54.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    sget-object v7, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/View;

    invoke-direct {v8, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1542
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1543
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43960000    # 300.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42680000    # 58.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    sget-object v7, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$30;

    move-object v0, v8

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiUi$30;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    return-void
.end method

.method private static screenRest(Landroid/content/Context;)V
    .registers 18

    .line 742
    move-object/from16 v3, p0

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v2, "Resting heart rate"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, "\u0421\u0442\u044a\u043f\u043a\u0430 4 \u043e\u0442 6 \u00b7 \u0441\u0435\u0434\u043d\u0438 \u0438\u043b\u0438 \u043b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0431\u0435\u0437 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v2, "Step 4 of 6 \u00b7 sit or lie still, no stimulation"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 746
    :goto_2b
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 747
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 749
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 750
    new-instance v6, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-direct {v6, v3, v7}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 751
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x43960000    # 300.0f

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 753
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 754
    const/high16 v11, 0x42800000    # 64.0f

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v13, "--"

    invoke-static {v3, v13, v11, v12, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 755
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 756
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 757
    const-string v12, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v13, "bpm"

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {v3, v12, v7, v13, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    invoke-static {v12}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    const/high16 v12, 0x41700000    # 15.0f

    sget v13, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const-string v14, ""

    invoke-static {v3, v14, v12, v13, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    .line 759
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 760
    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v12, v4, v13, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 761
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v13, v15, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 765
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 766
    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v1, v8, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 767
    const/high16 v8, 0x41a00000    # 20.0f

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {v3, v14, v8, v9, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 768
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 769
    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {v3, v14, v7, v9, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 770
    invoke-static {v3, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v9, v4, v7, v4, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 771
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 773
    const-string v10, "\u041c\u0435\u0434\u0438\u0430\u043d\u0430"

    const-string v13, "Median"

    invoke-static {v10, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v7, v10}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v10

    .line 774
    const-string v13, "\u0420\u0430\u0437\u0441\u0435\u0439\u0432\u0430\u043d\u0435"

    const-string v14, "Spread"

    invoke-static {v13, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v7, v13}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v13

    .line 775
    const-string v14, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b"

    const-string v15, "Interval"

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v7, v14}, Lcom/isaigu/gymapp/ai/AiUi;->statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v14

    .line 776
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 777
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 778
    const/high16 v15, 0x41900000    # 18.0f

    invoke-static {v3, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v7, v4, v15, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 779
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 780
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    move-object/from16 v16, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v15, v4, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 782
    const-string v0, "\u041a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v1, "To the plan"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 784
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v1

    .line 785
    if-eqz v1, :cond_14c

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-nez v0, :cond_14c

    .line 786
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->acquireBand(Landroid/app/Activity;)V

    .line 789
    :cond_14c
    sget-object v14, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v15, Lcom/isaigu/gymapp/ai/AiUi$18;

    move-object v0, v15

    move-object v2, v7

    move-object/from16 v3, p0

    move v4, v5

    move-object v5, v11

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v11, v13

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/isaigu/gymapp/ai/AiUi$18;-><init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method private static screenRun(Landroid/content/Context;)V
    .registers 42

    .line 1118
    move-object/from16 v5, p0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 1119
    const/4 v0, 0x0

    if-nez v1, :cond_d

    .line 1120
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 1121
    return-void

    .line 1123
    :cond_d
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v7

    .line 1124
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v9

    .line 1125
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u043d\u0430 \u0436\u0438\u0432\u043e"

    const-string v6, "live"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v3, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435. \u0421\u0442\u043e\u043f\u044a\u0442 \u0435 \u0432\u0438\u043d\u0430\u0433\u0438 \u043d\u0430\u043b\u0438\u0447\u0435\u043d."

    const-string v4, "AI manages strength, pauses and rests. Stop is always available."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1130
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1131
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1134
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1135
    const/high16 v8, 0x41f00000    # 30.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v11, ""

    const/4 v12, 0x1

    invoke-static {v5, v11, v8, v10, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 1136
    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v5, v11, v13, v10, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1137
    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const/high16 v15, 0x41500000    # 13.0f

    invoke-static {v5, v11, v15, v14, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v14

    .line 1138
    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-static {v5, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    move-object/from16 v20, v9

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v5, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v14, v12, v0, v9, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1139
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v12, v9, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1142
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1143
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1144
    new-instance v9, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    invoke-direct {v9, v5}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-virtual {v9, v7}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 1146
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x41b00000    # 22.0f

    invoke-static {v5, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/4 v0, -0x1

    invoke-direct {v12, v0, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1147
    invoke-static {v5, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1148
    invoke-virtual {v6, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v13, 0x41500000    # 13.0f

    const/4 v15, 0x0

    invoke-static {v5, v11, v13, v12, v15}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    .line 1150
    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v12, v15, v0, v15, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1151
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1152
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3f8ccccd    # 1.1f

    move-object/from16 v27, v12

    const/4 v12, -0x1

    invoke-direct {v0, v15, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1156
    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v5, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    sget v15, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v12, 0x1

    invoke-static {v6, v13, v15, v12}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    new-instance v12, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {v12, v5, v6}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1158
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v13, 0x43870000    # 270.0f

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    move-object/from16 v29, v7

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/16 v13, 0x11

    invoke-direct {v6, v15, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1159
    invoke-virtual {v0, v12, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1161
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1162
    const/high16 v7, 0x42780000    # 62.0f

    sget v15, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v13, "--"

    move-object/from16 v31, v12

    const/4 v12, 0x1

    invoke-static {v5, v13, v7, v15, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    .line 1163
    const/16 v7, 0x11

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1164
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1165
    const-string v7, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v12, "bpm"

    invoke-static {v7, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    move-object/from16 v32, v13

    const/4 v13, 0x0

    const/high16 v15, 0x41600000    # 14.0f

    invoke-static {v5, v7, v15, v12, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v12, 0x41500000    # 13.0f

    const/4 v15, 0x1

    invoke-static {v5, v11, v12, v7, v15}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 1167
    const/16 v12, 0x11

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1168
    const/high16 v15, 0x40c00000    # 6.0f

    invoke-static {v5, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v7, v13, v12, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1169
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1170
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v13, 0x43870000    # 270.0f

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    move-object/from16 v33, v7

    const/16 v7, 0x11

    invoke-direct {v12, v15, v13, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43a00000    # 320.0f

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-direct {v6, v15, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1172
    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v5, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1173
    invoke-virtual {v4, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1176
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1177
    new-instance v15, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    invoke-direct {v15, v5}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1178
    const-string v6, "\u0421\u0438\u043b\u0430"

    const-string v12, "Strength"

    invoke-static {v6, v12}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6, v15}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v34

    .line 1179
    new-instance v12, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    invoke-direct {v12, v5}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1180
    const-string v6, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v7, "Muscle fatigue"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6, v12}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v36

    .line 1181
    new-instance v7, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    invoke-direct {v7, v5}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1182
    const-string v6, "\u0414\u043e\u0437\u0430"

    const-string v13, "Dose"

    invoke-static {v6, v13}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v37

    .line 1183
    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    move-object/from16 v28, v7

    const/4 v7, 0x1

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v5, v11, v13, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    .line 1184
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v13, v7, v6, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1185
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1186
    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    move-object/from16 v26, v12

    const/high16 v12, 0x41500000    # 13.0f

    invoke-static {v5, v11, v12, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 1187
    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v5, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v6, v7, v12, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1188
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1189
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v30, v6

    move-object/from16 v38, v13

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    invoke-direct {v12, v7, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1190
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1191
    invoke-virtual {v4, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43a00000    # 320.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1196
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1197
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1198
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1199
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v13, v12, [I

    sget v35, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    const/16 v19, 0x0

    aput v35, v13, v19

    sget v35, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    const/4 v12, 0x1

    aput v35, v13, v12

    invoke-direct {v6, v7, v13}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1201
    invoke-virtual {v6, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1202
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    const/high16 v4, 0x41880000    # 17.0f

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v5, v11, v4, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    .line 1205
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v13, v4, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1206
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v7, 0x41500000    # 13.0f

    invoke-static {v5, v11, v7, v4, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    .line 1208
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1209
    const/16 v4, 0xe

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    invoke-static {v5, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1213
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1214
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/16 v3, 0xe6

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1215
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1216
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1217
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1219
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1223
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {v5, v11, v0}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    .line 1224
    const/high16 v0, 0x41900000    # 18.0f

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1225
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$20;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$20;-><init>()V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    const-string v2, "\u2212  \u0421\u0438\u043b\u0430"

    const-string v3, "\u2212  Strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 1232
    const/4 v2, 0x2

    invoke-virtual {v4, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1233
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$21;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$21;-><init>()V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    const-string v2, "+  \u0421\u0438\u043b\u0430"

    const-string v3, "+  Strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    invoke-static {v5, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 1240
    const/4 v2, 0x2

    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1241
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$22;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$22;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1247
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    invoke-static {v5, v11, v0}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v11

    .line 1248
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v11, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1249
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$23;

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi$23;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    const-string v0, "\u0421\u0422\u041e\u041f"

    const-string v2, "STOP"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    move-object/from16 v16, v7

    move-object/from16 v18, v12

    const/high16 v7, 0x41b00000    # 22.0f

    const/4 v12, 0x1

    invoke-static {v5, v0, v7, v2, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1256
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1257
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    const/high16 v7, 0x41e80000    # 29.0f

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v12, 0x0

    invoke-static {v2, v7, v12, v12}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1258
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$24;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$24;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x433e0000    # 190.0f

    invoke-static {v5, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    move-object/from16 v21, v13

    const/high16 v13, 0x42680000    # 58.0f

    move-object/from16 v23, v15

    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v7, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    const/4 v2, 0x3

    new-array v7, v2, [Landroid/widget/TextView;

    const/4 v12, 0x0

    aput-object v4, v7, v12

    const/4 v12, 0x1

    aput-object v3, v7, v12

    const/4 v12, 0x2

    aput-object v11, v7, v12

    const/4 v12, 0x0

    :goto_381
    if-ge v12, v2, :cond_3ba

    aget-object v15, v7, v12

    .line 1267
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v15, v11, :cond_38e

    const/high16 v25, 0x437a0000    # 250.0f

    const/high16 v13, 0x437a0000    # 250.0f

    goto :goto_392

    :cond_38e
    const/high16 v25, 0x43200000    # 160.0f

    const/high16 v13, 0x43200000    # 160.0f

    :goto_392
    invoke-static {v5, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    move-object/from16 v25, v3

    move-object/from16 v35, v4

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1268
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v5, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1269
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v25

    move-object/from16 v4, v35

    const/4 v2, 0x3

    const/high16 v13, 0x42680000    # 58.0f

    goto :goto_381

    .line 1271
    :cond_3ba
    move-object/from16 v25, v3

    move-object/from16 v35, v4

    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v4, v13, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43820000    # 260.0f

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v7, 0x42680000    # 58.0f

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    sget-object v15, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v13, Lcom/isaigu/gymapp/ai/AiUi$25;

    move-object v0, v13

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v24, v35

    move-object v4, v14

    move-object/from16 v5, p0

    move-object/from16 v22, v30

    move-object/from16 v30, v6

    move-object v6, v9

    move-object/from16 v17, v28

    move-object/from16 v12, v33

    move-object/from16 v28, v16

    move-object/from16 v7, v29

    move-object/from16 v8, v27

    move-object/from16 v9, v20

    move-object/from16 v10, v32

    move-object/from16 v27, v11

    move-object/from16 v11, v31

    move-object/from16 v16, v26

    move-object/from16 v26, v18

    move-object v14, v13

    move-object/from16 v19, v38

    move-object/from16 v13, v23

    move-object/from16 v39, v14

    move-object/from16 v14, v34

    move-object/from16 v40, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v36

    move-object/from16 v18, v37

    move-object/from16 v20, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v30

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    invoke-direct/range {v0 .. v27}, Lcom/isaigu/gymapp/ai/AiUi$25;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    move-object/from16 v1, v39

    move-object/from16 v0, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    return-void
.end method

.method private static scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 3

    .line 2063
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2064
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 2065
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2066
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2067
    return-object v0
.end method

.method private static sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .line 1922
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1923
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1924
    const v0, 0x3da3d70a    # 0.08f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1925
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1926
    return-object p1
.end method

.method private static segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 16

    .line 1720
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1721
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1722
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1723
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2d
    array-length v3, p1

    if-ge v2, v3, :cond_b0

    .line 1724
    nop

    .line 1725
    if-eqz p3, :cond_3a

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v3, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v3, 0x1

    .line 1726
    :goto_3b
    if-ne v2, p2, :cond_3f

    const/4 v5, 0x1

    goto :goto_40

    :cond_3f
    const/4 v5, 0x0

    .line 1727
    :goto_40
    aget-object v6, p1, v2

    const/high16 v7, 0x41700000    # 15.0f

    if-eqz v5, :cond_49

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    goto :goto_54

    .line 1728
    :cond_49
    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    if-eqz v3, :cond_4e

    goto :goto_54

    :cond_4e
    const/16 v9, 0x55

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v8

    .line 1727
    :goto_54
    invoke-static {p0, v6, v7, v8, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 1729
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1730
    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v6, v8, v10, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1731
    if-eqz v5, :cond_95

    .line 1732
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v10, v9, v1

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v10, v9, v4

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1734
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1735
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1737
    :cond_95
    if-eqz v3, :cond_a1

    if-nez v5, :cond_a1

    .line 1738
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$31;

    invoke-direct {v3, p4, v2}, Lcom/isaigu/gymapp/ai/AiUi$31;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1745
    :cond_a1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1723
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    .line 1747
    :cond_b0
    return-object v0
.end method

.method private static setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    .line 333
    if-eqz p2, :cond_15

    .line 334
    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x42580000    # 54.0f

    .line 335
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_15
    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    sget-object p1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x42680000    # 58.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    return-void
.end method

.method private static shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 18

    .line 1609
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_318

    if-nez v1, :cond_a

    goto/16 :goto_318

    .line 1612
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1613
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v3

    .line 1614
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v4

    .line 1615
    const-string v5, "XEMS AI \u2014 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    .line 1616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1617
    const-string v5, "\u041f\u0443\u043b\u0441 \u043f\u043e\u043a\u043e\u0439 "

    const-string v6, "HR rest "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u00b7 max "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrMax:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1618
    const-string v5, " \u00b7 \u0442\u0430\u0432\u0430\u043d "

    const-string v6, " \u00b7 cap "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1619
    const-string v5, " \u00b7 \u043a\u043e\u0440\u0438\u0434\u043e\u0440 x "

    const-string v6, " \u00b7 corridor x "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    const-string v6, "%.2f"

    const-string v7, "-"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_81

    move-object v5, v7

    goto :goto_91

    :cond_81
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v11, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_91
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string v5, "\u2013"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v9, [Ljava/lang/Object;

    iget-wide v11, v4, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v10, v8

    invoke-static {v5, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1621
    const-string v4, "\u0412\u0440\u0435\u043c\u0435 "

    const-string v5, "Duration "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-lez v6, :cond_c9

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v4

    goto :goto_cd

    :cond_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_cd
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getStartMs()J

    move-result-wide v10

    sub-long/2addr v4, v10

    long-to-double v4, v4

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    const-string v4, " \u00b7 \u0434\u043e\u0437\u0430 "

    const-string v5, " \u00b7 dose "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getQUsed()D

    move-result-wide v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v10

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v6

    iget-wide v14, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->qPlan:D

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "% \u043e\u0442 \u043f\u043b\u0430\u043d\u0430"

    const-string v5, "% of plan"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    const-string v4, " \u00b7 \u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 "

    const-string v5, " \u00b7 corridor "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_12c

    move-object v4, v7

    goto :goto_147

    :cond_12c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v5

    mul-double v5, v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    const-string v4, " \u00b7 HRR60 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_15b

    move-object v4, v7

    goto :goto_167

    :cond_15b
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1625
    const-string v4, " \u00b7 kcal "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v4

    const-string v6, ""

    const-wide/16 v10, 0x0

    cmpl-double v12, v4, v10

    if-ltz v12, :cond_192

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string v4, " (\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v5, " (active "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getActiveKcal()D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1627
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1dd

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v5, [Ljava/lang/Object;

    .line 1628
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->getVo2max()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiEnergy;->getWeightKg()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1627
    const-string v7, ", VO2max %.0f, %.0f kg"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1de

    .line 1628
    :cond_1dd
    nop

    .line 1627
    :goto_1de
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1629
    const-string v4, ")\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    const-string v4, "L1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " L2 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " L3 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1631
    const-string v6, " L4 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " u "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/ai/AiEngine;->getLCount(I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " cap "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCapHits()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1632
    const-string v10, " flags "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\n\nblocks: #,phase,t_block,t_rest,q,F_end,dHR,R,D,tau,V\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1633
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_24a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2c4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 1634
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v13, 0xb

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 1635
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    iget-object v14, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    aput-object v14, v13, v9

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tBlockS:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v13, v5

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tRestS:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v13, v4

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->q:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v13, v6

    iget-wide v14, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->fEnd:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v13, v7

    const/4 v14, 0x6

    iget-wide v4, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->dHr:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v13, v14

    const/4 v4, 0x7

    iget-wide v6, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->r:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v13, v4

    const/16 v4, 0x8

    iget-wide v6, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v13, v4

    const/16 v4, 0x9

    iget-wide v6, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->tauHr:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v13, v4

    iget-wide v6, v11, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->v:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v13, v3

    .line 1634
    const-string v4, "%d,%s,%.0f,%.0f,%.0f,%.1f,%.1f,%.2f,%.2f,%.1f,%.2f%n"

    invoke-static {v12, v4, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1636
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x5

    goto :goto_24a

    .line 1637
    :cond_2c4
    const-string v4, "\nlog:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1639
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1640
    goto :goto_2d1

    .line 1641
    :cond_2e4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1642
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    const-string v3, "XEMS AI \u043e\u0442\u0447\u0435\u0442"

    const-string v4, "XEMS AI report"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1644
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    :try_start_306
    const-string v2, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v3, "Share report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_315
    .catchall {:try_start_306 .. :try_end_315} :catchall_316

    .line 1648
    goto :goto_317

    .line 1647
    :catchall_316
    move-exception v0

    .line 1649
    :goto_317
    return-void

    .line 1610
    :cond_318
    :goto_318
    return-void
.end method

.method static show()V
    .registers 1

    .line 166
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 167
    return-void

    .line 169
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 171
    goto :goto_17

    .line 170
    :catchall_16
    move-exception v0

    .line 172
    :goto_17
    return-void
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 3

    .line 186
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 187
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->buildShell(Landroid/app/Activity;)V

    .line 189
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 190
    return-void
.end method

.method private static statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 10

    .line 1857
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1858
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1859
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v2, v5, v1, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1860
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v3, v1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1861
    sget p2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const-string v1, "\u2014"

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v1, v2, p2, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 1862
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1863
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1864
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5a

    .line 1865
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1867
    :cond_5a
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1868
    return-object p2
.end method

.method private static stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I
    .registers 3

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    if-eq p0, v1, :cond_13

    .line 179
    const/4 p0, 0x0

    return p0

    .line 178
    :cond_13
    const/4 p0, 0x5

    return p0

    .line 177
    :cond_15
    const/4 p0, 0x4

    return p0

    .line 176
    :cond_17
    return v1
.end method

.method private static stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;
    .registers 11

    .line 1751
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1752
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1753
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1754
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1755
    const-string v1, "\u2212"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1756
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$32;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$32;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1762
    const-string v2, "+"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1763
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$33;

    invoke-direct {v3, p3}, Lcom/isaigu/gymapp/ai/AiUi$33;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1769
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p3

    .line 1770
    const/16 v3, 0x11

    invoke-virtual {p3, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1771
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v6, 0x42080000    # 34.0f

    invoke-static {p0, p1, v6, v5, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 1772
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 1773
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1774
    sget p1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v4, 0x0

    invoke-static {p0, p2, v3, p1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1775
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1776
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v4, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1777
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p3

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-direct {p1, p3, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1778
    return-object v0
.end method

.method private static styleSideButton()V
    .registers 4

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 118
    return-void

    .line 120
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 122
    :goto_11
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 123
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 124
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 125
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_28

    const/high16 v3, 0x40400000    # 3.0f

    goto :goto_2a

    :cond_28
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2a
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    if-eqz v0, :cond_33

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_35

    :cond_33
    const/high16 v0, 0x33000000

    :goto_35
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method private static varargs tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .line 1893
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1894
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1895
    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_44

    .line 1896
    const/4 v2, 0x0

    :goto_19
    array-length v4, p2

    if-ge v2, v4, :cond_43

    .line 1897
    aget-object v4, p2, v2

    if-eqz p1, :cond_23

    const/high16 v5, 0x41400000    # 12.0f

    goto :goto_25

    :cond_23
    const/high16 v5, 0x41600000    # 14.0f

    :goto_25
    if-eqz p1, :cond_2a

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    goto :goto_2c

    :cond_2a
    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    :goto_2c
    invoke-static {p0, v4, v5, v6, p1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1898
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v7, v1, v7

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1896
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1900
    :cond_43
    return-object v0

    :array_44
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
    .registers 6

    .line 2034
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2035
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2036
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2037
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2038
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2039
    if-eqz p4, :cond_1f

    .line 2040
    const/4 p0, 0x0

    const-string p1, "sans-serif-medium"

    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2042
    :cond_1f
    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 2089
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    .line 2091
    goto :goto_a

    .line 2090
    :catchall_9
    move-exception p0

    .line 2092
    :goto_a
    return-void
.end method

.method private static toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;
    .registers 9

    .line 1792
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1793
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1794
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1795
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {p0, p1, v2, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1797
    new-instance p1, Landroid/widget/Switch;

    invoke-direct {p1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1798
    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1799
    new-instance p0, Lcom/isaigu/gymapp/ai/AiUi$34;

    invoke-direct {p0, p3}, Lcom/isaigu/gymapp/ai/AiUi$34;-><init>(Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)V

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1805
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1806
    return-object v0
.end method

.method private static updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 12

    .line 1485
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-nez v0, :cond_5

    .line 1486
    return-void

    .line 1488
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v0

    .line 1489
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v2

    .line 1490
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1f

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v8, v4, v6

    if-gez v8, :cond_1f

    const/4 v4, 0x1

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 1491
    :goto_20
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    if-eqz v4, :cond_45

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v3, "bpm"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    :cond_45
    const-string v2, ""

    :goto_47
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 1493
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestOverS(J)D

    move-result-wide p0

    .line 1494
    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1495
    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    sget-object p2, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_86

    .line 1497
    const-string p0, "\u0414\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 \u2014 AI \u0449\u0435 \u0437\u0430\u043f\u043e\u0447\u043d\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e \u0438 \u0449\u0435 \u0432\u0434\u0438\u0433\u043d\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430. \u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u043f\u043b\u0430\u043d\u0430 \u0441\u0442\u043e\u0438."

    const-string p1, "Long pause \u2014 AI starts softer and ramps back over a few pulses. The plan clock is on hold."

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8e

    .line 1499
    :cond_86
    const-string p0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d\u0438. \u041d\u0430\u0442\u0438\u0441\u043d\u0438, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u0438 \u0432 \u043f\u043e\u0437\u0438\u0446\u0438\u044f."

    const-string p1, "Muscles and HR have recovered. Tap when in position."

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1496
    :goto_8e
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    return-void

    .line 1503
    :cond_92
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide p1

    .line 1504
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double v5, v0, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    div-double/2addr v0, v3

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1505
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430 "

    const-string v0, "Muscle fatigue "

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 1507
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigue()D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getFatigueMax()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1508
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestHrOk()Z

    move-result p2

    if-nez p2, :cond_112

    .line 1509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u00b7 \u0447\u0430\u043a\u0430\u043c \u043f\u0443\u043b\u0441\u044a\u0442 \u0434\u0430 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v0, " \u00b7 waiting for HR below "

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object p1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object p0

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xRec:D

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1512
    :cond_112
    sget-object p0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". \u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0431\u043b\u043e\u043a \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u0441\u0430\u043c\u043e \u0440\u044a\u0447\u043d\u043e."

    const-string v0, ". The next block starts only by hand."

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1513
    return-void
.end method

.method private static vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 2051
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2052
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2053
    return-object v0
.end method

.method private static weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .line 2071
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2072
    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2073
    return-object v0
.end method
