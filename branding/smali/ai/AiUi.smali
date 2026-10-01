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
        Lcom/isaigu/gymapp/ai/AiUi$MeasureAgain;,
        Lcom/isaigu/gymapp/ai/AiUi$ClearWorkout;,
        Lcom/isaigu/gymapp/ai/AiUi$FlowRow;,
        Lcom/isaigu/gymapp/ai/AiUi$ToPlan;
    }
.end annotation


# static fields
.field private static final BTN_TAG:Ljava/lang/String; = "xems_ai_button"

.field private static final HEART_BTN_ID:I = 0x7f090297

.field private static final SETUP_STEPS:I = 0x3

.field private static final SIDEBAR_ID:I = 0x7f090155

.field static final STEP_CALIB:I = 0x2

.field static final STEP_GOAL:I = 0x0

.field static final STEP_PLAN:I = 0x1

.field static final STEP_REPORT:I = 0x4

.field static final STEP_RUN:I = 0x3

.field private static backBtn:Landroid/widget/TextView;

.field private static body:Landroid/widget/FrameLayout;

.field private static dialog:Landroid/app/Dialog;

.field private static dotsView:Landroid/widget/LinearLayout;

.field private static footer:Landroid/widget/LinearLayout;

.field private static healthOk:Z

.field private static healthOpen:Z

.field private static noBand:Z

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
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
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
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->closeReport()V

    return-void
.end method

.method static synthetic access$1000()I
    .registers 1

    .prologue
    .line 39
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    return v0
.end method

.method static synthetic access$1100()Landroid/widget/FrameLayout;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 6

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->renderOverlay(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;J)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    return-void
.end method

.method static synthetic access$2000(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->tableRow(Landroid/content/Context;Z[Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->onStep(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .registers 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->profileOpen:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    return p0
.end method

.method static synthetic access$702(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    return p0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiUi;->noBand:Z

    return p0
.end method

.method static attachButton(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 74
    if-nez p0, :cond_4

    .line 116
    :cond_3
    :goto_3
    return-void

    .line 77
    :cond_4
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 81
    check-cast v0, Landroid/widget/LinearLayout;

    .line 82
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 83
    const-string v1, "xems_ai_button"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    goto :goto_3

    .line 87
    :cond_27
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiViews;->applyTheme(Landroid/content/Context;)V

    .line 89
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    const-string v3, "xems_ai_button"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 91
    const-string v3, "AI"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    const/4 v3, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 96
    const v3, 0x3d23d70a    # 0.04f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 97
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$OpenListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    .line 99
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 100
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 101
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 103
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v6, 0x0

    const v7, 0x3da3d70a    # 0.08f

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 106
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 107
    const v6, 0x7f090297

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 108
    if-eqz v6, :cond_96

    .line 109
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 110
    if-ltz v6, :cond_96

    .line 111
    add-int/lit8 v1, v6, 0x1

    .line 114
    :cond_96
    invoke-virtual {v0, v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
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

    .line 2035
    const/high16 v0, 0x41700000    # 15.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2036
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2037
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2038
    and-int v2, p1, v5

    const/high16 v3, 0x2a000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2039
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p1, v5

    const/high16 v4, -0x78000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2040
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2041
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2042
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

    .line 1964
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1965
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1966
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1967
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v7, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1968
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1969
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1970
    const/high16 v2, 0x41f00000    # 30.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p3, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1971
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6b

    .line 1972
    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p4, v2, v3, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1973
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1974
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1976
    :cond_6b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1977
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1978
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_82

    .line 1979
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1981
    :cond_82
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1982
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

    .line 1532
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v4

    .line 1533
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1534
    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1535
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

    .line 1536
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/16 v3, 0x18

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1537
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1538
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v0, p0, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    .line 1539
    sget-object v7, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-eqz v4, :cond_13f

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    move v3, v0

    :goto_4f
    if-nez v4, :cond_144

    move v0, v1

    :goto_52
    invoke-virtual {v7, v3, v0}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setColor(IZ)V

    .line 1540
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1542
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1543
    const-string v3, ""

    const/high16 v7, 0x42300000    # 44.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v3, v7, v8, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    .line 1544
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1545
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1546
    const-string v3, ""

    const/high16 v7, 0x41600000    # 14.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v3, v7, v8, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    .line 1547
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1548
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->restHr:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1549
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1551
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 1552
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1553
    if-eqz v4, :cond_147

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u0431\u043b\u043e\u043a"

    const-string v3, "Ready for the next block"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1554
    :goto_c5
    const/high16 v7, 0x41d00000    # 26.0f

    .line 1555
    if-eqz v4, :cond_152

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    .line 1553
    :goto_cb
    invoke-static {p0, v3, v7, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1556
    const-string v0, ""

    const/high16 v1, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    .line 1557
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1558
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1559
    const-string v0, "\u25b6  \u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0431\u043b\u043e\u043a"

    const-string v1, "\u25b6  Next block"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1560
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1561
    if-eqz v4, :cond_156

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_101
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1562
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$27;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$27;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1568
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42680000    # 58.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1569
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1570
    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1571
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x43dc0000    # 440.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1572
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v11, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1574
    return-void

    .line 1539
    :cond_13f
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    move v3, v0

    goto/16 :goto_4f

    :cond_144
    move v0, v2

    goto/16 :goto_52

    .line 1554
    :cond_147
    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430 \u043c\u0435\u0436\u0434\u0443 \u0431\u043b\u043e\u043a\u043e\u0432\u0435\u0442\u0435"

    const-string v3, "Rest between blocks"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_c5

    .line 1555
    :cond_152
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto/16 :goto_cb

    .line 1561
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

    .line 203
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiViews;->applyTheme(Landroid/content/Context;)V

    .line 204
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 205
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 206
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 208
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v8}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    const/high16 v1, 0x41d00000    # 26.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 212
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 218
    const-string v2, "AI"

    const/high16 v3, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    invoke-static {p0, v2, v3, v4, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 219
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v6, v5, v7

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->ACCENT_DARK:I

    aput v6, v5, v8

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 222
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
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

    .line 225
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 229
    const-string v3, ""

    const/high16 v4, 0x41b00000    # 22.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v3, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    .line 230
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v3, v4, v5, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    .line 231
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    .line 235
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    const-string v2, "\u2715"

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v2, v11, v3, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 239
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
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

    .line 241
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiUi$CloseListener;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    .line 246
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 248
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 249
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 250
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    .line 253
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 254
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 255
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 258
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1ab

    .line 260
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 262
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

    .line 263
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 264
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 265
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 266
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 267
    const v2, 0x3f3851ec    # 0.72f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 269
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 271
    :cond_1ab
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 272
    return-void
.end method

.method private static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/high16 v6, 0x41900000    # 18.0f

    const/high16 v5, 0x41a00000    # 20.0f

    .line 2061
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2062
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2063
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2064
    return-object v0
.end method

.method private static centered(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 2170
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2171
    return-object p0
.end method

.method private static chip(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 1996
    const/high16 v0, 0x41500000    # 13.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1997
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1998
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

    .line 1999
    return-object v0
.end method

.method private static clientBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/high16 v12, 0x40c00000    # 6.0f

    const/16 v11, 0xe

    const/16 v10, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 611
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v4

    .line 612
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "Client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 614
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->profileOpen:Z

    if-nez v0, :cond_14f

    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_14f

    .line 615
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 616
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 617
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_12b

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "low fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v8, :cond_145

    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v8, "Female"

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_57
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u0433."

    const-string v8, " y"

    .line 621
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " kg \u00b7 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    sget v7, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 620
    invoke-static {p0, v0, v1, v7, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    const-string v0, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v1, "Edit"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 624
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$6;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 671
    :goto_ca
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 673
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 674
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-nez v0, :cond_23e

    .line 675
    const-string v0, "\u0418\u043c\u0430 \u043d\u0435\u0449\u043e \u0434\u043d\u0435\u0441? (\u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0435, \u0431\u043e\u043b\u0435\u0441\u0442\u2026)"

    const-string v1, "Something today? (contraindication, illness\u2026)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v0, v1, v6, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 677
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 678
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 679
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$11;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    :goto_104
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v1

    .line 736
    iget v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_2e0

    .line 737
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    const-string v1, "AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0435 \u0441\u0430\u043c\u043e \u0437\u0430 \u043f\u044a\u043b\u043d\u043e\u043b\u0435\u0442\u043d\u0438."

    const-string v2, "AI sessions are for adults only."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 738
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 737
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    :cond_12a
    :goto_12a
    return-void

    .line 618
    :cond_12b
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_13b

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "high fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 619
    :cond_13b
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_44

    .line 620
    :cond_145
    const-string v1, "\u041c\u044a\u0436"

    const-string v8, "Male"

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    .line 634
    :cond_14f
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 635
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "\u041c\u044a\u0436"

    const-string v7, "Male"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v7, "Female"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 636
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v7, :cond_23b

    move v0, v2

    :goto_171
    const/4 v7, 0x0

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$7;

    invoke-direct {v8, v4}, Lcom/isaigu/gymapp/ai/AiUi$7;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 635
    invoke-static {p0, v6, v0, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 642
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 635
    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "\u041d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v7, "Low fitness"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v6, "\u0421\u0440\u0435\u0434\u043d\u0430"

    const-string v7, "Mid"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    const/4 v6, 0x2

    const-string v7, "\u0412\u0438\u0441\u043e\u043a\u0430"

    const-string v8, "High"

    .line 644
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$8;

    invoke-direct {v8, v4}, Lcom/isaigu/gymapp/ai/AiUi$8;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 643
    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    .line 650
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 643
    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 652
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 653
    const-string v1, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v6, "Age"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v8, "years"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$9;

    invoke-direct {v8, v4}, Lcom/isaigu/gymapp/ai/AiUi$9;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 660
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 653
    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    const-string v1, "\u0422\u0435\u0433\u043b\u043e"

    const-string v6, "Weight"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kg"

    new-instance v8, Lcom/isaigu/gymapp/ai/AiUi$10;

    invoke-direct {v8, v4}, Lcom/isaigu/gymapp/ai/AiUi$10;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AiUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)Landroid/view/View;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 668
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 661
    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_ca

    :cond_23b
    move v0, v3

    .line 636
    goto/16 :goto_171

    .line 689
    :cond_23e
    const-string v0, "\u041e\u0442\u0431\u0435\u043b\u0435\u0436\u0438 \u043a\u0430\u043a\u0432\u043e \u0432\u0430\u0436\u0438"

    const-string v1, "Mark what applies"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 690
    sget-object v6, Lcom/isaigu/gymapp/ai/AiScreening;->CONTRAINDICATIONS:[Ljava/lang/String;

    array-length v7, v6

    move v1, v2

    :goto_251
    if-ge v1, v7, :cond_27e

    aget-object v8, v6, v1

    .line 691
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 692
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AiText;->contraindication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_27c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27c

    move v0, v3

    :goto_26c
    new-instance v10, Lcom/isaigu/gymapp/ai/AiUi$12;

    invoke-direct {v10, v4, v8}, Lcom/isaigu/gymapp/ai/AiUi$12;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)V

    invoke-static {p0, v9, v0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 690
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_251

    :cond_27c
    move v0, v2

    .line 692
    goto :goto_26c

    .line 700
    :cond_27e
    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0438\u043b\u0438 \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Fever or illness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->feverOrIllness:Z

    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$13;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/AiUi$13;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 708
    const-string v0, "\u0410\u043b\u043a\u043e\u0445\u043e\u043b \u0438\u043b\u0438 \u0441\u0438\u043b\u0435\u043d \u0441\u0442\u0440\u0435\u0441 (48 \u0447)"

    const-string v1, "Alcohol or heavy stress (48 h)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->alcoholOrStress48h:Z

    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$14;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/AiUi$14;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 716
    const-string v0, "\u0418\u0437\u0432\u0435\u0441\u0442\u043d\u0430 \u0430\u0440\u0438\u0442\u043c\u0438\u044f"

    const-string v1, "Known arrhythmia"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->knownArrhythmia:Z

    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$15;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/AiUi$15;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    const-string v0, "\u041b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430, \u043f\u043e\u043d\u0438\u0436\u0430\u0432\u0430\u0449\u0438 \u043f\u0443\u043b\u0441\u0430"

    const-string v1, "HR-lowering medication"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$16;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/ai/AiUi$16;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_104

    .line 739
    :cond_2e0
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_12a

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-eqz v0, :cond_12a

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\u041d\u0435 \u043c\u043e\u0436\u0435 \u0434\u043d\u0435\u0441: "

    const-string v4, "Not today: "

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    :goto_2f7
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_31c

    .line 742
    if-lez v2, :cond_319

    const-string v0, " \u00b7 "

    :goto_303
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiScreening$Result;->rejects:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->screeningCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f7

    .line 742
    :cond_319
    const-string v0, ""

    goto :goto_303

    .line 744
    :cond_31c
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->DANGER:I

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_12a
.end method

.method private static closeReport()V
    .registers 4

    .prologue
    .line 295
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->close()V

    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->dismiss()V

    .line 298
    :try_start_6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SessionRecorder;->finishAssisted()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    .line 302
    :goto_9
    return-void

    .line 299
    :catch_a
    move-exception v0

    .line 300
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

    .line 1903
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    move v5, v2

    .line 1904
    :goto_7
    const/16 v0, 0xa

    if-gt v5, v0, :cond_92

    .line 1906
    if-lt v5, p1, :cond_68

    if-gt v5, p2, :cond_68

    move v0, v1

    .line 1908
    :goto_10
    int-to-float v3, v5

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->heat(F)I

    move-result v7

    .line 1909
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

    .line 1910
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1911
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1912
    if-eqz v0, :cond_71

    .line 1913
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1918
    :goto_38
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1919
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1920
    if-eqz p3, :cond_48

    .line 1921
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$34;

    invoke-direct {v0, p3, v5}, Lcom/isaigu/gymapp/ai/AiUi$34;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1928
    :cond_48
    if-eqz p3, :cond_8a

    const/high16 v0, 0x42680000    # 58.0f

    :goto_4c
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 1929
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1930
    if-lez v5, :cond_90

    if-eqz p3, :cond_8d

    const/high16 v0, 0x41000000    # 8.0f

    :goto_5b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    :goto_5f
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1931
    invoke-virtual {v6, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1904
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_7

    :cond_68
    move v0, v2

    .line 1906
    goto :goto_10

    .line 1909
    :cond_6a
    const/high16 v3, 0x41700000    # 15.0f

    move v4, v3

    goto :goto_21

    :cond_6e
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto :goto_25

    .line 1915
    :cond_71
    const/16 v0, 0x22

    invoke-static {v7, v0}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1916
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/16 v8, 0x88

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v7

    invoke-virtual {v4, v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_38

    .line 1928
    :cond_8a
    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_4c

    .line 1930
    :cond_8d
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_5b

    :cond_90
    move v0, v2

    goto :goto_5f

    .line 1933
    :cond_92
    return-object v6
.end method

.method private static dismiss()V
    .registers 1

    .prologue
    .line 305
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 307
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_15

    .line 311
    :cond_9
    :goto_9
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    .line 312
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 314
    return-void

    .line 308
    :catch_15
    move-exception v0

    goto :goto_9
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 2208
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

.method private static ensurePlan(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 755
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 756
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v3, :cond_35

    move v0, v1

    .line 757
    :goto_d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getRestHr()Lcom/isaigu/gymapp/ai/AiRestHr;

    move-result-object v3

    .line 758
    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v5, :cond_37

    if-eqz v0, :cond_25

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_37

    .line 759
    :cond_25
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getSigma()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->getDtHrMs()J

    move-result-wide v2

    invoke-static {v0, v4, v5, v2, v3}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    .line 766
    :goto_34
    return v1

    :cond_35
    move v0, v2

    .line 756
    goto :goto_d

    .line 762
    :cond_37
    if-nez v0, :cond_4b

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->noBand:Z

    if-nez v0, :cond_43

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 763
    :cond_43
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AiSession;->buildPlan(IDJ)V

    goto :goto_34

    :cond_4b
    move v1, v2

    .line 766
    goto :goto_34
.end method

.method private static finishGoal(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 8

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0423\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430: "

    const-string v2, "Operated by: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->TRAINER:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v0, v2, :cond_79

    .line 564
    const-string v0, "\u0442\u0440\u0435\u043d\u044c\u043e\u0440 \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v2, "trainer \u00b7 change"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 563
    invoke-static {p0, v0, v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 567
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 568
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$5;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/AiUi$5;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 577
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-eqz v0, :cond_82

    const-string v0, "\u041a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v1, "To the plan"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->goalReady()Z

    move-result v0

    .line 580
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 581
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_9e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 582
    return-void

    .line 565
    :cond_79
    const-string v0, "\u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0430\u043c (\u043f\u043e-\u0442\u0435\u0441\u043d\u0438 \u0433\u0440\u0430\u043d\u0438\u0446\u0438) \u00b7 \u0441\u043c\u0435\u043d\u0438"

    const-string v2, "the client alone (tighter limits) \u00b7 change"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 578
    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0414\u043e\u0431\u0440\u0435 \u0435 \u0434\u043d\u0435\u0441 \u00b7 \u043a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v2, "Fine today \u00b7 to the plan"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_63

    .line 581
    :cond_9e
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_75
.end method

.method private static ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x41d00000    # 26.0f

    .line 2079
    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v0, v1, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2080
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2081
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2083
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const/high16 v2, 0x41d80000    # 27.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2084
    return-object v0
.end method

.method private static go(I)V
    .registers 5

    .prologue
    .line 334
    sput p0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    .line 335
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 337
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 338
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    const-string v1, "\u041d\u0430\u0437\u0430\u0434"

    const-string v2, "Back"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    .line 340
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    .line 342
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$StepListener;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiUi$StepListener;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    packed-switch p0, :pswitch_data_60

    .line 348
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenReport(Landroid/content/Context;)V

    .line 350
    :goto_49
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->renderDots(Landroid/content/Context;)V

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->refresh()V

    .line 352
    return-void

    .line 344
    :pswitch_50
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenGoal(Landroid/content/Context;)V

    goto :goto_49

    .line 345
    :pswitch_54
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenPlan(Landroid/content/Context;)V

    goto :goto_49

    .line 346
    :pswitch_58
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenCalib(Landroid/content/Context;)V

    goto :goto_49

    .line 347
    :pswitch_5c
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRun(Landroid/content/Context;)V

    goto :goto_49

    .line 343
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_50
        :pswitch_54
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method private static goalColor(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I
    .registers 3

    .prologue
    .line 2125
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$35;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 2130
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->PINK:I

    :goto_d
    return v0

    .line 2126
    :pswitch_e
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    goto :goto_d

    .line 2127
    :pswitch_11
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    goto :goto_d

    .line 2128
    :pswitch_14
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    goto :goto_d

    .line 2129
    :pswitch_17
    const v0, -0xbd5a0b

    goto :goto_d

    .line 2125
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method private static goalReady()Z
    .registers 3

    .prologue
    .line 586
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 587
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1a

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-eqz v1, :cond_18

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiScreening;->evaluate(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Lcom/isaigu/gymapp/ai/AiScreening$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiScreening$Result;->isRejected()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 10

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 2111
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v3, v6, [I

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    aput v4, v3, v5

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->ORANGE:I

    aput v4, v3, v1

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2113
    int-to-float v0, p2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2114
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2115
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2116
    add-int/lit8 v0, p2, -0x2

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2117
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v5

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2119
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2120
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 2121
    return-object v0
.end method

.method private static hasHealthFlag(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 600
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

    .line 601
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 605
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
    .line 2136
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiViews;->heatGradient()[I

    move-result-object v0

    .line 2137
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

    .line 2138
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    float-to-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2139
    int-to-float v3, v2

    sub-float/2addr v1, v3

    .line 2140
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
    .line 2181
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2183
    return-object v0
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 2054
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2055
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiUi;->sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2056
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2057
    return-object v0
.end method

.method private static lighten(I)I
    .registers 5

    .prologue
    const/16 v3, 0xff

    .line 2151
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x3c

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2152
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, 0x3c

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2153
    and-int/lit16 v2, p0, 0xff

    add-int/lit8 v2, v2, 0x3c

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2154
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
    .line 2201
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2203
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2204
    return-object v0
.end method

.method private static meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v1, 0x0

    .line 1937
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1938
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

    .line 1939
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v6, v0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1941
    const-string v0, ""

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v0, v6, v1, v7}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1942
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1943
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1944
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1945
    return-object v0

    :cond_4c
    move v0, v1

    .line 1938
    goto :goto_14
.end method

.method private static mix(IIF)I
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2144
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

    .line 2145
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

    .line 2146
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v2, v3

    and-int/lit16 v3, p1, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 2147
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
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 401
    if-gez p1, :cond_22

    .line 402
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v0, v2, :cond_12

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 403
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->stop()V

    .line 405
    :cond_12
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lez v0, :cond_21

    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v0, v3, :cond_21

    .line 406
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 438
    :cond_21
    :goto_21
    return-void

    .line 410
    :cond_22
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    packed-switch v0, :pswitch_data_6a

    :pswitch_27
    goto :goto_21

    .line 412
    :pswitch_28
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->goalReady()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 413
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    if-nez v0, :cond_34

    .line 414
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    .line 416
    :cond_34
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_21

    .line 420
    :pswitch_38
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_21

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->beginCalibration()V

    .line 422
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_21

    .line 426
    :pswitch_4d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isCalibStimOn()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getCalibPercent()I

    move-result v0

    if-lez v0, :cond_21

    .line 427
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isSoloRamping()Z

    move-result v0

    if-nez v0, :cond_21

    .line 428
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->startRun(Landroid/content/Context;)V

    .line 429
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_21

    .line 433
    :pswitch_66
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->closeReport()V

    goto :goto_21

    .line 410
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_38
        :pswitch_4d
        :pswitch_27
        :pswitch_66
    .end packed-switch
.end method

.method static open(Landroid/app/Activity;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 140
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    :cond_9
    :goto_9
    return-void

    .line 143
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_17

    .line 145
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9

    .line 148
    :cond_17
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_20

    .line 149
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9

    .line 152
    :cond_20
    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_54

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->conflict()Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_2e

    .line 155
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 158
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->beginSetup(Landroid/content/Context;)V

    .line 159
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiUi;->profileOpen:Z

    .line 160
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiUi;->healthOk:Z

    .line 161
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiUi;->noBand:Z

    .line 162
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->hasHealthFlag(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiUi;->healthOpen:Z

    .line 164
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-nez v0, :cond_50

    .line 165
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->acquireBand(Landroid/app/Activity;)V

    .line 167
    :cond_50
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->show(Landroid/app/Activity;I)V

    goto :goto_9

    .line 170
    :cond_54
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

    .line 2088
    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2089
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2090
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2091
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2092
    and-int v2, p2, v5

    const/high16 v3, 0x2e000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2093
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    and-int v3, p2, v5

    const/high16 v4, -0x67000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2094
    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2095
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2096
    return-object v0
.end method

.method private static primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 2069
    const/high16 v0, 0x41880000    # 17.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    invoke-static {p0, p1, v0, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2070
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 2071
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

    .line 2073
    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2074
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2075
    return-object v0
.end method

.method static refresh()V
    .registers 2

    .prologue
    .line 317
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->styleSideButton()V

    .line 318
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 331
    :cond_f
    :goto_f
    return-void

    .line 321
    :cond_10
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REPORT:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_22

    .line 322
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    goto :goto_f

    .line 325
    :cond_22
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 327
    :try_start_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_3b

    .line 325
    :goto_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 328
    :catch_3b
    move-exception v0

    goto :goto_37
.end method

.method private static renderDots(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v5, 0x0

    .line 365
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 366
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-lt v0, v10, :cond_f

    .line 385
    :cond_e
    return-void

    :cond_f
    move v6, v5

    .line 369
    :goto_10
    if-ge v6, v10, :cond_e

    .line 370
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 371
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ne v6, v0, :cond_6b

    move v3, v4

    .line 372
    :goto_1c
    if-eqz v3, :cond_6d

    .line 373
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

    .line 376
    :goto_31
    if-nez v3, :cond_3c

    .line 377
    sget v0, Lcom/isaigu/gymapp/ai/AiUi;->step:I

    if-ge v6, v0, :cond_74

    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    :goto_39
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 379
    :cond_3c
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 380
    invoke-virtual {v7, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_7d

    const/high16 v0, 0x41e00000    # 28.0f

    :goto_4f
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 382
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 383
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10

    :cond_6b
    move v3, v5

    .line 371
    goto :goto_1c

    .line 375
    :cond_6d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v2, v0

    goto :goto_31

    .line 377
    :cond_74
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/16 v8, 0x30

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v0

    goto :goto_39

    :cond_7d
    move v0, v1

    .line 381
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

    .line 1457
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v3

    .line 1458
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v0, :cond_29

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->isManualContinue()Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v1

    .line 1459
    :goto_17
    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    if-ne v3, v4, :cond_2b

    const-string v3, "cp"

    .line 1463
    :goto_1d
    if-nez v3, :cond_72

    .line 1464
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1524
    :cond_28
    :goto_28
    return-void

    :cond_29
    move v0, v2

    .line 1458
    goto :goto_17

    .line 1460
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

    .line 1461
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

    .line 1462
    :cond_70
    const/4 v3, 0x0

    goto :goto_1d

    .line 1468
    :cond_72
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1469
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1470
    if-eqz v0, :cond_28

    .line 1471
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    goto :goto_28

    .line 1475
    :cond_85
    if-eqz v0, :cond_94

    .line 1476
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1477
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1478
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiUi;->buildRestCard(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/isaigu/gymapp/ai/AiEngine;)V

    .line 1479
    invoke-static {p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiUi;->updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V

    goto :goto_28

    .line 1482
    :cond_94
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1483
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1484
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1485
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1486
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1487
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/16 v5, 0x18

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1488
    const-string v0, "cp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 1489
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v0

    .line 1490
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

    .line 1491
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

    .line 1493
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$25;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$25;-><init>()V

    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x16

    .line 1498
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1493
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1522
    :goto_12c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_28

    .line 1500
    :cond_13a
    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AiEngine;->canResume()Z

    move-result v3

    .line 1501
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

    .line 1503
    if-eqz v3, :cond_1a7

    .line 1504
    const-string v0, "\u041f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043f\u043e\u0434 \u0437\u043e\u043d\u0430\u0442\u0430 \u0437\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u043f\u043e\u0432\u0435\u0447\u0435 \u043e\u0442 30 s. \u041c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438\u0448."

    const-string v1, "HR has been below the recovery level for over 30 s. You may continue."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    :goto_15d
    const/high16 v1, 0x41700000    # 15.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    .line 1503
    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1509
    const-string v0, "\u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->primaryButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1510
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1511
    if-eqz v3, :cond_1db

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_17f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1512
    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$26;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiUi$26;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1519
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1520
    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12c

    .line 1508
    :cond_1a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0421\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f\u0442\u0430 \u0435 \u0441\u043f\u0440\u044f\u043d\u0430. \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430\u043d\u0435\u0442\u043e \u0441\u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0432\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043f\u0443\u043b\u0441\u044a\u0442 \u043f\u0430\u0434\u043d\u0435 \u043f\u043e\u0434 "

    const-string v5, "Stimulation is off. Continue unlocks when HR stays below "

    .line 1506
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1508
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

    .line 1511
    :cond_1db
    const v0, 0x3eb33333    # 0.35f

    goto :goto_17f
.end method

.method private static roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1874
    const/high16 v0, 0x41d00000    # 26.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1875
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1876
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1877
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1878
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1879
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1880
    return-object v0
.end method

.method private static rounded(IIII)Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .prologue
    .line 2100
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2101
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2102
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2103
    if-lez p3, :cond_13

    .line 2104
    mul-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2106
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

    .line 1063
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 1064
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v1, v2, :cond_128

    move v7, v0

    .line 1065
    :goto_15
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "Strength calibration"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
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

    .line 1067
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 1069
    const/16 v1, 0x10

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1070
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1071
    new-instance v2, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {v2, p0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1072
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v1, v4, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 1074
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1075
    const-string v1, "0%"

    const/high16 v4, 0x42700000    # 60.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v1, v4, v10, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1076
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1077
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1078
    const-string v4, ""

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v4, v10, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1079
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1080
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1081
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1084
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 1085
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v9, v5, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1086
    if-eqz v7, :cond_12b

    .line 1087
    const-string v5, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e \u0441\u0430\u043c\u0430. \u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u0414\u043e\u0441\u0442\u0430\u0442\u044a\u0447\u043d\u043e\u201c, \u043a\u043e\u0433\u0430\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435\u0442\u043e \u0441\u0442\u0438\u0433\u043d\u0435 \u0446\u0435\u043b\u0442\u0430."

    const-string v10, "Strength rises smoothly by itself. Tap \u201cEnough\u201d when the sensation reaches the target."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1089
    :goto_d0
    const/high16 v10, 0x41700000    # 15.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    .line 1086
    invoke-static {p0, v5, v10, v11, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1092
    iget v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    iget v10, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    const/4 v11, 0x0

    invoke-static {p0, v5, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->cr10Scale(Landroid/content/Context;IILcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v5

    const/16 v10, 0x12

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1094
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v6, v10, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1095
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1096
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1098
    const-string v6, "\u0417\u0430\u043f\u043e\u0447\u043d\u0438 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v8, "Start session"

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v0}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1100
    sget-object v8, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$18;

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AiUi$18;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/content/Context;Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    return-void

    :cond_128
    move v7, v6

    .line 1064
    goto/16 :goto_15

    .line 1089
    :cond_12b
    const-string v5, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441 \u043f\u043b\u044a\u0437\u0433\u0430\u0447\u0438\u0442\u0435 \u043a\u0430\u043a\u0442\u043e \u043e\u0431\u0438\u043a\u043d\u043e\u0432\u0435\u043d\u043e, \u043f\u043e\u0441\u043b\u0435 \u0432\u0434\u0438\u0433\u0430\u0439 \u043e\u0431\u0449\u0430\u0442\u0430 \u0441\u0438\u043b\u0430 \u0434\u043e \u0446\u0435\u043b\u0435\u0432\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435."

    const-string v10, "Set the muscles with the sliders as usual, then raise overall strength to the target sensation."

    invoke-static {v5, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d0
.end method

.method private static screenGoal(Landroid/content/Context;)V
    .registers 16

    .prologue
    .line 443
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    .line 444
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->leaderName()Ljava/lang/String;

    move-result-object v1

    .line 445
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441 AI"

    const-string v4, "Workout with AI"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 449
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->workoutBanner(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_42

    .line 452
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->clientBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 454
    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->finishGoal(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 558
    :goto_38
    return-void

    .line 446
    :cond_39
    const-string v0, "\u041a\u0430\u043a\u0432\u0430 \u0435 \u0446\u0435\u043b\u0442\u0430 \u0434\u043d\u0435\u0441?"

    const-string v4, "What is today\'s goal?"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 457
    :cond_42
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 458
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_5b

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_5b

    .line 460
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 462
    :cond_5b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_62
    if-ge v1, v7, :cond_151

    aget-object v0, v6, v1

    .line 463
    sget-object v8, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v8, :cond_74

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v8, v9, :cond_74

    .line 462
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    .line 466
    :cond_74
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 467
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

    .line 468
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 469
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 470
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

    .line 471
    const/high16 v11, 0x40400000    # 3.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 472
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41b00000    # 22.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v12, 0x1

    invoke-static {p0, v9, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 475
    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 476
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->goalHint(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x41500000    # 13.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v12, 0x0

    invoke-static {p0, v9, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    new-instance v9, Lcom/isaigu/gymapp/ai/AiUi$1;

    invoke-direct {v9, v2, v0}, Lcom/isaigu/gymapp/ai/AiUi$1;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Goal;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v9, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v9, v0, :cond_13f

    const/4 v0, 0x1

    .line 493
    :goto_113
    if-eqz v0, :cond_141

    .line 494
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD2:I

    const/16 v9, 0x12

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->gradientStroke(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 493
    :goto_11d
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 498
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_137

    .line 499
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 501
    :cond_137
    invoke-virtual {v4, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_70

    .line 492
    :cond_13f
    const/4 v0, 0x0

    goto :goto_113

    .line 495
    :cond_141
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v9, 0x41900000    # 18.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v9

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v11, 0x1

    invoke-static {v0, v9, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto :goto_11d

    .line 504
    :cond_151
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v5, 0x43160000    # 150.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 508
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_255

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_255

    const/4 v0, 0x1

    move v1, v0

    .line 509
    :goto_17a
    if-eqz v1, :cond_1b2

    .line 510
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

    .line 511
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 512
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v6, :cond_259

    const/4 v0, 0x0

    :goto_19c
    const/4 v6, 0x0

    new-instance v7, Lcom/isaigu/gymapp/ai/AiUi$2;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/ai/AiUi$2;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    .line 510
    invoke-static {p0, v5, v0, v6, v7}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    :cond_1b2
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_25c

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    :goto_1bc
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 522
    if-eqz v1, :cond_1cf

    .line 523
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 525
    :cond_1cf
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

    .line 532
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 534
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 535
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 540
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-ne v0, v1, :cond_21c

    .line 541
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    iput-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 543
    :cond_21c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 544
    const-string v0, "\u0414\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 (\u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u043f\u0430\u0443\u0437\u0430)"

    const-string v4, "Double impulse (active pause)"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq v0, v5, :cond_264

    const/4 v0, 0x1

    :goto_22f
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$4;

    invoke-direct {v5, v2}, Lcom/isaigu/gymapp/ai/AiUi$4;-><init>(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    invoke-static {p0, v4, v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 551
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 553
    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 554
    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    :cond_24d
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->clientBlock(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 557
    invoke-static {p0, v3, v2}, Lcom/isaigu/gymapp/ai/AiUi;->finishGoal(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V

    goto/16 :goto_38

    .line 508
    :cond_255
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_17a

    .line 512
    :cond_259
    const/4 v0, 0x1

    goto/16 :goto_19c

    .line 520
    :cond_25c
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPlanner;->defaultSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;)I

    move-result v0

    goto/16 :goto_1bc

    .line 544
    :cond_264
    const/4 v0, 0x0

    goto :goto_22f
.end method

.method private static screenPlan(Landroid/content/Context;)V
    .registers 15

    .prologue
    .line 952
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->ensurePlan(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 953
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->screenRest(Landroid/content/Context;)V

    .line 1044
    :goto_9
    return-void

    .line 956
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v6

    .line 957
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v7

    .line 958
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v8

    .line 959
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v1, "\u0422\u0432\u043e\u044f\u0442 \u043f\u043b\u0430\u043d"

    const-string v2, "Your plan"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
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

    .line 961
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v3, :cond_1be

    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u043e"

    const-string v3, "active"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v2, v2

    .line 962
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 964
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 965
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 967
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iget v2, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;ILcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v1

    .line 968
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-direct {v11, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 970
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 971
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v2, :cond_1c8

    const/4 v2, 0x1

    :goto_93
    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    const/16 v4, 0xa0

    const/16 v5, 0x78

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/ProgramArt;->tile(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiModel$Sex;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 972
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

    .line 973
    const-string v0, "\u041f\u043e\u043a\u043e\u0439"

    const-string v1, "Rest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1cb

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

    :goto_dd
    iget-boolean v1, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v1, :cond_1cf

    move-object v1, v2

    :goto_e2
    invoke-static {p0, v10, v3, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_1f8

    .line 975
    iget-wide v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->xLo:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1d3

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

    .line 977
    :goto_10a
    const-string v1, "\u041a\u043e\u0440\u0438\u0434\u043e\u0440"

    const-string v3, "Corridor"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v3, :cond_1fc

    :goto_116
    invoke-static {p0, v10, v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->bigTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
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

    .line 979
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 982
    new-instance v0, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 983
    invoke-virtual {v0, v6}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 984
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 985
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 986
    const/4 v0, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 987
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_161
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_200

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 988
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 989
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

    .line 990
    invoke-static {v11}, Lcom/isaigu/gymapp/ai/AiViews;->phaseColor(Lcom/isaigu/gymapp/ai/AiModel$PhaseId;)I

    move-result v11

    const/4 v12, 0x1

    .line 989
    invoke-static {p0, v5, v10, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 991
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 992
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const v12, 0x3df5c28f    # 0.12f

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-float v0, v0

    iget v13, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-float v13, v13

    div-float/2addr v0, v13

    .line 993
    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {v5, v10, v11, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 992
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_161

    .line 961
    :cond_1be
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u043e"

    const-string v3, "passive"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_48

    .line 971
    :cond_1c8
    const/4 v2, 0x0

    goto/16 :goto_93

    .line 973
    :cond_1cb
    const-string v0, "\u2014"

    goto/16 :goto_dd

    :cond_1cf
    const-string v1, ""

    goto/16 :goto_e2

    .line 975
    :cond_1d3
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

    goto/16 :goto_10a

    .line 976
    :cond_1f8
    const-string v0, "\u2014"

    goto/16 :goto_10a

    .line 977
    :cond_1fc
    const-string v2, ""

    goto/16 :goto_116

    .line 995
    :cond_200
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 996
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->workoutBanner(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 999
    if-eqz v0, :cond_21b

    .line 1000
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    :cond_21b
    iget-object v0, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    iget v2, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    iget-object v3, v8, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;ILcom/isaigu/gymapp/ai/AiModel$Sex;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    if-eqz v0, :cond_29b

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->usesMachine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 1005
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 1006
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1007
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1008
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

    .line 1010
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

    .line 1011
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoHistory;->cardioMachine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_338

    const/4 v0, 0x0

    :goto_279
    const/4 v3, 0x0

    new-instance v4, Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;-><init>(Landroid/content/Context;)V

    .line 1010
    invoke-static {p0, v2, v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x43820000    # 260.0f

    .line 1012
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1010
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    :cond_29b
    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-nez v0, :cond_2b6

    .line 1018
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    const-string v1, "\u0411\u0435\u0437 \u0433\u0440\u0438\u0432\u043d\u0430 \u2014 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0430\u043c\u043e \u043f\u043b\u0430\u043d\u044a\u0442."

    const-string v2, "No band \u2014 the plan alone controls."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xe

    .line 1019
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 1018
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    :cond_2b6
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u21bb  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrAvailable:Z

    if-eqz v0, :cond_33b

    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 \u043f\u0430\u043a"

    const-string v2, "Measure the resting HR again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    :goto_2d3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v3, 0x1

    .line 1022
    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 1024
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1025
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$MeasureAgain;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiUi$MeasureAgain;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1028
    :cond_30a
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AiModel$Profile;->flags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_310
    :goto_310
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_344

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1029
    const-string v2, "NO_BAND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_310

    .line 1030
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiText;->flag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_310

    .line 1011
    :cond_338
    const/4 v0, 0x1

    goto/16 :goto_279

    .line 1023
    :cond_33b
    const-string v0, "\u0418\u0437\u043c\u0435\u0440\u0438 \u043f\u0443\u043b\u0441\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v2, "Measure the resting HR with the band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d3

    .line 1034
    :cond_344
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    if-eqz v0, :cond_3a3

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a3

    .line 1035
    const-string v0, "x"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38b

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesBg:Ljava/util/List;

    .line 1036
    :goto_364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0417\u0430 \u0442\u043e\u0437\u0438 \u043a\u043b\u0438\u0435\u043d\u0442:"

    const-string v3, "For this client:"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_375
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_390

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1038
    const-string v3, "\n\u2022 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_375

    .line 1035
    :cond_38b
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiModel$Plan;->personal:Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->notesEn:Ljava/util/List;

    goto :goto_364

    .line 1040
    :cond_390
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->banner(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    :cond_3a3
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1043
    const-string v0, "\u041a\u0430\u043b\u0438\u0431\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "Calibrate strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_9
.end method

.method private static screenReport(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1610
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 1611
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v2, "\u041e\u0442\u0447\u0435\u0442"

    const-string v3, "Report"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1612
    if-nez v1, :cond_27

    .line 1613
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1614
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1698
    :goto_26
    return-void

    .line 1617
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

    .line 1618
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1619
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1620
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1621
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1622
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1625
    const-string v0, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u043e\u0442\u0447\u0435\u0442\u0430"

    const-string v5, "Share report"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiUi;->ghostButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1626
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$28;

    invoke-direct {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$28;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1632
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x42580000    # 54.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1633
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1634
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    const-string v5, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1635
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

    .line 1637
    sget-object v6, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$29;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiUi$29;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

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

    .line 770
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->titleView:Landroid/widget/TextView;

    const-string v3, "\u041f\u0443\u043b\u0441 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v4, "Resting heart rate"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v3, "\u0421\u0435\u0434\u043d\u0438 \u0438\u043b\u0438 \u043b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0431\u0435\u0437 \u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0446\u0438\u044f \u00b7 \u043f\u043b\u0430\u043d\u044a\u0442 \u0438\u0434\u0432\u0430 \u0441\u0430\u043c"

    const-string v4, "Sit or lie still, no stimulation \u00b7 the plan follows by itself"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->operator:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Operator;->SELF:Lcom/isaigu/gymapp/ai/AiModel$Operator;

    if-ne v2, v3, :cond_139

    move v4, v0

    .line 774
    :goto_2d
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 775
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 777
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 778
    new-instance v6, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    invoke-direct {v6, p0, v12}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 779
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 781
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 782
    const-string v5, "--"

    const/high16 v8, 0x42800000    # 64.0f

    sget v9, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v5, v8, v9, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 783
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 784
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 785
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

    .line 786
    const-string v8, ""

    const/high16 v9, 0x41700000    # 15.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    invoke-static {p0, v8, v9, v10, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v9

    .line 787
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 788
    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v9, v1, v8, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 789
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 793
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 794
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v10, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 795
    const-string v2, ""

    const/high16 v7, 0x41a00000    # 20.0f

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v2, v7, v8, v0}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 796
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 797
    const-string v2, ""

    sget v8, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v2, v12, v8, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 798
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v1, v2, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 799
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 801
    const/high16 v11, 0x41900000    # 18.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v2, v1, v11, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 802
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 803
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v1, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    sget-object v10, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 805
    const-string v3, "\u041a\u044a\u043c \u043f\u043b\u0430\u043d\u0430"

    const-string v10, "To the plan"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/ai/AiUi;->setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 806
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 807
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 809
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->isBandConfigured(Landroid/content/Context;)Z

    move-result v1

    .line 810
    if-eqz v1, :cond_12d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isBandStreaming()Z

    move-result v0

    if-nez v0, :cond_12d

    .line 811
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->acquireBand(Landroid/app/Activity;)V

    .line 814
    :cond_12d
    sget-object v10, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v0, Lcom/isaigu/gymapp/ai/AiUi$17;

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AiUi$17;-><init>(ZLandroid/widget/LinearLayout;Landroid/content/Context;ZLandroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    return-void

    :cond_139
    move v4, v1

    .line 773
    goto/16 :goto_2d
.end method

.method private static screenRun(Landroid/content/Context;)V
    .registers 44

    .prologue
    .line 1165
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v6

    .line 1166
    if-nez v6, :cond_b

    .line 1167
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 1448
    :goto_a
    return-void

    .line 1170
    :cond_b
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v16

    .line 1171
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v18

    .line 1172
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

    .line 1173
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->subtitleView:Landroid/widget/TextView;

    const-string v7, "AI \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u0430\u0443\u0437\u0438\u0442\u0435 \u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435. \u0421\u0442\u043e\u043f\u044a\u0442 \u0435 \u0432\u0438\u043d\u0430\u0433\u0438 \u043d\u0430\u043b\u0438\u0447\u0435\u043d."

    const-string v8, "AI manages strength, pauses and rests. Stop is always available."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1177
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v32

    .line 1178
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v30

    .line 1181
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getExercises()Lcom/isaigu/gymapp/ai/AiExercises;

    move-result-object v5

    if-eqz v5, :cond_68e

    const/4 v8, 0x1

    .line 1182
    :goto_64
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v19

    .line 1183
    new-instance v9, Lcom/isaigu/gymapp/ai/ExerciseFigure;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;-><init>(Landroid/content/Context;)V

    .line 1184
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->colorFor(Lcom/isaigu/gymapp/ai/AiModel$Sex;)I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->setColor(I)V

    .line 1185
    const-string v5, ""

    const/high16 v7, 0x41c00000    # 24.0f

    sget v10, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v10, v11}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 1186
    const-string v5, ""

    const/high16 v7, 0x41600000    # 14.0f

    sget v11, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v11, v12}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v11

    .line 1187
    const-string v7, ""

    if-eqz v8, :cond_691

    const/high16 v5, 0x41880000    # 17.0f

    :goto_9c
    sget v12, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v12, v13}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 1188
    const-string v5, ""

    const/high16 v12, 0x41800000    # 16.0f

    sget v13, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13, v15}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v12

    .line 1189
    const-string v5, ""

    const/high16 v13, 0x41500000    # 13.0f

    sget v15, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v5, v13, v15, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v13

    .line 1190
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

    .line 1191
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v5, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1193
    if-eqz v8, :cond_12d

    .line 1194
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/high16 v17, 0x42ec0000    # 118.0f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v5, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1195
    const/high16 v15, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v15

    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1196
    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1198
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1199
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1201
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

    .line 1202
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1203
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1204
    new-instance v15, Lcom/isaigu/gymapp/ai/AiViews$Timeline;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;-><init>(Landroid/content/Context;)V

    .line 1205
    invoke-virtual/range {v15 .. v16}, Lcom/isaigu/gymapp/ai/AiViews$Timeline;->setPlan(Lcom/isaigu/gymapp/ai/AiModel$Plan;)V

    .line 1206
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

    .line 1207
    if-eqz v8, :cond_699

    const/high16 v5, 0x41200000    # 10.0f

    :goto_177
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    move-object/from16 v0, v17

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1208
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1209
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

    .line 1210
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

    .line 1211
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1212
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

    .line 1215
    new-instance v5, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1216
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

    .line 1217
    new-instance v20, Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v19, 0x41800000    # 16.0f

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;-><init>(Landroid/content/Context;F)V

    .line 1218
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

    .line 1219
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1220
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v22

    .line 1221
    const/16 v19, 0x11

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1222
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

    .line 1223
    const/16 v21, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1224
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1225
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

    .line 1226
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

    .line 1227
    const/16 v23, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1228
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

    .line 1229
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1230
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

    .line 1231
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, 0x0

    const/high16 v24, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v25}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1232
    const/high16 v23, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1233
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1237
    new-instance v22, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1238
    const-string v23, "\u0421\u0438\u043b\u0430"

    const-string v24, "Strength"

    invoke-static/range {v23 .. v24}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v23

    .line 1239
    new-instance v24, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1240
    const-string v25, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430"

    const-string v26, "Muscle fatigue"

    invoke-static/range {v25 .. v26}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v25

    .line 1241
    new-instance v26, Lcom/isaigu/gymapp/ai/AiViews$Bar;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiViews$Bar;-><init>(Landroid/content/Context;)V

    .line 1242
    const-string v27, "\u0414\u043e\u0437\u0430"

    const-string v28, "Dose"

    invoke-static/range {v27 .. v28}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/ai/AiUi;->meter(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AiViews$Bar;)Landroid/widget/TextView;

    move-result-object v27

    .line 1243
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

    .line 1244
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

    .line 1245
    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1246
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

    .line 1247
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

    .line 1248
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1249
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v33, 0x0

    const/16 v34, -0x1

    const/high16 v35, 0x3f800000    # 1.0f

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1250
    const/high16 v33, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1251
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
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

    .line 1255
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 1256
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1257
    const/16 v30, 0x10

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1258
    new-instance v30, Landroid/view/View;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1259
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

    .line 1261
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1262
    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1263
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

    .line 1264
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

    .line 1265
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

    .line 1266
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

    .line 1267
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

    .line 1268
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1269
    const/16 v33, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1270
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1273
    new-instance v36, Landroid/widget/FrameLayout;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1274
    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->BG:I

    const/16 v32, 0xe6

    move/from16 v0, v32

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/ai/AiViews;->alpha(II)I

    move-result v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1275
    const/16 v5, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1276
    const/4 v5, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1277
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v14, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1279
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->body:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1283
    const-string v5, ""

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v32

    .line 1284
    const/4 v5, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1285
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$19;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$19;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    const-string v5, "\u2212  \u0421\u0438\u043b\u0430"

    const-string v14, "\u2212  Strength"

    invoke-static {v5, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->WARN:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v33

    .line 1292
    const/4 v5, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1293
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$20;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$20;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1299
    const-string v5, "+  \u0421\u0438\u043b\u0430"

    const-string v14, "+  Strength"

    invoke-static {v5, v14}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->OK:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v34

    .line 1300
    const/4 v5, 0x2

    const/high16 v14, 0x41900000    # 18.0f

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1301
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$21;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$21;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    const-string v5, ""

    sget v14, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14}, Lcom/isaigu/gymapp/ai/AiUi;->pillButton(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v35

    .line 1308
    const/4 v5, 0x2

    const/high16 v14, 0x41800000    # 16.0f

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1309
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$22;

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiUi$22;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
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

    .line 1316
    const/16 v5, 0x11

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1317
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

    .line 1318
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$23;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiUi$23;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
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

    .line 1326
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

    .line 1327
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

    .line 1328
    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    move-object/from16 v0, v41

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1329
    sget-object v5, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1326
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto :goto_64e

    .line 1181
    :cond_68e
    const/4 v8, 0x0

    goto/16 :goto_64

    .line 1187
    :cond_691
    const/high16 v5, 0x41f00000    # 30.0f

    goto/16 :goto_9c

    .line 1201
    :cond_695
    const/high16 v5, 0x41600000    # 14.0f

    goto/16 :goto_132

    .line 1207
    :cond_699
    const/high16 v5, 0x41b00000    # 22.0f

    goto/16 :goto_177

    .line 1252
    :cond_69d
    const/high16 v5, 0x43a00000    # 320.0f

    goto/16 :goto_411

    .line 1327
    :cond_6a1
    const/high16 v5, 0x43200000    # 160.0f

    goto :goto_65e

    .line 1331
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

    .line 1332
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

    .line 1334
    sget-object v37, Lcom/isaigu/gymapp/ai/AiUi;->refreshers:Ljava/util/List;

    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$24;

    move-object/from16 v14, p0

    invoke-direct/range {v5 .. v36}, Lcom/isaigu/gymapp/ai/AiUi$24;-><init>(Lcom/isaigu/gymapp/ai/AiEngine;Landroid/widget/TextView;ZLcom/isaigu/gymapp/ai/ExerciseFigure;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Lcom/isaigu/gymapp/ai/AiViews$Timeline;Lcom/isaigu/gymapp/ai/AiModel$Plan;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiModel$Profile;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Ring;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Lcom/isaigu/gymapp/ai/AiViews$Bar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V

    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a
.end method

.method private static scroll(Landroid/content/Context;Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    .line 2187
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 2189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2190
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2191
    return-object v0
.end method

.method private static sectionLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2046
    const/high16 v0, 0x41400000    # 12.0f

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p1, v0, v1, v3}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 2047
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 2048
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 2049
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2050
    return-object v0
.end method

.method private static segmented(Landroid/content/Context;[Ljava/lang/String;I[ZLcom/isaigu/gymapp/ai/AiUi$SegmentCallback;)Landroid/view/View;
    .registers 15

    .prologue
    .line 1812
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1813
    sget v0, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1814
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

    .line 1815
    const/4 v0, 0x0

    :goto_32
    array-length v1, p1

    if-ge v0, v1, :cond_bd

    .line 1817
    if-eqz p3, :cond_3b

    aget-boolean v1, p3, v0

    if-eqz v1, :cond_aa

    :cond_3b
    const/4 v1, 0x1

    move v3, v1

    .line 1818
    :goto_3d
    if-ne v0, p2, :cond_ad

    const/4 v1, 0x1

    .line 1819
    :goto_40
    aget-object v5, p1, v0

    const/high16 v6, 0x41700000    # 15.0f

    if-eqz v1, :cond_af

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->ON_ACCENT:I

    :goto_48
    invoke-static {p0, v5, v6, v2, v1}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 1821
    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1822
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

    .line 1823
    if-eqz v1, :cond_8f

    .line 1824
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

    .line 1826
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1827
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1829
    :cond_8f
    if-eqz v3, :cond_9b

    if-nez v1, :cond_9b

    .line 1830
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$30;

    invoke-direct {v1, p4, v0}, Lcom/isaigu/gymapp/ai/AiUi$30;-><init>(Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1837
    :cond_9b
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1817
    :cond_aa
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3d

    .line 1818
    :cond_ad
    const/4 v1, 0x0

    goto :goto_40

    .line 1820
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

    .line 1839
    :cond_bd
    return-object v4
.end method

.method private static setupFooter(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 355
    if-eqz p2, :cond_15

    .line 356
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->footer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi;->backBtn:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42580000    # 54.0f

    .line 357
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
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

    .line 360
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->primaryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
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

    .line 362
    return-void
.end method

.method private static shareReport(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AiEngine;)V
    .registers 12

    .prologue
    .line 1701
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 1741
    :cond_4
    :goto_4
    return-void

    .line 1704
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1705
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    .line 1706
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getProfile()Lcom/isaigu/gymapp/ai/AiModel$Profile;

    move-result-object v1

    .line 1707
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

    .line 1708
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1709
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

    .line 1710
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$Profile;->hrCap:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 \u043a\u043e\u0440\u0438\u0434\u043e\u0440 x "

    const-string v4, " \u00b7 corridor x "

    .line 1711
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

    .line 1712
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

    .line 1713
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

    .line 1714
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

    .line 1715
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

    .line 1716
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

    .line 1717
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

    .line 1718
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

    .line 1719
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEnergy()Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    if-eqz v0, :cond_308

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, ", VO2max %.0f, %.0f kg"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1720
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

    .line 1719
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1bf
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    .line 1721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
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

    .line 1723
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

    .line 1724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getFlags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nblocks: #,phase,t_block,t_rest,q,F_end,dHR,R,D,tau,V\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
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

    .line 1726
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%s,%.0f,%.0f,%.0f,%.1f,%.1f,%.2f,%.2f,%.1f,%.2f%n"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;->index:I

    .line 1727
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

    .line 1726
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23c

    .line 1711
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

    .line 1713
    :cond_2d0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_c6

    .line 1715
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

    .line 1716
    :cond_2f6
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrr60()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_13f

    .line 1717
    :cond_304
    const-string v0, "-"

    goto/16 :goto_16e

    .line 1720
    :cond_308
    const-string v0, ""

    goto/16 :goto_1bf

    .line 1729
    :cond_30c
    const-string v0, "\nlog:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
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

    .line 1731
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_319

    .line 1733
    :cond_32f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1734
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v3, "XEMS AI \u043e\u0442\u0447\u0435\u0442"

    const-string v4, "XEMS AI report"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
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

    .line 1739
    :catch_362
    move-exception v0

    goto/16 :goto_4
.end method

.method static show()V
    .registers 1

    .prologue
    .line 176
    :try_start_0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 182
    :goto_c
    return-void

    .line 179
    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->open(Landroid/app/Activity;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_c

    .line 180
    :catch_16
    move-exception v0

    goto :goto_c
.end method

.method private static show(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 196
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 197
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->buildShell(Landroid/app/Activity;)V

    .line 199
    :cond_f
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiUi;->go(I)V

    .line 200
    return-void
.end method

.method private static statTile(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/high16 v4, 0x41800000    # 16.0f

    const/4 v6, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    .line 1949
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1950
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1951
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1952
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v5, v1, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1953
    const-string v1, "\u2014"

    const/high16 v2, 0x41b00000    # 22.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 1954
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1955
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1956
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_5a

    .line 1957
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1959
    :cond_5a
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1960
    return-object v1
.end method

.method private static stepForStage(Lcom/isaigu/gymapp/ai/AiSession$Stage;)I
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 185
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi$35;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_10

    .line 189
    const/4 v0, 0x0

    :goto_d
    :pswitch_d
    return v0

    .line 188
    :pswitch_e
    const/4 v0, 0x2

    goto :goto_d

    .line 185
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_e
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

    .line 1843
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1844
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1845
    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->CARD:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->STROKE:I

    invoke-static {v1, v2, v3, v6}, Lcom/isaigu/gymapp/ai/AiUi;->rounded(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1846
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1847
    const-string v1, "\u2212"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1848
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$31;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$31;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1854
    const-string v2, "+"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->roundKey(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 1855
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$32;

    invoke-direct {v3, p3}, Lcom/isaigu/gymapp/ai/AiUi$32;-><init>(Lcom/isaigu/gymapp/ai/AiUi$StepperCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1861
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1862
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1863
    const/high16 v4, 0x42080000    # 34.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v4, v5, v6}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 1864
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1865
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1866
    const/high16 v4, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, p2, v4, v5, v8}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiUi;->centered(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1867
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1868
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1869
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1870
    return-object v0
.end method

.method private static styleSideButton()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 119
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 130
    :goto_5
    return-void

    .line 122
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v2, :cond_3d

    move v0, v1

    .line 124
    :goto_f
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 125
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 126
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 127
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

    .line 128
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    sget v1, Lcom/isaigu/gymapp/ai/AiViews;->VIOLET:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->sideButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 122
    :cond_3d
    const/4 v0, 0x0

    goto :goto_f

    .line 127
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

    .line 1985
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 1986
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1987
    const/4 v0, 0x7

    new-array v5, v0, [F

    fill-array-data v5, :array_48

    move v0, v1

    .line 1988
    :goto_19
    array-length v2, p2

    if-ge v0, v2, :cond_47

    .line 1989
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

    .line 1990
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v7, v5, v7

    invoke-direct {v3, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1988
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1989
    :cond_40
    const/high16 v2, 0x41600000    # 14.0f

    move v3, v2

    goto :goto_23

    :cond_44
    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    goto :goto_27

    .line 1992
    :cond_47
    return-object v4

    .line 1987
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
    .line 2158
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2159
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2161
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 2163
    if-eqz p4, :cond_1f

    .line 2164
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2166
    :cond_1f
    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2213
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 2216
    :goto_8
    return-void

    .line 2214
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method private static toggleRow(Landroid/content/Context;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    .line 1884
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1885
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1886
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1887
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1889
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1890
    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1891
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$33;

    invoke-direct {v2, p3}, Lcom/isaigu/gymapp/ai/AiUi$33;-><init>(Lcom/isaigu/gymapp/ai/AiUi$ToggleCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1897
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1898
    return-object v0
.end method

.method private static updateRestCard(Lcom/isaigu/gymapp/ai/AiEngine;J)V
    .registers 14

    .prologue
    .line 1577
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    if-nez v0, :cond_5

    .line 1605
    :goto_4
    return-void

    .line 1580
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestS(J)D

    move-result-wide v2

    .line 1581
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrS()D

    move-result-wide v4

    .line 1582
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_8a

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getHrAgeMs(J)J

    move-result-wide v0

    const-wide/16 v6, 0x2710

    cmp-long v0, v0, v6

    if-gez v0, :cond_8a

    const/4 v0, 0x1

    .line 1583
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

    .line 1584
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestReady()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1585
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestOverS(J)D

    move-result-wide v0

    .line 1586
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1587
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

    .line 1588
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restNote:Landroid/widget/TextView;

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_8f

    .line 1589
    const-string v0, "\u0414\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 \u2014 AI \u0449\u0435 \u0437\u0430\u043f\u043e\u0447\u043d\u0435 \u043f\u043e-\u043c\u0435\u043a\u043e \u0438 \u0449\u0435 \u0432\u0434\u0438\u0433\u043d\u0435 \u0441\u0438\u043b\u0430\u0442\u0430 \u0437\u0430 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u0438\u043c\u043f\u0443\u043b\u0441\u0430. \u0412\u0440\u0435\u043c\u0435\u0442\u043e \u043d\u0430 \u043f\u043b\u0430\u043d\u0430 \u0441\u0442\u043e\u0438."

    const-string v1, "Long pause \u2014 AI starts softer and ramps back over a few pulses. The plan clock is on hold."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1588
    :goto_85
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1582
    :cond_8a
    const/4 v0, 0x0

    goto :goto_1e

    .line 1583
    :cond_8c
    const-string v0, ""

    goto :goto_45

    .line 1591
    :cond_8f
    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0438 \u043f\u0443\u043b\u0441\u044a\u0442 \u0441\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d\u0438. \u041d\u0430\u0442\u0438\u0441\u043d\u0438, \u043a\u043e\u0433\u0430\u0442\u043e \u0441\u0438 \u0432 \u043f\u043e\u0437\u0438\u0446\u0438\u044f."

    const-string v1, "Muscles and HR have recovered. Tap when in position."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 1595
    :cond_98
    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiEngine;->getRestRemainingS(J)D

    move-result-wide v0

    .line 1596
    sget-object v4, Lcom/isaigu/gymapp/ai/AiUi;->restRing:Lcom/isaigu/gymapp/ai/AiViews$Ring;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v8, v2, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {v4, v2}, Lcom/isaigu/gymapp/ai/AiViews$Ring;->setValue(F)V

    .line 1597
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi;->restTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->mmss(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0443\u043c\u043e\u0440\u0430 "

    const-string v2, "Muscle fatigue "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 1599
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

    .line 1600
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiEngine;->isRestHrOk()Z

    move-result v1

    if-nez v1, :cond_11d

    .line 1601
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

    .line 1602
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

    .line 1604
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
    .line 2175
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2177
    return-object v0
.end method

.method private static weight(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 2195
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 2196
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2197
    return-object v0
.end method

.method private static workoutBanner(Landroid/content/Context;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x41200000    # 10.0f

    .line 2004
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getWorkout()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v1

    .line 2005
    if-nez v1, :cond_11

    .line 2006
    const/4 v0, 0x0

    .line 2023
    :goto_10
    return-object v0

    .line 2008
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 2009
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2010
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2011
    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x22000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2012
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/ai/AiViews;->CYAN:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x78000000

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2013
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2014
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2015
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430: "

    const-string v4, "Workout: "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u00b7  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->distinctExercises()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0443\u043f\u0440. \u00b7 \u2248 "

    const-string v4, " ex. \u00b7 \u2248 "

    .line 2017
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/Workout;->minutes()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->TEXT:I

    const/4 v4, 0x1

    .line 2016
    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 2018
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v10, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2019
    const-string v1, "AI \u0438\u0437\u0431\u0438\u0440\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430"

    const-string v2, "Let AI pick"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/ai/AiViews;->MUTED:I

    invoke-static {p0, v1, v2, v3, v10}, Lcom/isaigu/gymapp/ai/AiUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 2020
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2021
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$ClearWorkout;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/AiUi$ClearWorkout;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2022
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10
.end method
