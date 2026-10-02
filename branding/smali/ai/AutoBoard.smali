.class public final Lcom/isaigu/gymapp/ai/AutoBoard;
.super Ljava/lang/Object;
.source "AutoBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoBoard$Fit;
    }
.end annotation


# static fields
.field static final DESIGN_H:I = 0x122

.field static final DESIGN_W:I = 0x488

.field private static board:Landroid/view/View;

.field private static heightPx:I

.field private static list:Landroid/view/View;

.field private static listParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoBoard;->heightPx:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attach(Landroid/content/Context;Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 90
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 92
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V

    .line 94
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_ac

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_ac

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    :goto_29
    if-eqz v1, :cond_af

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_af

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 96
    :goto_35
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_b6

    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 100
    :goto_4b
    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->heightPx:I

    .line 101
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 108
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 109
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x44910000    # 1160.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x43910000    # 290.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 113
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 114
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 115
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 116
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 119
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 120
    return-void

    .line 94
    :cond_ac
    const/4 v1, 0x0

    goto/16 :goto_29

    .line 95
    :cond_af
    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto :goto_35

    :cond_b6
    move v1, v2

    goto :goto_4b
.end method

.method static detach()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 142
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    :cond_1c
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_2d

    .line 146
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    :cond_2d
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 149
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 150
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onBoardDetached()V

    .line 151
    return-void
.end method

.method public static isAttached()Z
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static keepFirstRow(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "computeVerticalScrollOffset"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_23

    .line 127
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 131
    :cond_23
    :goto_23
    return-void

    .line 129
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method private static scrollTop(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "scrollToPosition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    .line 138
    :goto_20
    return-void

    .line 136
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method static sync(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v2, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    .line 63
    :goto_10
    if-nez v0, :cond_18

    .line 64
    :try_start_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 86
    :cond_15
    :goto_15
    return-void

    .line 61
    :cond_16
    const/4 v0, 0x0

    goto :goto_10

    .line 67
    :cond_18
    if-eqz p0, :cond_59

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 68
    :goto_1e
    if-eqz v0, :cond_15

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "recyclerView"

    const-string v5, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 73
    if-eqz v3, :cond_5b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    :goto_3a
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-ne v0, v1, :cond_5d

    .line 78
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->keepFirstRow(Landroid/view/View;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_51} :catch_52

    goto :goto_15

    .line 83
    :catch_52
    move-exception v0

    .line 84
    const-string v1, "AutoBoard.sync"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_59
    move-object v0, v1

    .line 67
    goto :goto_1e

    :cond_5b
    move-object v0, v1

    .line 73
    goto :goto_3a

    .line 81
    :cond_5d
    :try_start_5d
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 82
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->attach(Landroid/content/Context;Landroid/view/View;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_63} :catch_52

    goto :goto_15
.end method
