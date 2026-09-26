.class public final Lcom/isaigu/gymapp/widget/XemsPanel;
.super Ljava/lang/Object;
.source "XemsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;,
        Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;,
        Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;,
        Lcom/isaigu/gymapp/widget/XemsPanel$Square;
    }
.end annotation


# static fields
.field private static final ID_ADD:I = 0x7f090039

.field private static final ID_MASTER:I = 0x7f09003a

.field private static final ID_MINUS:I = 0x7f09003d

.field private static final ID_RIGHT_LAYOUT:I = 0x7f090155

.field private static final ID_START:I = 0x7f09003b

.field private static final ID_STOP:I = 0x7f09003c

.field public static final PRESS_MINUS:I = 0x2

.field public static final PRESS_PLUS:I = 0x1

.field public static final PRESS_START:I = 0x0

.field public static final PRESS_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "xems_panel"

.field private static panelRootRef:Landroid/view/View;

.field private static shownRunning:Z

.field private static sidebarRef:Landroid/widget/LinearLayout;

.field private static startButton:Landroid/view/View;

.field private static startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

.field private static startLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;)V
    .registers 2

    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->attachImpl(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 79
    goto :goto_a

    .line 77
    :catchall_4
    move-exception p0

    .line 78
    const-string v0, "XemsPanel.attach"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_a
    return-void
.end method

.method private static attachImpl(Landroid/view/View;)V
    .registers 16

    .line 83
    const/4 v0, 0x0

    if-eqz p0, :cond_b

    const v1, 0x7f090155

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_c

    :cond_b
    move-object v1, v0

    .line 84
    :goto_c
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-nez v2, :cond_11

    .line 85
    return-void

    .line 87
    :cond_11
    check-cast v1, Landroid/widget/LinearLayout;

    .line 88
    sput-object v1, Lcom/isaigu/gymapp/widget/XemsPanel;->sidebarRef:Landroid/widget/LinearLayout;

    .line 89
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsPanel;->panelRootRef:Landroid/view/View;

    .line 90
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 92
    const-string v3, "xems_panel"

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 93
    if-eqz v4, :cond_29

    .line 94
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 97
    :cond_29
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2b
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 98
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 100
    :cond_3d
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 101
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v1, v6, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 103
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 104
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 105
    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 107
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$Square;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;-><init>(Landroid/content/Context;)V

    .line 108
    const/4 v8, 0x6

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {v2, v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    const v9, 0x3f0ccccd    # 0.55f

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 110
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v10, 0x7f09003c

    invoke-direct {v8, p0, v10}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v7

    .line 115
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v12, 0x7

    sget v13, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-direct {v8, v12, v13}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v8, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 116
    invoke-static {v2, v4, v4, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v7, v8, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const-string v13, ""

    const/high16 v14, 0x41400000    # 12.0f

    invoke-static {v2, v13, v14, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    sput-object v8, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    .line 118
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v13, 0x51

    invoke-direct {v8, v11, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 120
    invoke-static {v2, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 121
    sget-object v14, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v14, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;-><init>(Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sput-object v7, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    .line 124
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v7

    .line 127
    const/16 v8, 0x9

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v8, v14, v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v8, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v7, v8, v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 129
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v14, 0x7f090039

    invoke-direct {v8, p0, v14}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v7

    .line 133
    const/16 v8, 0xa

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v8, v14, v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    invoke-static {v2, v12}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v7, v8, v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 135
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v12, 0x7f09003d

    invoke-direct {v8, p0, v12}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsPanel$Square;

    invoke-direct {v7, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;-><init>(Landroid/content/Context;)V

    .line 139
    const/16 v8, 0xb

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v8, v12, v0}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v0

    const v8, 0x3ed70a3d    # 0.42f

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 141
    instance-of v12, v8, Landroid/widget/TextView;

    if-eqz v12, :cond_17b

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_17b

    .line 142
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v12, 0x41300000    # 11.0f

    sget v14, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v2, v8, v12, v14, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 143
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v11, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 145
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 146
    invoke-virtual {v7, v8, v12}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :cond_17b
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v7, v2, v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 149
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    invoke-direct {v2, p0, v0}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v7, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    iput v3, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-virtual {v6, v7, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result p0

    xor-int/2addr p0, v9

    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    .line 158
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V

    .line 159
    return-void
.end method

.method private static centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 228
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 229
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p1, p0, p0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p1
.end method

.method private static icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;
    .registers 5

    .line 220
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 221
    if-eqz p3, :cond_8

    goto :goto_d

    :cond_8
    new-instance p3, Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-direct {p3, p1, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    :goto_d
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 222
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 223
    return-object v0
.end method

.method public static isRunning()Z
    .registers 1

    .line 69
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v0

    return v0
.end method

.method static isTrainingRunning()Z
    .registers 5

    .line 188
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 190
    :goto_d
    if-nez v1, :cond_10

    .line 191
    return v0

    .line 193
    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 195
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_31

    iget-object v3, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_35

    if-eqz v3, :cond_31

    .line 196
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 200
    :cond_34
    goto :goto_36

    .line 199
    :catchall_35
    move-exception v1

    .line 201
    :goto_36
    return v0
.end method

.method public static press(I)Z
    .registers 6

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->panelRootRef:Landroid/view/View;

    .line 52
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 53
    return v1

    .line 55
    :cond_6
    const/4 v2, 0x1

    if-ne p0, v2, :cond_d

    const v3, 0x7f090039

    goto :goto_1e

    :cond_d
    const/4 v3, 0x2

    if-ne p0, v3, :cond_14

    const v3, 0x7f09003d

    goto :goto_1e

    .line 56
    :cond_14
    const/4 v3, 0x3

    if-ne p0, v3, :cond_1b

    const v3, 0x7f09003c

    goto :goto_1e

    :cond_1b
    const v3, 0x7f09003b

    .line 57
    :goto_1e
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    if-nez v0, :cond_25

    .line 59
    return v1

    .line 61
    :cond_25
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 62
    if-nez p0, :cond_38

    sget-object p0, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz p0, :cond_38

    .line 63
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;-><init>()V

    const-wide/16 v3, 0xfa

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    :cond_38
    return v2
.end method

.method static refresh()V
    .registers 6

    .line 163
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v0, :cond_68

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-nez v0, :cond_9

    goto :goto_68

    .line 167
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->sidebarRef:Landroid/widget/LinearLayout;

    .line 168
    const/16 v1, 0x8

    if-eqz v0, :cond_32

    .line 169
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "xems_panel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_2f

    .line 172
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 176
    :cond_32
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v0

    .line 177
    sget-boolean v2, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    if-ne v0, v2, :cond_3b

    .line 178
    return-void

    .line 180
    :cond_3b
    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    .line 181
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x7

    :goto_43
    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/XemsIcon;->setType(I)V

    .line 182
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4f

    const-string v2, "\u041f\u0430\u0443\u0437\u0430"

    const-string v3, "Pause"

    goto :goto_53

    :cond_4f
    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v3, "Start"

    :goto_53
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v0, :cond_61

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_63

    :cond_61
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_63
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 184
    return-void

    .line 164
    :cond_68
    :goto_68
    return-void
.end method

.method private static style(Landroid/view/View;IZ)V
    .registers 12

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 236
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2b

    .line 237
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0x3df5c28f    # 0.12f

    .line 238
    invoke-static {p1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 239
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_35

    .line 241
    :cond_2b
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 243
    :goto_35
    if-eqz p2, :cond_3a

    sget p1, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    goto :goto_3c

    :cond_3a
    sget p1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_3c
    invoke-static {v3, p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 244
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    if-eqz p2, :cond_47

    const/high16 v2, 0x40800000    # 4.0f

    :cond_47
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 246
    return-void
.end method

.method private static tall(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 2

    .line 207
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 208
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 209
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 210
    return-object v0
.end method

.method private static weighted(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 214
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 215
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 216
    return-object v0
.end method
