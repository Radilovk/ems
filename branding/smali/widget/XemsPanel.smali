.class public final Lcom/isaigu/gymapp/widget/XemsPanel;
.super Ljava/lang/Object;
.source "XemsPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;,
        Lcom/isaigu/gymapp/widget/XemsPanel$Square;,
        Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;,
        Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;
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

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsPanel;->attachImpl(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 88
    :goto_3
    return-void

    .line 85
    :catch_4
    move-exception v0

    .line 86
    const-string v1, "XemsPanel.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static attachImpl(Landroid/view/View;)V
    .registers 13

    .prologue
    const/high16 v9, 0x41000000    # 8.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v11, -0x2

    const/4 v3, 0x0

    .line 91
    if-eqz p0, :cond_14

    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    :goto_f
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-nez v2, :cond_16

    .line 175
    :goto_13
    return-void

    :cond_14
    move-object v0, v1

    .line 91
    goto :goto_f

    .line 95
    :cond_16
    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    sput-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->sidebarRef:Landroid/widget/LinearLayout;

    .line 99
    :try_start_1a
    const-string v2, "com.isaigu.gymapp.wearable.SessionRecorder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "ensure"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    .line 100
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 101
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_3c} :catch_63

    .line 105
    :goto_3c
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsPanel;->panelRootRef:Landroid/view/View;

    .line 106
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 107
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 108
    const-string v2, "xems_panel"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_50

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_50
    move v2, v3

    .line 113
    :goto_51
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_6a

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 102
    :catch_63
    move-exception v2

    .line 103
    const-string v5, "SessionRecorder.ensure"

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 116
    :cond_6a
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 117
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 119
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 120
    const-string v2, "xems_panel"

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 121
    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    .line 123
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsPanel$Square;

    invoke-direct {v2, v5}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v8, 0x6

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {v5, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    const v9, 0x3f0ccccd    # 0.55f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v2, v8, v4}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 126
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v9, 0x7f09003c

    invoke-direct {v8, p0, v9}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v8}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 131
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsIcon;

    const/4 v9, 0x7

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-direct {v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    sput-object v8, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    .line 132
    sget-object v8, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-static {v5, v3, v3, v8}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const-string v8, ""

    const/high16 v9, 0x41400000    # 12.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    invoke-static {v5, v8, v9, v10, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    sput-object v8, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    .line 134
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x51

    invoke-direct {v8, v11, v11, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 136
    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 137
    sget-object v9, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;

    invoke-direct {v8, p0}, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sput-object v2, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    .line 140
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 143
    const/16 v8, 0x9

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v2, v8, v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 145
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v9, 0x7f090039

    invoke-direct {v8, p0, v9}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsPanel;->tall(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 149
    const/16 v8, 0xa

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v2, v8, v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 151
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v9, 0x7f09003d

    invoke-direct {v8, p0, v9}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsPanel;->weighted(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsPanel$Square;

    invoke-direct {v8, v5}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;-><init>(Landroid/content/Context;)V

    .line 155
    const/16 v2, 0xb

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v2, v9, v1}, Lcom/isaigu/gymapp/widget/XemsPanel;->icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;

    move-result-object v1

    const v2, 0x3ed70a3d    # 0.42f

    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 157
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_1b5

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1b5

    .line 158
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v5, v1, v2, v9, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x51

    invoke-direct {v2, v11, v11, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 161
    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 162
    invoke-virtual {v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_1b5
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v8, v1, v3}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    .line 165
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v2, 0x7f09003a

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    invoke-virtual {v8, v1}, Lcom/isaigu/gymapp/widget/XemsPanel$Square;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 169
    invoke-virtual {v6, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v0

    if-nez v0, :cond_1e1

    move v3, v4

    :cond_1e1
    sput-boolean v3, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V

    goto/16 :goto_13
.end method

.method private static centered(Landroid/content/Context;F)Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .prologue
    .line 246
    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 247
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1
.end method

.method private static icon(Landroid/content/Context;IILcom/isaigu/gymapp/widget/XemsIcon;)Landroid/view/View;
    .registers 6

    .prologue
    .line 238
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 239
    if-eqz p3, :cond_f

    :goto_7
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 241
    return-object v0

    .line 239
    :cond_f
    new-instance p3, Lcom/isaigu/gymapp/widget/XemsIcon;

    invoke-direct {p3, p1, p2}, Lcom/isaigu/gymapp/widget/XemsIcon;-><init>(II)V

    goto :goto_7
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v0

    return v0
.end method

.method static isTrainingRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 206
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 208
    :goto_c
    if-nez v3, :cond_13

    move v0, v1

    .line 219
    :goto_f
    return v0

    .line 207
    :cond_10
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_c

    :cond_13
    move v2, v1

    .line 211
    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 212
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 213
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

    .line 214
    const/4 v0, 0x1

    goto :goto_f

    .line 211
    :cond_34
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 217
    :catch_38
    move-exception v0

    :cond_39
    move v0, v1

    .line 219
    goto :goto_f
.end method

.method public static press(I)Z
    .registers 7

    .prologue
    const v3, 0x7f09003c

    const/4 v0, 0x0

    const v4, 0x7f09003b

    const/4 v1, 0x1

    .line 51
    sget-object v5, Lcom/isaigu/gymapp/widget/XemsPanel;->panelRootRef:Landroid/view/View;

    .line 52
    if-nez v5, :cond_d

    .line 73
    :cond_c
    :goto_c
    return v0

    .line 55
    :cond_d
    if-ne p0, v1, :cond_23

    const v2, 0x7f090039

    .line 57
    :goto_12
    if-eq v2, v4, :cond_16

    if-ne v2, v3, :cond_35

    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeysOwned()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 58
    if-ne v2, v4, :cond_31

    .line 59
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStartPause()V

    :goto_21
    move v0, v1

    .line 63
    goto :goto_c

    .line 55
    :cond_23
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2a

    const v2, 0x7f09003d

    goto :goto_12

    .line 56
    :cond_2a
    const/4 v2, 0x3

    if-ne p0, v2, :cond_2f

    move v2, v3

    goto :goto_12

    :cond_2f
    move v2, v4

    goto :goto_12

    .line 61
    :cond_31
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainStop()V

    goto :goto_21

    .line 65
    :cond_35
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_c

    .line 69
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 70
    if-nez p0, :cond_50

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v0, :cond_50

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;-><init>()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    move v0, v1

    .line 73
    goto :goto_c
.end method

.method static refresh()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 179
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-nez v0, :cond_d

    .line 202
    :cond_c
    :goto_c
    return-void

    .line 183
    :cond_d
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsPanel;->sidebarRef:Landroid/widget/LinearLayout;

    .line 184
    if-eqz v4, :cond_34

    move v0, v1

    .line 185
    :goto_12
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_34

    .line 186
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 187
    const-string v6, "xems_panel"

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v3, :cond_31

    .line 188
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 193
    :cond_34
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->mainKeyState()I

    move-result v0

    .line 194
    if-ltz v0, :cond_64

    if-ne v0, v2, :cond_3d

    move v1, v2

    .line 195
    :cond_3d
    :goto_3d
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    if-eq v1, v0, :cond_c

    .line 198
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsPanel;->shownRunning:Z

    .line 199
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsPanel;->startIcon:Lcom/isaigu/gymapp/widget/XemsIcon;

    if-eqz v1, :cond_69

    move v0, v3

    :goto_48
    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/widget/XemsIcon;->setType(I)V

    .line 200
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsPanel;->startLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_6b

    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    const-string v4, "Pause"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_57
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsPanel;->startButton:Landroid/view/View;

    if-eqz v1, :cond_74

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_60
    invoke-static {v3, v0, v2}, Lcom/isaigu/gymapp/widget/XemsPanel;->style(Landroid/view/View;IZ)V

    goto :goto_c

    .line 194
    :cond_64
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isTrainingRunning()Z

    move-result v1

    goto :goto_3d

    .line 199
    :cond_69
    const/4 v0, 0x7

    goto :goto_48

    .line 200
    :cond_6b
    const-string v0, "\u0421\u0442\u0430\u0440\u0442"

    const-string v4, "Start"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 201
    :cond_74
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    goto :goto_60
.end method

.method private static style(Landroid/view/View;IZ)V
    .registers 12

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 252
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v4, v0

    .line 254
    if-eqz p2, :cond_43

    .line 255
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0x3df5c28f    # 0.12f

    .line 256
    invoke-static {p1, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    invoke-direct {v0, v2, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 257
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move-object v2, v0

    .line 261
    :goto_2b
    if-eqz p2, :cond_4f

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_2f
    invoke-static {v2, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    if-eqz p2, :cond_52

    const/high16 v0, 0x40800000    # 4.0f

    :goto_3a
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    .line 264
    return-void

    .line 259
    :cond_43
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v4, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_2b

    .line 261
    :cond_4f
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_2f

    :cond_52
    move v0, v1

    .line 263
    goto :goto_3a
.end method

.method private static tall(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    .prologue
    .line 225
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 227
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 228
    return-object v0
.end method

.method private static weighted(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 232
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 233
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 234
    return-object v0
.end method
