.class public final Lcom/isaigu/gymapp/widget/XemsPanel;
.super Ljava/lang/Object;
.source "XemsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsPanel$Square;,
        Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;,
        Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;,
        Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;
    }
.end annotation


# static fields
.field private static final ID_ADD:I = 0x7f090039

.field private static final ID_MASTER:I = 0x7f09003a

.field private static final ID_MINUS:I = 0x7f09003d

.field private static final ID_RIGHT_LAYOUT:I = 0x7f090155

.field private static final ID_START:I = 0x7f09003b

.field private static final ID_STOP:I = 0x7f09003c

.field private static final TAG:Ljava/lang/String; = "xems_panel"

.field private static shownRunning:Z

.field private static sidebarRef:Landroid/widget/LinearLayout;

.field private static startButton:Landroid/view/View;

.field private static startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

.field private static startLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->attachImpl(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 51
    :goto_3
    return-void

    .line 48
    :catch_4
    move-exception v0

    .line 49
    const-string v1, "XemsPanel.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachImpl(Landroid/view/View;)V
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/high16 v8, 0x41000000    # 8.0f

    const/4 v1, 0x0

    const/4 v11, -0x2

    const/4 v3, 0x0

    .line 54
    if-eqz p0, :cond_14

    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    :goto_f
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-nez v2, :cond_16

    .line 129
    :goto_13
    return-void

    :cond_14
    move-object v0, v1

    .line 54
    goto :goto_f

    .line 58
    :cond_16
    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->sidebarRef:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 61
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 62
    const-string v2, "xems_panel"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_2c

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_2c
    move v2, v3

    .line 67
    :goto_2d
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3f

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 70
    :cond_3f
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 71
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 74
    const-string v2, "xems_panel"

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 75
    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 77
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsPanel$Square;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v7, 0x6

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {v4, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v7

    const v8, 0x3f0ccccd    # 0.55f

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 80
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v8, 0x7f09003c

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v7}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 85
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v8, 0x7

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-direct {v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v7, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 86
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-static {v4, v3, v3, v7}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const-string v7, ""

    const/high16 v8, 0x41400000    # 12.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v10, 0x1

    invoke-static {v4, v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    sput-object v7, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    .line 88
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x51

    invoke-direct {v7, v11, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 90
    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 91
    sget-object v8, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sput-object v2, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    .line 94
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 97
    const/16 v7, 0x9

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 99
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v8, 0x7f090039

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 103
    const/16 v7, 0xa

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 105
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v8, 0x7f09003d

    invoke-direct {v7, p0, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$Square;

    invoke-direct {v7, v4}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;-><init>(Landroid/content/Context;)V

    .line 109
    const/16 v2, 0xb

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v4, v2, v8, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v1

    const v2, 0x3ed70a3d    # 0.42f

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_18c

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_18c

    .line 112
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x1

    invoke-static {v4, v1, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 113
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x51

    invoke-direct {v2, v11, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 116
    invoke-virtual {v7, v1, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_18c
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v7, v1, v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 119
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v2, 0x7f09003a

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v7, v1}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 123
    invoke-virtual {v5, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_1b5

    const/4 v3, 0x1

    :cond_1b5
    sput-boolean v3, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V

    goto/16 :goto_13
.end method

.method private static centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .prologue
    .line 198
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 199
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1
.end method

.method private static icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;
    .registers 6

    .prologue
    .line 190
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 191
    if-eqz p3, :cond_f

    :goto_7
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 193
    return-object v0

    .line 191
    :cond_f
    new-instance p3, Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-direct {p3, p1, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    goto :goto_7
.end method

.method static isTrainingRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 158
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 160
    :goto_c
    if-nez v3, :cond_13

    move v0, v1

    .line 171
    :goto_f
    return v0

    .line 159
    :cond_10
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_c

    :cond_13
    move v2, v1

    .line 163
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 164
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 165
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_34

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_38

    if-eqz v0, :cond_34

    .line 166
    const/4 v0, 0x1

    goto :goto_f

    .line 163
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 169
    :catch_38
    move-exception v0

    :cond_39
    move v0, v1

    .line 171
    goto :goto_f
.end method

.method static refresh()V
    .registers 6

    .prologue
    const/16 v1, 0x8

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-nez v0, :cond_b

    .line 154
    :cond_a
    :goto_a
    return-void

    .line 137
    :cond_b
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsPanel;->sidebarRef:Landroid/widget/LinearLayout;

    .line 138
    if-eqz v2, :cond_32

    .line 139
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 140
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    const-string v4, "xems_panel"

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2f

    .line 142
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 146
    :cond_32
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v2

    .line 147
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    if-eq v2, v0, :cond_a

    .line 150
    sput-boolean v2, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    .line 151
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v2, :cond_5e

    move v0, v1

    :goto_41
    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setType(I)V

    .line 152
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_60

    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_50
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v2, :cond_69

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_59
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    goto :goto_a

    .line 151
    :cond_5e
    const/4 v0, 0x7

    goto :goto_41

    .line 152
    :cond_60
    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_50

    .line 153
    :cond_69
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_59
.end method

.method private static style(Landroid/view/View;IZ)V
    .registers 12

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 204
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 206
    if-eqz p2, :cond_43

    .line 207
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0x3df5c28f    # 0.12f

    .line 208
    invoke-static {p1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 209
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move-object v2, v0

    .line 213
    :goto_2b
    if-eqz p2, :cond_4f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_2f
    invoke-static {v2, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    if-eqz p2, :cond_52

    const/high16 v0, 0x40800000    # 4.0f

    :goto_3a
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 216
    return-void

    .line 211
    :cond_43
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v4, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_2b

    .line 213
    :cond_4f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2f

    :cond_52
    move v0, v1

    .line 215
    goto :goto_3a
.end method

.method private static tall(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 177
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 179
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 180
    return-object v0
.end method

.method private static weighted(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 184
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 185
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 186
    return-object v0
.end method
