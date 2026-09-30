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
        Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;,
        Lcom/isaigu/gymapp/ai/AiUi$FlowRow;
    }
.end annotation


# static fields
.field private static final BTN_TAG:Ljava/lang/String; = "xems_ai_button"

.field private static final HEART_BTN_ID:I = 0x7f090297

.field private static final SETUP_STEPS:I = 0x5

.field private static final SIDEBAR_ID:I = 0x7f090155

.field static final STEP_CALIB:I = 0x4

.field static final STEP_CLIENT:I = 0x1

.field static final STEP_GOAL:I = 0x0

.field static final STEP_PLAN:I = 0x3

.field static final STEP_REPORT:I = 0x6

.field static final STEP_REST:I = 0x2

.field static final STEP_RUN:I = 0x5

.field private static backBtn:Landroid/widget/TextView;

.field private static body:Landroid/widget/FrameLayout;

.field private static dialog:Landroid/app/Dialog;

.field private static dotsView:Landroid/widget/LinearLayout;

.field private static footer:Landroid/widget/LinearLayout;

.field private static healthOk:Z

.field private static healthOpen:Z

.field private static primaryBtn:Landroid/widget/TextView;

.field private static profileOpen:Z

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
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
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
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->closeReport()V

    return-void
.end method

.method static synthetic access$1000(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 6

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .registers 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->profileOpen:Z

    return p0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 38
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    return p0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static attachButton(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 71
    if-nez p0, :cond_4

    .line 113
    :cond_3
    :goto_3
    return-void

    .line 74
    :cond_4
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 78
    check-cast v0, Landroid/widget/LinearLayout;

    .line 79
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 80
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    goto :goto_3

    .line 84
    :cond_27
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->applyTheme(Landroid/content/Context;)V

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
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

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

    const/4 v1, -0x1

    const/4 v6, 0x0

    const v7, 0x3da3d70a    # 0.08f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 103
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 104
    const v6, 0x7f090297

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 105
    if-eqz v6, :cond_96

    .line 106
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 107
    if-ltz v6, :cond_96

    .line 108
    add-int/lit8 v1, v6, 0x1

    .line 111
    :cond_96
    invoke-virtual {v0, v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method private static banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .registers 9

    .prologue
    const v5, 0xffffff

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41500000    # 13.0f

    .line 1927
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1928
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1929
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1930
    and-int v2, p1, v5

    const/high16 v3, 0x2a000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1931
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p1, v5

    const/high16 v4, -0x78000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1932
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1933
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1934
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

    .line 1888
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1889
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1890
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1891
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v7, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1892
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1893
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1894
    const/high16 v2, 0x41f00000    # 30.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p3, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1895
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6b

    .line 1896
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p4, v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1897
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1898
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1900
    :cond_6b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1901
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1902
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_82

    .line 1903
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1905
    :cond_82
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1906
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

    .line 1456
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v4

    .line 1457
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1458
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1459
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

    .line 1460
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/16 v3, 0x18

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1461
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1462
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v0, p0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    .line 1463
    sget-object v7, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-eqz v4, :cond_13f

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    move v3, v0

    :goto_4f
    if-nez v4, :cond_144

    move v0, v1

    :goto_52
    invoke-virtual {v7, v3, v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setColor(IZ)V

    .line 1464
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1466
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1467
    const-string v3, ""

    const/high16 v7, 0x42300000    # 44.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v3, v7, v8, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    .line 1468
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1469
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1470
    const-string v3, ""

    const/high16 v7, 0x41600000    # 14.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v3, v7, v8, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    .line 1471
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1472
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1473
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1474
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1475
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1476
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1477
    if-eqz v4, :cond_147

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u0431\u043b\u043e\u043a"

    const-string v3, "Ready for the next block"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1478
    :goto_c5
    const/high16 v7, 0x41d00000    # 26.0f

    .line 1479
    if-eqz v4, :cond_152

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    .line 1477
    :goto_cb
    invoke-static {p0, v3, v7, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1480
    const-string v0, ""

    const/high16 v1, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    .line 1481
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1482
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1483
    const-string v0, "\u25b6  \u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0431\u043b\u043e\u043a"

    const-string v1, "\u25b6  Next block"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1484
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1485
    if-eqz v4, :cond_156

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_101
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1486
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$28;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$28;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1492
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1493
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1494
    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43dc0000    # 440.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    return-void

    .line 1463
    :cond_13f
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    move v3, v0

    goto/16 :goto_4f

    :cond_144
    move v0, v2

    goto/16 :goto_52

    .line 1478
    :cond_147
    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435"

    const-string v3, "Rest between blocks"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_c5

    .line 1479
    :cond_152
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto/16 :goto_cb

    .line 1485
    :cond_156
    const v0, 0x3eb33333    # 0.35f

    goto :goto_101
.end method

.method private static buildShell(Landroid/app/Activity;)V
    .registers 13

    .prologue
    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 195
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiViews;->applyTheme(Landroid/content/Context;)V

    .line 196
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 198
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 200
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 204
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 210
    const-string v2, "AI"

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    invoke-static {p0, v2, v3, v4, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 211
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v6, v5, v7

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v6, v5, v8

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 214
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 215
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 221
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v3, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    .line 222
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    .line 223
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    .line 227
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 229
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    const-string v2, "\u2715"

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v2, v11, v3, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 231
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
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

    .line 233
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    .line 238
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 240
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 242
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    .line 245
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 246
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 247
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 250
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_1ab

    .line 252
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 254
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

    .line 255
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 256
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 257
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 258
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 259
    const v2, 0x3f3851ec    # 0.72f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 261
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 263
    :cond_1ab
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 264
    return-void
.end method

.method private static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v5, 0x41a00000    # 20.0f

    .line 1953
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1954
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1955
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1956
    return-object v0
.end method

.method private static centered(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 2062
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2063
    return-object p0
.end method

.method private static chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 1920
    const/high16 v0, 0x41500000    # 13.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1921
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1922
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

    .line 1923
    return-object v0
.end method

.method private static closeReport()V
    .registers 4

    .prologue
    .line 287
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 288
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    .line 290
    :try_start_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    .line 294
    :goto_9
    return-void

    .line 291
    :catch_a
    move-exception v0

    .line 292
    const-string v1, "ai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1827
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v5, v2

    .line 1828
    :goto_7
    const/16 v0, 0xa

    if-gt v5, v0, :cond_92

    .line 1830
    if-lt v5, p1, :cond_68

    if-gt v5, p2, :cond_68

    move v0, v1

    .line 1832
    :goto_10
    int-to-float v3, v5

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->heat(F)I

    move-result v7

    .line 1833
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    if-eqz p3, :cond_6a

    const/high16 v3, 0x41a00000    # 20.0f

    move v4, v3

    :goto_21
    if-eqz v0, :cond_6e

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    :goto_25
    invoke-static {p0, v8, v4, v3, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1834
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1835
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1836
    if-eqz v0, :cond_71

    .line 1837
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1842
    :goto_38
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1843
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1844
    if-eqz p3, :cond_48

    .line 1845
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$35;

    invoke-direct {v0, p3, v5}, Lcom/isaigu/gymapp/ai/AiUi$35;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1852
    :cond_48
    if-eqz p3, :cond_8a

    const/high16 v0, 0x42680000    # 58.0f

    :goto_4c
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1853
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1854
    if-lez v5, :cond_90

    if-eqz p3, :cond_8d

    const/high16 v0, 0x41000000    # 8.0f

    :goto_5b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_5f
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1855
    invoke-virtual {v6, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1828
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_68
    move v0, v2

    .line 1830
    goto :goto_10

    .line 1833
    :cond_6a
    const/high16 v3, 0x41700000    # 15.0f

    move v4, v3

    goto :goto_21

    :cond_6e
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto :goto_25

    .line 1839
    :cond_71
    const/16 v0, 0x22

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1840
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/16 v8, 0x88

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v7

    invoke-virtual {v4, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_38

    .line 1852
    :cond_8a
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_4c

    .line 1854
    :cond_8d
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_5b

    :cond_90
    move v0, v2

    goto :goto_5f

    .line 1857
    :cond_92
    return-object v6
.end method

.method private static dismiss()V
    .registers 1

    .prologue
    .line 297
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 299
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_15

    .line 303
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 304
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 306
    return-void

    .line 300
    :catch_15
    move-exception v0

    goto :goto_9
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 2100
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
    .line 888
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v1, v2, :cond_f

    .line 897
    :cond_e
    :goto_e
    return-void

    .line 892
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

    .line 895
    :cond_21
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 896
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_e
.end method

.method private static ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x41d00000    # 26.0f

    .line 1971
    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1972
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1973
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1975
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1976
    return-object v0
.end method

.method private static go(I)V
    .registers 5

    .prologue
    .line 326
    sput p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    .line 327
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 329
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 330
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const-string v2, "Back"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    .line 332
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    .line 334
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    packed-switch p0, :pswitch_data_68

    .line 342
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V

    .line 344
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->renderDots(Landroid/content/Context;)V

    .line 345
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->refresh()V

    .line 346
    return-void

    .line 336
    :pswitch_50
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V

    goto :goto_49

    .line 337
    :pswitch_54
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenClient(Landroid/content/Context;)V

    goto :goto_49

    .line 338
    :pswitch_58
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRest(Landroid/content/Context;)V

    goto :goto_49

    .line 339
    :pswitch_5c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenPlan(Landroid/content/Context;)V

    goto :goto_49

    .line 340
    :pswitch_60
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_49

    .line 341
    :pswitch_64
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V

    goto :goto_49

    .line 335
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_50
        :pswitch_54
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
    .end packed-switch
.end method

.method private static goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I
    .registers 3

    .prologue
    .line 2017
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 2022
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->PINK:I

    :goto_d
    return v0

    .line 2018
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    goto :goto_d

    .line 2019
    :pswitch_11
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    goto :goto_d

    .line 2020
    :pswitch_14
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_d

    .line 2021
    :pswitch_17
    const v0, -0xbd5a0b

    goto :goto_d

    .line 2017
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method private static gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 2003
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v6, [I

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v4, v3, v5

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    aput v4, v3, v1

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2005
    int-to-float v0, p2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2006
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2007
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2008
    add-int/lit8 v0, p2, -0x2

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2009
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2011
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2012
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 2013
    return-object v0
.end method

.method private static hasHealthFlag(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 560
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 561
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 565
    :goto_21
    return v1

    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v0, :cond_3d

    :cond_3a
    move v0, v1

    :goto_3b
    move v1, v0

    goto :goto_21

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private static heat(F)I
    .registers 5

    .prologue
    .line 2028
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiViews;->heatGradient()[I

    move-result-object v0

    .line 2029
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 2030
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    float-to-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2031
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 2032
    aget v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    invoke-static {v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->mix(IIF)I

    move-result v0

    return v0
.end method

.method private static horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 2073
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2074
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2075
    return-object v0
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 1946
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1947
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1948
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1949
    return-object v0
.end method

.method private static lighten(I)I
    .registers 5

    .prologue
    const/16 v3, 0xff

    .line 2043
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x3c

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2044
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x3c

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2045
    and-int/lit16 v2, p0, 0xff

    add-int/lit8 v2, v2, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2046
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
    .line 2093
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2095
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2096
    return-object v0
.end method

.method private static meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v1, 0x0

    .line 1861
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1862
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4c

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_14
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1863
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v6, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1865
    const-string v0, ""

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v0, v6, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1866
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1867
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1868
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1869
    return-object v0

    :cond_4c
    move v0, v1

    .line 1862
    goto :goto_14
.end method

.method private static mix(IIF)I
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2036
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    sub-float v1, v3, p2

    mul-float/2addr v0, v1

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2037
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    sub-float v2, v3, p2

    mul-float/2addr v1, v2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2038
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    and-int/lit16 v3, p1, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2039
    const/high16 v3, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private static onStep(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 395
    if-gez p1, :cond_28

    .line 396
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v1, v2, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 399
    :cond_12
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lez v1, :cond_22

    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v1, v3, :cond_22

    .line 400
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    :goto_1f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 430
    :cond_22
    :goto_22
    return-void

    .line 400
    :cond_23
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 404
    :cond_28
    sget v1, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    packed-switch v1, :pswitch_data_80

    :pswitch_2d
    goto :goto_22

    .line 405
    :pswitch_2e
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 407
    :pswitch_32
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-nez v0, :cond_22

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    if-nez v0, :cond_48

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-eqz v0, :cond_22

    .line 408
    :cond_48
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_22

    .line 409
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 412
    :pswitch_57
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->finishRest(Landroid/content/Context;)V

    goto :goto_22

    .line 414
    :pswitch_5b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginCalibration()V

    .line 415
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 418
    :pswitch_62
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v0

    if-lez v0, :cond_22

    .line 419
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-nez v0, :cond_22

    .line 420
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startRun(Landroid/content/Context;)V

    .line 421
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_22

    .line 425
    :pswitch_7b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->closeReport()V

    goto :goto_22

    .line 404
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_32
        :pswitch_57
        :pswitch_5b
        :pswitch_62
        :pswitch_2d
        :pswitch_7b
    .end packed-switch
.end method

.method static open(Landroid/app/Activity;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 137
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 163
    :cond_9
    :goto_9
    return-void

    .line 140
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_17

    .line 142
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9

    .line 145
    :cond_17
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_20

    .line 146
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9

    .line 149
    :cond_20
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_43

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2e

    .line 152
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 155
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->beginSetup(Landroid/content/Context;)V

    .line 156
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiUi;->profileOpen:Z

    .line 157
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    .line 158
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->hasHealthFlag(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    .line 159
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9

    .line 162
    :cond_43
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9
.end method

.method private static pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .prologue
    const v5, 0xffffff

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x41600000    # 14.0f

    .line 1980
    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1981
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1982
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1983
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1984
    and-int v2, p2, v5

    const/high16 v3, 0x2e000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1985
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p2, v5

    const/high16 v4, -0x67000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1986
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1987
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1988
    return-object v0
.end method

.method private static primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 1961
    const/high16 v0, 0x41880000    # 17.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    invoke-static {p0, p1, v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1962
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1963
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v5, v3, v4

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v4, v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1965
    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1966
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1967
    return-object v0
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 309
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 310
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 323
    :cond_f
    :goto_f
    return-void

    .line 313
    :cond_10
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_22

    .line 314
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_f

    .line 317
    :cond_22
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 319
    :try_start_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_3b

    .line 317
    :goto_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 320
    :catch_3b
    move-exception v0

    goto :goto_37
.end method

.method private static renderDots(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v10, 0x5

    const/4 v4, 0x1

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v5, 0x0

    .line 359
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 360
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lt v0, v10, :cond_f

    .line 379
    :cond_e
    return-void

    :cond_f
    move v6, v5

    .line 363
    :goto_10
    if-ge v6, v10, :cond_e

    .line 364
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 365
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v6, v0, :cond_6b

    move v3, v4

    .line 366
    :goto_1c
    if-eqz v3, :cond_6d

    .line 367
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v9, v8, v5

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    aput v9, v8, v4

    invoke-direct {v0, v2, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v2, v0

    .line 370
    :goto_31
    if-nez v3, :cond_3c

    .line 371
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v6, v0, :cond_74

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    :goto_39
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 373
    :cond_3c
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 374
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_7d

    const/high16 v0, 0x41e00000    # 28.0f

    :goto_4f
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 376
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 377
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10

    :cond_6b
    move v3, v5

    .line 365
    goto :goto_1c

    .line 369
    :cond_6d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v2, v0

    goto :goto_31

    .line 371
    :cond_74
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v8, 0x30

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    goto :goto_39

    :cond_7d
    move v0, v1

    .line 375
    goto :goto_4f
.end method

.method private static renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 14

    .prologue
    const/high16 v6, 0x42100000    # 36.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const/high16 v8, 0x41d00000    # 26.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1381
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 1382
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_29

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isManualContinue()Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 1383
    :goto_17
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v4, :cond_2b

    const-string v3, "cp"

    .line 1387
    :goto_1d
    if-nez v3, :cond_72

    .line 1388
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1389
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1448
    :cond_28
    :goto_28
    return-void

    :cond_29
    move v0, v2

    .line 1382
    goto :goto_17

    .line 1384
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

    .line 1385
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

    .line 1386
    :cond_70
    const/4 v3, 0x0

    goto :goto_1d

    .line 1392
    :cond_72
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1393
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1394
    if-eqz v0, :cond_28

    .line 1395
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    goto :goto_28

    .line 1399
    :cond_85
    if-eqz v0, :cond_94

    .line 1400
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1401
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1402
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->buildRestCard(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;)V

    .line 1403
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    goto :goto_28

    .line 1406
    :cond_94
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1407
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1408
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1409
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1410
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1411
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/16 v5, 0x18

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1412
    const-string v0, "cp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 1413
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    .line 1414
    const-string v3, "\u041a\u0430\u043a \u0435 \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0435\u0433\u0430?"

    const-string v5, "How does it feel now?"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v3, v8, v5, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1415
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

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v1, v3, v5, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1417
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$26;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$26;-><init>()V

    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x16

    .line 1422
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1417
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1446
    :goto_12c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_28

    .line 1424
    :cond_13a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v3

    .line 1425
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0434\u043e\u0441\u0442\u0438\u0433\u043d\u0430 \u0442\u0430\u0432\u0430\u043d\u0430"

    const-string v5, "Heart rate reached the ceiling"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-static {p0, v0, v8, v5, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1427
    if-eqz v3, :cond_1a7

    .line 1428
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043f\u043e\u0434 \u0437\u043e\u043d\u0430\u0442\u0430 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u0442 30 s. \u041c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0448."

    const-string v1, "HR has been below the recovery level for over 30 s. You may continue."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    :goto_15d
    const/high16 v1, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 1427
    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1433
    const-string v0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1434
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1435
    if-eqz v3, :cond_1db

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_17f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1436
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$27;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$27;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1443
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1444
    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12c

    .line 1432
    :cond_1a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0421\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v5, "Stimulation is off. Continue unlocks when HR stays below "

    .line 1430
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1432
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

    goto :goto_15d

    .line 1435
    :cond_1db
    const v0, 0x3eb33333    # 0.35f

    goto :goto_17f
.end method

.method private static roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1798
    const/high16 v0, 0x41d00000    # 26.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1799
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1800
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1801
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1802
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1803
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1804
    return-object v0
.end method

.method private static rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .prologue
    .line 1992
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1993
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1994
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1995
    if-lez p3, :cond_13

    .line 1996
    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1998
    :cond_13
    return-object v0
.end method

.method private static screenCalib(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/16 v13, 0x11

    const/4 v0, 0x1

    const/high16 v12, 0x43960000    # 300.0f

    const/4 v6, 0x0

    .line 998
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 999
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_128

    move v7, v0

    .line 1000
    :goto_15
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Strength calibration"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0426\u0435\u043b: \u0443\u0441\u0435\u0449\u0430\u043d\u0435 "

    const-string v5, "Target sensation "

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

    .line 1002
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 1004
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1005
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1006
    new-instance v2, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1007
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v1, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 1009
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1010
    const-string v1, "0%"

    const/high16 v4, 0x42700000    # 60.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v1, v4, v10, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1011
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1012
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1013
    const-string v4, ""

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v4, v10, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1014
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1015
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1016
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 1020
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v9, v5, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1021
    if-eqz v7, :cond_12b

    .line 1022
    const-string v5, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e \u0441\u0430\u043c\u0430. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e\u201c, \u043a\u043e\u0433\u0430\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0442\u0438\u0433\u043d\u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v10, "Strength rises smoothly by itself. Tap \u201cEnough\u201d when the sensation reaches the target."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1024
    :goto_d0
    const/high16 v10, 0x41700000    # 15.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 1021
    invoke-static {p0, v5, v10, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1027
    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    const/4 v11, 0x0

    invoke-static {p0, v5, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v5

    const/16 v10, 0x12

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1029
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v6, v10, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1030
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1031
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1032
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1033
    const-string v6, "\u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v8, "Start session"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1035
    sget-object v8, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$19;

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AiUi$19;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    return-void

    :cond_128
    move v7, v6

    .line 999
    goto/16 :goto_15

    .line 1024
    :cond_12b
    const-string v5, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441 \u043f\u043b\u044a\u0437\u0433\u0430\u0447\u0438\u0442\u0435 \u043a\u0430\u043a\u0442\u043e \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u0432\u0434\u0438\u0433\u0430\u0439 \u043e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    const-string v10, "Set the muscles with the sliders as usual, then raise overall strength to the target sensation."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d0
.end method

.method private static screenClient(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/16 v13, 0x12

    const/16 v12, 0xe

    const/16 v10, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    .line 571
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v5, "Client"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 575
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 576
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->profileOpen:Z

    if-nez v0, :cond_1bb

    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v0, v13, :cond_1bb

    .line 577
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 578
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 579
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_197

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "low fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v9, :cond_1b1

    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_58
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u0433."

    const-string v9, " y"

    .line 583
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " kg \u00b7 "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 582
    invoke-static {p0, v0, v1, v8, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v1, "Edit"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 586
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$6;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x42400000    # 48.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    :goto_cb
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 636
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-nez v0, :cond_2ba

    .line 637
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    if-eqz v0, :cond_2aa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0411\u0435\u0437 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f, \u0434\u043e\u0431\u0440\u0435 \u0435 \u0434\u043d\u0435\u0441"

    const-string v7, "No contraindications, feeling fine today"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 641
    :goto_fb
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$11;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    const-string v0, "\u0418\u043c\u0430 \u043d\u0435\u0449\u043e\u2026"

    const-string v1, "Something is not fine\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v0, v1, v7, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 650
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 651
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v2, v1, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 652
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$12;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    :goto_13d
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v6

    .line 709
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-nez v0, :cond_35c

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    if-nez v0, :cond_156

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-eqz v0, :cond_35c

    :cond_156
    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-lt v0, v13, :cond_35c

    move v1, v3

    .line 710
    :goto_15b
    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    if-ge v0, v13, :cond_35f

    .line 711
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    const-string v2, "AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u043f\u044a\u043b\u043d\u043e\u043b\u0435\u0442\u043d\u0438."

    const-string v4, "AI sessions are for adults only."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 712
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 711
    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    :cond_174
    :goto_174
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 721
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v2, "Next"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 722
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 723
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_3ae

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_193
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 724
    return-void

    .line 580
    :cond_197
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_1a7

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "high fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_45

    .line 581
    :cond_1a7
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_45

    .line 582
    :cond_1b1
    const-string v1, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_58

    .line 596
    :cond_1bb
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 597
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "\u041c\u044a\u0436"

    const-string v8, "Male"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v8, "Female"

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    .line 598
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v8, :cond_2a7

    move v0, v2

    :goto_1dd
    const/4 v8, 0x0

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$7;

    invoke-direct {v9, v4}, Lcom/isaigu/gymapp/ai/AiUi$7;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 597
    invoke-static {p0, v7, v0, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 604
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 597
    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "\u041d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v8, "Low fitness"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    const-string v7, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v8, "Mid"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    const/4 v7, 0x2

    const-string v8, "\u0412\u0438\u0441\u043e\u043a\u0430"

    const-string v9, "High"

    .line 606
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    iget-object v7, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$8;

    invoke-direct {v9, v4}, Lcom/isaigu/gymapp/ai/AiUi$8;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 605
    invoke-static {p0, v0, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 612
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 605
    invoke-virtual {v1, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 614
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 615
    const-string v1, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v7, "Age"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$9;

    invoke-direct {v9, v4}, Lcom/isaigu/gymapp/ai/AiUi$9;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 622
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 615
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    const-string v1, "\u0422\u0435\u0433\u043b\u043e"

    const-string v7, "Weight"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "kg"

    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$10;

    invoke-direct {v9, v4}, Lcom/isaigu/gymapp/ai/AiUi$10;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v7, v8, v9}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 630
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 623
    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_cb

    :cond_2a7
    move v0, v3

    .line 598
    goto/16 :goto_1dd

    .line 639
    :cond_2aa
    const-string v0, "\u0411\u0435\u0437 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f, \u0434\u043e\u0431\u0440\u0435 \u0435 \u0434\u043d\u0435\u0441"

    const-string v1, "No contraindications, feeling fine today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    goto/16 :goto_fb

    .line 662
    :cond_2ba
    const-string v0, "\u041e\u0442\u0431\u0435\u043b\u0435\u0436\u0438 \u043a\u0430\u043a\u0432\u043e \u0432\u0430\u0436\u0438"

    const-string v1, "Mark what applies"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 663
    sget-object v7, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v8, v7

    move v1, v2

    :goto_2cd
    if-ge v1, v8, :cond_2fa

    aget-object v9, v7, v1

    .line 664
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 665
    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AiText;->contraindication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_2f8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2f8

    move v0, v3

    :goto_2e8
    new-instance v11, Lcom/isaigu/gymapp/ai/AiUi$13;

    invoke-direct {v11, v4, v9}, Lcom/isaigu/gymapp/ai/AiUi$13;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)V

    invoke-static {p0, v10, v0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 663
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2cd

    :cond_2f8
    move v0, v2

    .line 665
    goto :goto_2e8

    .line 673
    :cond_2fa
    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0438\u043b\u0438 \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Fever or illness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$14;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/ai/AiUi$14;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    const-string v0, "\u0410\u043b\u043a\u043e\u0445\u043e\u043b \u0438\u043b\u0438 \u0441\u0438\u043b\u0435\u043d \u0441\u0442\u0440\u0435\u0441 (48 \u0447)"

    const-string v1, "Alcohol or heavy stress (48 h)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$15;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/ai/AiUi$15;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    const-string v0, "\u0418\u0437\u0432\u0435\u0441\u0442\u043d\u0430 \u0430\u0440\u0438\u0442\u043c\u0438\u044f"

    const-string v1, "Known arrhythmia"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$16;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/ai/AiUi$16;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 697
    const-string v0, "\u041b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430, \u043f\u043e\u043d\u0438\u0436\u0430\u0432\u0430\u0449\u0438 \u043f\u0443\u043b\u0441\u0430"

    const-string v1, "HR-lowering medication"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$17;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/ai/AiUi$17;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_13d

    :cond_35c
    move v1, v2

    .line 709
    goto/16 :goto_15b

    .line 713
    :cond_35f
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_174

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-eqz v0, :cond_174

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "\u041d\u0435 \u043c\u043e\u0436\u0435 \u0434\u043d\u0435\u0441: "

    const-string v7, "Not today: "

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    :goto_376
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_39b

    .line 716
    if-lez v2, :cond_398

    const-string v0, " \u00b7 "

    :goto_382
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->screeningCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    add-int/lit8 v2, v2, 0x1

    goto :goto_376

    .line 716
    :cond_398
    const-string v0, ""

    goto :goto_382

    .line 718
    :cond_39b
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_174

    .line 723
    :cond_3ae
    const v0, 0x3ecccccd    # 0.4f

    goto/16 :goto_193
.end method

.method private static screenGoal(Landroid/content/Context;)V
    .registers 16

    .prologue
    .line 435
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u041a\u0430\u043a\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430 \u0434\u043d\u0435\u0441?"

    const-string v2, "What is today\'s goal?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    .line 438
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 439
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 440
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_2c
    if-ge v1, v7, :cond_110

    aget-object v0, v6, v1

    .line 442
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 443
    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41900000    # 18.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x41900000    # 18.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 444
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 445
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 446
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v14

    invoke-static {v14}, Lcom/isaigu/gymapp/ai/AiUi;->lighten(I)I

    move-result v14

    aput v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 447
    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 448
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41b00000    # 22.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v12, 0x1

    invoke-static {p0, v9, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 451
    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 452
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v12, 0x0

    invoke-static {p0, v9, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$1;

    invoke-direct {v9, v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$1;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Goal;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v9, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v9, v0, :cond_fe

    const/4 v0, 0x1

    .line 469
    :goto_cf
    if-eqz v0, :cond_100

    .line 470
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const/16 v9, 0x12

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 469
    :goto_d9
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 474
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_f3

    .line 475
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 477
    :cond_f3
    invoke-virtual {v4, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2c

    .line 468
    :cond_fe
    const/4 v0, 0x0

    goto :goto_cf

    .line 471
    :cond_100
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_d9

    .line 480
    :cond_110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v5, 0x433e0000    # 190.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 484
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_273

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_273

    const/4 v0, 0x1

    move v1, v0

    .line 485
    :goto_139
    if-eqz v1, :cond_171

    .line 486
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "\u0421 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v7, "With movement"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x1

    const-string v6, "\u0412 \u043f\u043e\u043a\u043e\u0439"

    const-string v7, "At rest"

    .line 487
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 488
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v6, :cond_277

    const/4 v0, 0x0

    :goto_15b
    const/4 v6, 0x0

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$2;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/ai/AiUi$2;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 486
    invoke-static {p0, v5, v0, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    :cond_171
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_27a

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 497
    :goto_17b
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 498
    if-eqz v1, :cond_18e

    .line 499
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 501
    :cond_18e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v6, v0, 0x3c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "\u043c\u0438\u043d\u0443\u0442\u0438"

    const-string v7, "minutes"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$3;

    invoke-direct {v7, v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$3;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V

    invoke-static {p0, v1, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 510
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 511
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 516
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-ne v0, v1, :cond_1db

    .line 517
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 519
    :cond_1db
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 520
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 (\u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u043f\u0430\u0443\u0437\u0430)"

    const-string v4, "Double impulse (active pause)"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq v0, v5, :cond_282

    const/4 v0, 0x1

    :goto_1ee
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$4;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/ai/AiUi$4;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v4, v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 529
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 530
    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    :cond_20c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430: "

    const-string v4, "Operated by: "

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v4, :cond_285

    .line 534
    const-string v0, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v4, "trainer \u00b7 change"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    :goto_22b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v5, 0x0

    .line 533
    invoke-static {p0, v0, v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 537
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 538
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$5;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiUi$5;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 547
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v1, "Next"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 548
    return-void

    .line 484
    :cond_273
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_139

    .line 488
    :cond_277
    const/4 v0, 0x1

    goto/16 :goto_15b

    .line 496
    :cond_27a
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v0

    goto/16 :goto_17b

    .line 520
    :cond_282
    const/4 v0, 0x0

    goto/16 :goto_1ee

    .line 535
    :cond_285
    const-string v0, "\u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0430\u043c (\u043f\u043e-\u0442\u0435\u0441\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438) \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v4, "the client alone (tighter limits) \u00b7 change"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22b
.end method

.method private static screenPlan(Landroid/content/Context;)V
    .registers 15

    .prologue
    .line 902
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v6

    .line 903
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v7

    .line 904
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v8

    .line 905
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u0422\u0432\u043e\u044f\u0442 \u043f\u043b\u0430\u043d"

    const-string v2, "Your plan"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 907
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v3, :cond_1b2

    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u043e"

    const-string v3, "active"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v2

    .line 908
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 910
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 911
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 913
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iget v2, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;I)Ljava/lang/String;

    move-result-object v1

    .line 914
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-direct {v11, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 916
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 917
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v2, :cond_1bc

    const/4 v2, 0x1

    :goto_87
    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/16 v4, 0xa0

    const/16 v5, 0x78

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
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

    .line 919
    const-string v0, "\u041f\u043e\u043a\u043e\u0439"

    const-string v1, "Rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1bf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrRest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d1
    iget-boolean v1, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_1c3

    move-object v1, v2

    :goto_d6
    invoke-static {p0, v10, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1ec

    .line 921
    iget-wide v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1c7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2264 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-virtual {v7, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 923
    :goto_fe
    const-string v1, "\u041a\u043e\u0440\u0438\u0434\u043e\u0440"

    const-string v3, "Corridor"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v3, :cond_1f0

    :goto_10a
    invoke-static {p0, v10, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v0, "\u0412\u0440\u0435\u043c\u0435"

    const-string v1, "Time"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v10, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 927
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 928
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 929
    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 930
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 932
    const/4 v0, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 933
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_155
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 934
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 935
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AiText;->phase(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " \u00b7 "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v10, v10

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v10, 0x41700000    # 15.0f

    iget-object v11, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    .line 936
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v11

    const/4 v12, 0x1

    .line 935
    invoke-static {p0, v5, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 937
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 938
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const v12, 0x3df5c28f    # 0.12f

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v0, v0

    iget v13, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-float v13, v13

    div-float/2addr v0, v13

    .line 939
    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v5, v10, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 938
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_155

    .line 907
    :cond_1b2
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v3, "passive"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3e

    .line 917
    :cond_1bc
    const/4 v2, 0x0

    goto/16 :goto_87

    .line 919
    :cond_1bf
    const-string v0, "\u2014"

    goto/16 :goto_d1

    :cond_1c3
    const-string v1, ""

    goto/16 :goto_d6

    .line 921
    :cond_1c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-virtual {v7, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2013"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xHi:D

    invoke-virtual {v7, v4, v5}, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAt(D)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_fe

    .line 922
    :cond_1ec
    const-string v0, "\u2014"

    goto/16 :goto_fe

    .line 923
    :cond_1f0
    const-string v2, ""

    goto/16 :goto_10a

    .line 941
    :cond_1f4
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 942
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iget v2, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;I)Ljava/lang/String;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_27e

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->usesMachine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27e

    .line 947
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 948
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 949
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 950
    const-string v0, "\u0418\u043c\u0430 \u043b\u0438 \u043a\u0430\u0440\u0434\u0438\u043e \u0442\u0440\u0435\u043d\u0430\u0436\u043e\u0440 \u0432 \u0437\u0430\u043b\u0430\u0442\u0430?"

    const-string v2, "Is there a cardio machine in the studio?"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "\u0418\u043c\u0430"

    const-string v4, "Yes"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "\u041d\u044f\u043c\u0430"

    const-string v4, "No"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 953
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    const/4 v0, 0x0

    :goto_25c
    const/4 v3, 0x0

    new-instance v4, Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;-><init>(Landroid/content/Context;)V

    .line 952
    invoke-static {p0, v2, v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    .line 954
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 952
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 955
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    :cond_27e
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-nez v0, :cond_299

    .line 960
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    const-string v1, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v2, "No band \u2014 the plan alone controls."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    .line 961
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 960
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    :cond_299
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29f
    :goto_29f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    const-string v2, "NO_BAND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29f

    .line 965
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->flag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29f

    .line 953
    :cond_2c7
    const/4 v0, 0x1

    goto :goto_25c

    .line 969
    :cond_2c9
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    if-eqz v0, :cond_328

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_328

    .line 970
    const-string v0, "x"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_310

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    .line 971
    :goto_2e9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0417\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442:"

    const-string v3, "For this client:"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2fa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_315

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 973
    const-string v3, "\n\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2fa

    .line 970
    :cond_310
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    goto :goto_2e9

    .line 975
    :cond_315
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    :cond_328
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 978
    const-string v0, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "Calibrate strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 979
    return-void
.end method

.method private static screenReport(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1534
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 1535
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041e\u0442\u0447\u0435\u0442"

    const-string v3, "Report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    if-nez v1, :cond_27

    .line 1537
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1622
    :goto_26
    return-void

    .line 1541
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

    .line 1542
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1543
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1544
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1545
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1546
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1547
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1549
    const-string v0, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v5, "Share report"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1550
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$29;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$29;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1557
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    const-string v5, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
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

    .line 1561
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$30;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiUi$30;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26
.end method

.method private static screenRest(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/16 v13, 0x11

    const/high16 v12, 0x41600000    # 14.0f

    const/high16 v11, 0x43960000    # 300.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v3, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v4, "Resting heart rate"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v3, "\u0421\u0435\u0434\u043d\u0438 \u0438\u043b\u0438 \u043b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0431\u0435\u0437 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f"

    const-string v4, "Sit or lie still, no stimulation"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v2, v3, :cond_12c

    move v4, v0

    .line 733
    :goto_2d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 734
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 736
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 737
    new-instance v6, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-direct {v6, p0, v12}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 738
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 740
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 741
    const-string v5, "--"

    const/high16 v8, 0x42800000    # 64.0f

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v5, v8, v9, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 742
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 743
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    const-string v8, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v9, "bpm"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v8, v12, v9, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 745
    const-string v8, ""

    const/high16 v9, 0x41700000    # 15.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    invoke-static {p0, v8, v9, v10, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 746
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 747
    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v9, v1, v8, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 748
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 749
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 752
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 753
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v10, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 754
    const-string v2, ""

    const/high16 v7, 0x41a00000    # 20.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v2, v7, v8, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 755
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 756
    const-string v2, ""

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v2, v12, v8, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 757
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v1, v2, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 758
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 759
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 760
    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v2, v1, v11, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 761
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 762
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v1, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 764
    const-string v1, "\u041a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v3, "To the plan"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 766
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v1

    .line 767
    if-eqz v1, :cond_120

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-nez v0, :cond_120

    .line 768
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->acquireBand(Landroid/app/Activity;)V

    .line 771
    :cond_120
    sget-object v10, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$18;

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AiUi$18;-><init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    return-void

    :cond_12c
    move v4, v1

    .line 732
    goto/16 :goto_2d
.end method

.method private static screenRun(Landroid/content/Context;)V
    .registers 44

    .prologue
    .line 1100
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    .line 1101
    if-nez v6, :cond_b

    .line 1102
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 1372
    :goto_a
    return-void

    .line 1105
    :cond_b
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v16

    .line 1106
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v18

    .line 1107
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

    .line 1108
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v7, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435. \u0421\u0442\u043e\u043f\u044a\u0442 \u0435 \u0432\u0438\u043d\u0430\u0433\u0438 \u043d\u0430\u043b\u0438\u0447\u0435\u043d."

    const-string v8, "AI manages strength, pauses and rests. Stop is always available."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1112
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v32

    .line 1113
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v30

    .line 1116
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getExercises()Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v5

    if-eqz v5, :cond_68e

    const/4 v8, 0x1

    .line 1117
    :goto_64
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v19

    .line 1118
    new-instance v9, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 1119
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1120
    const-string v5, ""

    const/high16 v7, 0x41c00000    # 24.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1121
    const-string v5, ""

    const/high16 v7, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 1122
    const-string v7, ""

    if-eqz v8, :cond_691

    const/high16 v5, 0x41880000    # 17.0f

    :goto_9c
    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v12, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 1123
    const-string v5, ""

    const/high16 v12, 0x41800000    # 16.0f

    sget v13, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13, v15}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    .line 1124
    const-string v5, ""

    const/high16 v13, 0x41500000    # 13.0f

    sget v15, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v5, v13, v15, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    .line 1125
    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v15, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    const/high16 v17, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    const/high16 v20, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v13, v5, v15, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1126
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v5, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1128
    if-eqz v8, :cond_12d

    .line 1129
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/high16 v17, 0x42ec0000    # 118.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v5, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1130
    const/high16 v15, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1131
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1133
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1134
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1136
    :cond_12d
    const/4 v15, 0x0

    if-eqz v8, :cond_695

    const/high16 v5, 0x41000000    # 8.0f

    :goto_132
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/16 v17, 0x0

    const/high16 v20, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v7, v15, v5, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1137
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1138
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1139
    new-instance v15, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 1140
    invoke-virtual/range {v15 .. v16}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 1141
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v20, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1142
    if-eqz v8, :cond_699

    const/high16 v5, 0x41200000    # 10.0f

    :goto_177
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    move-object/from16 v0, v17

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1143
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    const-string v5, ""

    const/high16 v17, 0x41500000    # 13.0f

    sget v20, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v5, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v17

    .line 1145
    const/4 v5, 0x0

    const/high16 v20, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1146
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1147
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, -0x1

    const v22, 0x3f8ccccd    # 1.1f

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    new-instance v5, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1151
    sget v19, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v20, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v20

    sget v21, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/16 v22, 0x1

    invoke-static/range {v19 .. v22}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1152
    new-instance v20, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v19, 0x41800000    # 16.0f

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1153
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

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

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1154
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1155
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v22

    .line 1156
    const/16 v19, 0x11

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1157
    const-string v19, "--"

    const/high16 v21, 0x42780000    # 62.0f

    sget v23, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v19

    .line 1158
    const/16 v21, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1159
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1160
    const-string v21, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v23, "bpm"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/high16 v23, 0x41600000    # 14.0f

    sget v24, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1161
    const-string v21, ""

    const/high16 v23, 0x41500000    # 13.0f

    sget v24, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v21

    .line 1162
    const/16 v23, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1163
    const/16 v23, 0x0

    const/high16 v24, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1164
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1165
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v24, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v24

    const/high16 v25, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v25

    const/16 v26, 0x11

    invoke-direct/range {v23 .. v26}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, 0x0

    const/high16 v24, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v25}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1167
    const/high16 v23, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1168
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1172
    new-instance v22, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1173
    const-string v23, "\u0421\u0438\u043b\u0430"

    const-string v24, "Strength"

    invoke-static/range {v23 .. v24}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v23

    .line 1174
    new-instance v24, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1175
    const-string v25, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v26, "Muscle fatigue"

    invoke-static/range {v25 .. v26}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v25

    .line 1176
    new-instance v26, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1177
    const-string v27, "\u0414\u043e\u0437\u0430"

    const-string v28, "Dose"

    invoke-static/range {v27 .. v28}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v27

    .line 1178
    const-string v28, ""

    const/high16 v29, 0x41a00000    # 20.0f

    sget v31, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v33

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v28

    .line 1179
    const/16 v29, 0x0

    const/high16 v31, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1180
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1181
    const-string v29, ""

    const/high16 v31, 0x41500000    # 13.0f

    sget v33, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v29

    .line 1182
    const/16 v31, 0x0

    const/high16 v33, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1183
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/high16 v35, 0x3f800000    # 1.0f

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1185
    const/high16 v33, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1186
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, -0x1

    if-eqz v8, :cond_69d

    const/high16 v5, 0x43c80000    # 400.0f

    :goto_411
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1191
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1192
    const/16 v30, 0x10

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1193
    new-instance v30, Landroid/view/View;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1194
    new-instance v31, Landroid/graphics/drawable/GradientDrawable;

    sget-object v33, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/16 v35, 0x0

    sget v36, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v36, v34, v35

    const/16 v35, 0x1

    sget v36, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    aput v36, v34, v35

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1196
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1197
    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1198
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v33, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v33

    const/high16 v34, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v34

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    const-string v30, ""

    const/high16 v31, 0x41880000    # 17.0f

    sget v33, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v30

    .line 1200
    const/high16 v31, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v31

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1201
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, 0x0

    const/16 v34, -0x2

    const/high16 v35, 0x3f800000    # 1.0f

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    const-string v31, ""

    const/high16 v33, 0x41500000    # 13.0f

    sget v34, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v31

    .line 1203
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1204
    const/16 v33, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1208
    new-instance v36, Landroid/widget/FrameLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1209
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/16 v32, 0xe6

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1210
    const/16 v5, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1211
    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1212
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v14, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1218
    const-string v5, ""

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v32

    .line 1219
    const/4 v5, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1220
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$20;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$20;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    const-string v5, "\u2212  \u0421\u0438\u043b\u0430"

    const-string v14, "\u2212  Strength"

    invoke-static {v5, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v33

    .line 1227
    const/4 v5, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1228
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$21;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$21;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    const-string v5, "+  \u0421\u0438\u043b\u0430"

    const-string v14, "+  Strength"

    invoke-static {v5, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v34

    .line 1235
    const/4 v5, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1236
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$22;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$22;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    const-string v5, ""

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v35

    .line 1243
    const/4 v5, 0x2

    const/high16 v14, 0x41800000    # 16.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1244
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$23;

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiUi$23;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    const-string v5, "\u0421\u0422\u041e\u041f"

    const-string v14, "STOP"

    invoke-static {v5, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v14, 0x41b00000    # 22.0f

    sget v37, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v5, v14, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v37

    .line 1251
    const/16 v5, 0x11

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1252
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    const/high16 v14, 0x41e80000    # 29.0f

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v14

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v5, v14, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$24;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$24;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v38, 0x433e0000    # 190.0f

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v38

    const/high16 v39, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    const/4 v5, 0x3

    new-array v0, v5, [Landroid/widget/TextView;

    move-object/from16 v38, v0

    const/4 v5, 0x0

    aput-object v33, v38, v5

    const/4 v5, 0x1

    aput-object v34, v38, v5

    const/4 v5, 0x2

    aput-object v35, v38, v5

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v39, v0

    const/4 v5, 0x0

    move v14, v5

    :goto_64e
    move/from16 v0, v39

    if-ge v14, v0, :cond_6a4

    aget-object v40, v38, v14

    .line 1262
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_6a1

    const/high16 v5, 0x437a0000    # 250.0f

    :goto_65e
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v42, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1263
    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    move-object/from16 v0, v41

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1264
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1261
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto :goto_64e

    .line 1116
    :cond_68e
    const/4 v8, 0x0

    goto/16 :goto_64

    .line 1122
    :cond_691
    const/high16 v5, 0x41f00000    # 30.0f

    goto/16 :goto_9c

    .line 1136
    :cond_695
    const/high16 v5, 0x41600000    # 14.0f

    goto/16 :goto_132

    .line 1142
    :cond_699
    const/high16 v5, 0x41b00000    # 22.0f

    goto/16 :goto_177

    .line 1187
    :cond_69d
    const/high16 v5, 0x43a00000    # 320.0f

    goto/16 :goto_411

    .line 1262
    :cond_6a1
    const/high16 v5, 0x43200000    # 160.0f

    goto :goto_65e

    .line 1266
    :cond_6a4
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/high16 v41, 0x3f800000    # 1.0f

    invoke-direct/range {v38 .. v41}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v38

    invoke-virtual {v5, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v38, 0x43820000    # 260.0f

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v38

    const/high16 v39, 0x42680000    # 58.0f

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    sget-object v37, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$25;

    move-object/from16 v14, p0

    invoke-direct/range {v5 .. v36}, Lcom/isaigu/gymapp/ai/AiUi$25;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;ZLcom/isaigu/gymapp/ai/ExerciseFigure;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a
.end method

.method private static scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    .line 2079
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2080
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 2081
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2082
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2083
    return-object v0
.end method

.method private static sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1938
    const/high16 v0, 0x41400000    # 12.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1939
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 1940
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1941
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1942
    return-object v0
.end method

.method private static segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 15

    .prologue
    .line 1736
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1737
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1738
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

    .line 1739
    const/4 v0, 0x0

    :goto_32
    array-length v1, p1

    if-ge v0, v1, :cond_bd

    .line 1741
    if-eqz p3, :cond_3b

    aget-boolean v1, p3, v0

    if-eqz v1, :cond_aa

    :cond_3b
    const/4 v1, 0x1

    move v3, v1

    .line 1742
    :goto_3d
    if-ne v0, p2, :cond_ad

    const/4 v1, 0x1

    .line 1743
    :goto_40
    aget-object v5, p1, v0

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v1, :cond_af

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    :goto_48
    invoke-static {p0, v5, v6, v2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1745
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1746
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

    .line 1747
    if-eqz v1, :cond_8f

    .line 1748
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v9, v7, v8

    const/4 v8, 0x1

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v9, v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1750
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1751
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1753
    :cond_8f
    if-eqz v3, :cond_9b

    if-nez v1, :cond_9b

    .line 1754
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$31;

    invoke-direct {v1, p4, v0}, Lcom/isaigu/gymapp/ai/AiUi$31;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1761
    :cond_9b
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1739
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1741
    :cond_aa
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3d

    .line 1742
    :cond_ad
    const/4 v1, 0x0

    goto :goto_40

    .line 1744
    :cond_af
    if-eqz v3, :cond_b4

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto :goto_48

    :cond_b4
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v7, 0x55

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v2

    goto :goto_48

    .line 1763
    :cond_bd
    return-object v4
.end method

.method private static setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 349
    if-eqz p2, :cond_15

    .line 350
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42580000    # 54.0f

    .line 351
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
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

    .line 354
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
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

    .line 356
    return-void
.end method

.method private static shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 12

    .prologue
    .line 1625
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1665
    :cond_4
    :goto_4
    return-void

    .line 1628
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1629
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 1630
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    .line 1631
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

    .line 1632
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1633
    const-string v0, "\u041f\u0443\u043b\u0441 \u043f\u043e\u043a\u043e\u0439 "

    const-string v3, "HR rest "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    const-string v3, " \u00b7 \u0442\u0430\u0432\u0430\u043d "

    const-string v4, " \u00b7 cap "

    .line 1634
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 \u043a\u043e\u0440\u0438\u0434\u043e\u0440 x "

    const-string v4, " \u00b7 corridor x "

    .line 1635
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2ba

    const-string v0, "-"

    :goto_85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2013"

    .line 1636
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

    .line 1637
    const-string v0, "\u0412\u0440\u0435\u043c\u0435 "

    const-string v1, "Duration "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2d0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getEndMs()J

    move-result-wide v0

    :goto_c6
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

    const-string v1, " \u00b7 \u0434\u043e\u0437\u0430 "

    const-string v3, " \u00b7 dose "

    .line 1638
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    const-string v1, "% \u043e\u0442 \u043f\u043b\u0430\u043d\u0430"

    const-string v3, "% of plan"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u0432 \u043a\u043e\u0440\u0438\u0434\u043e\u0440\u0430 "

    const-string v3, " \u00b7 corridor "

    .line 1639
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getCorridorShare()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2d6

    const-string v0, "-"

    :goto_129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 HRR60 "

    .line 1640
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2f6

    const-string v0, "-"

    :goto_13f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 kcal "

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getKcal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_304

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

    :goto_16e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u0430\u043a\u0442\u0438\u0432\u043d\u0438 "

    const-string v3, " (active "

    .line 1642
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getActiveKcal()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1643
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    if-eqz v0, :cond_308

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, ", VO2max %.0f, %.0f kg"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1644
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->getVo2max()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEnergy;->getWeightKg()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1643
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    .line 1645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
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

    .line 1647
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

    .line 1648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nblocks: #,phase,t_block,t_rest,q,F_end,dHR,R,D,tau,V\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;

    .line 1650
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%s,%.0f,%.0f,%.0f,%.1f,%.1f,%.2f,%.2f,%.1f,%.2f%n"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 1651
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

    .line 1650
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23c

    .line 1635
    :cond_2ba
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

    goto/16 :goto_85

    .line 1637
    :cond_2d0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_c6

    .line 1639
    :cond_2d6
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

    goto/16 :goto_129

    .line 1640
    :cond_2f6
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_13f

    .line 1641
    :cond_304
    const-string v0, "-"

    goto/16 :goto_16e

    .line 1644
    :cond_308
    const-string v0, ""

    goto/16 :goto_1bf

    .line 1653
    :cond_30c
    const-string v0, "\nlog:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getLog()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_319
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1655
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_319

    .line 1657
    :cond_32f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v3, "XEMS AI \u043e\u0442\u0447\u0435\u0442"

    const-string v4, "XEMS AI report"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1660
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    :try_start_351
    const-string v1, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v2, "Share report"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_360
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_360} :catch_362

    goto/16 :goto_4

    .line 1663
    :catch_362
    move-exception v0

    goto/16 :goto_4
.end method

.method static show()V
    .registers 1

    .prologue
    .line 168
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 174
    :goto_c
    return-void

    .line 171
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_c

    .line 172
    :catch_16
    move-exception v0

    goto :goto_c
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 189
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->buildShell(Landroid/app/Activity;)V

    .line 191
    :cond_f
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 192
    return-void
.end method

.method private static statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v6, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    .line 1873
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1874
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1875
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1876
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v5, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1877
    const-string v1, "\u2014"

    const/high16 v2, 0x41b00000    # 22.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1878
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1879
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1880
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5a

    .line 1881
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1883
    :cond_5a
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1884
    return-object v1
.end method

.method private static stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I
    .registers 3

    .prologue
    .line 177
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 181
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 178
    :pswitch_d
    const/4 v0, 0x2

    goto :goto_c

    .line 179
    :pswitch_f
    const/4 v0, 0x3

    goto :goto_c

    .line 180
    :pswitch_11
    const/4 v0, 0x4

    goto :goto_c

    .line 177
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

    .line 1767
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1768
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1769
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1770
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1771
    const-string v1, "\u2212"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1772
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$32;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$32;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1778
    const-string v2, "+"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1779
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$33;

    invoke-direct {v3, p3}, Lcom/isaigu/gymapp/ai/AiUi$33;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1785
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1786
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1787
    const/high16 v4, 0x42080000    # 34.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v4, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1788
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1789
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1790
    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1791
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1792
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1794
    return-object v0
.end method

.method private static styleSideButton()V
    .registers 4

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

    if-ne v0, v2, :cond_3d

    move v0, v1

    .line 121
    :goto_f
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 122
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 123
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 124
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_3f

    const/high16 v1, 0x40400000    # 3.0f

    :goto_25
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    if-eqz v0, :cond_42

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    :goto_2d
    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 119
    :cond_3d
    const/4 v0, 0x0

    goto :goto_f

    .line 124
    :cond_3f
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_25

    :cond_42
    const/high16 v0, 0x33000000

    goto :goto_2d
.end method

.method private static varargs tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .prologue
    const/high16 v2, 0x40c00000    # 6.0f

    const/4 v1, 0x0

    .line 1909
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1910
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1911
    const/4 v0, 0x7

    new-array v5, v0, [F

    fill-array-data v5, :array_48

    move v0, v1

    .line 1912
    :goto_19
    array-length v2, p2

    if-ge v0, v2, :cond_47

    .line 1913
    aget-object v6, p2, v0

    if-eqz p1, :cond_40

    const/high16 v2, 0x41400000    # 12.0f

    move v3, v2

    :goto_23
    if-eqz p1, :cond_44

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    :goto_27
    invoke-static {p0, v6, v3, v2, p1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1914
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v7, v5, v7

    invoke-direct {v3, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1912
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1913
    :cond_40
    const/high16 v2, 0x41600000    # 14.0f

    move v3, v2

    goto :goto_23

    :cond_44
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto :goto_27

    .line 1916
    :cond_47
    return-object v4

    .line 1911
    :array_48
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
    .line 2050
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2051
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2052
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2053
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2054
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2055
    if-eqz p4, :cond_1f

    .line 2056
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2058
    :cond_1f
    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2105
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 2108
    :goto_8
    return-void

    .line 2106
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    .line 1808
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1809
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1810
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1811
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1814
    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1815
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$34;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$34;-><init>(Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1821
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1822
    return-object v0
.end method

.method private static updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 14

    .prologue
    .line 1501
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-nez v0, :cond_5

    .line 1529
    :goto_4
    return-void

    .line 1504
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v2

    .line 1505
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v4

    .line 1506
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_8a

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x2710

    cmp-long v0, v0, v6

    if-gez v0, :cond_8a

    const/4 v0, 0x1

    .line 1507
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

    .line 1508
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1509
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestOverS(J)D

    move-result-wide v0

    .line 1510
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1511
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

    .line 1512
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_8f

    .line 1513
    const-string v0, "\u0414\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 \u2014 AI \u0449\u0435 \u0437\u0430\u043f\u043e\u0447\u043d\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e \u0438 \u0449\u0435 \u0432\u0434\u0438\u0433\u043d\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430. \u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u043f\u043b\u0430\u043d\u0430 \u0441\u0442\u043e\u0438."

    const-string v1, "Long pause \u2014 AI starts softer and ramps back over a few pulses. The plan clock is on hold."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    :goto_85
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1506
    :cond_8a
    const/4 v0, 0x0

    goto :goto_1e

    .line 1507
    :cond_8c
    const-string v0, ""

    goto :goto_45

    .line 1515
    :cond_8f
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d\u0438. \u041d\u0430\u0442\u0438\u0441\u043d\u0438, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u0438 \u0432 \u043f\u043e\u0437\u0438\u0446\u0438\u044f."

    const-string v1, "Muscles and HR have recovered. Tap when in position."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 1519
    :cond_98
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v0

    .line 1520
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v2, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1521
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430 "

    const-string v2, "Muscle fatigue "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 1523
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

    .line 1524
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestHrOk()Z

    move-result v1

    if-nez v1, :cond_11d

    .line 1525
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

    .line 1526
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

    .line 1528
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
    .line 2067
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2068
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2069
    return-object v0
.end method

.method private static weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 2087
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2088
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2089
    return-object v0
.end method
