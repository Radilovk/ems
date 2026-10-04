.class public final Lcom/isaigu/gymapp/ai/AutoBoard;
.super Ljava/lang/Object;
.source "AutoBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoBoard$NoDrag;,
        Lcom/isaigu/gymapp/ai/AutoBoard$Fit;
    }
.end annotation


# static fields
.field static final DESIGN_H:I = 0x122

.field static final DESIGN_W:I = 0x488

.field private static board:Landroid/view/View;

.field private static guarded:Landroid/view/View;

.field private static heightPx:I

.field private static list:Landroid/view/View;

.field private static listParams:Landroid/view/ViewGroup$LayoutParams;

.field private static setupKind:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/ai/AutoBoard;->heightPx:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attach(Landroid/content/Context;Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 150
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 151
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->guard(Landroid/view/View;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 153
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V

    .line 155
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b3

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_b3

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 156
    :goto_2c
    if-eqz v1, :cond_b6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_b6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 157
    :goto_38
    if-eqz v1, :cond_c2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_c2

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 159
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 161
    :goto_4e
    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->heightPx:I

    .line 162
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 169
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoBoard;->setupKind:Z

    if-eqz v2, :cond_be

    .line 170
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->buildSetupBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 174
    :goto_63
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x44910000    # 1160.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x43910000    # 290.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 178
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 179
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 180
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 181
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 183
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 184
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 185
    return-void

    .line 155
    :cond_b3
    const/4 v1, 0x0

    goto/16 :goto_2c

    .line 156
    :cond_b6
    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto/16 :goto_38

    .line 172
    :cond_be
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_63

    :cond_c2
    move v1, v2

    goto :goto_4e
.end method

.method static detach()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 206
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 207
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    :cond_1c
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 210
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_2d

    .line 211
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    :cond_2d
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 214
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onBoardDetached()V

    .line 216
    return-void
.end method

.method private static guard(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->guarded:Landroid/view/View;

    if-eq p0, v0, :cond_8

    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 108
    :cond_8
    :goto_8
    return-void

    .line 104
    :cond_9
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoBoard$NoDrag;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoBoard$NoDrag;-><init>()V

    move-object v0, p0

    .line 105
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 106
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoBoard;->guarded:Landroid/view/View;

    goto :goto_8
.end method

.method public static isAttached()Z
    .registers 1

    .prologue
    .line 113
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
    .line 190
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

    .line 191
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_23

    .line 192
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 196
    :cond_23
    :goto_23
    return-void

    .line 194
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method private static scrollTop(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 200
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

    .line 203
    :goto_20
    return-void

    .line 201
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method static sync(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v4, :cond_2c

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_2c

    move v0, v1

    .line 119
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v4, v5, :cond_2e

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    if-eqz v4, :cond_2e

    move v4, v1

    .line 120
    :goto_21
    if-nez v0, :cond_25

    if-eqz v4, :cond_26

    :cond_25
    move v2, v1

    .line 122
    :cond_26
    if-nez v2, :cond_30

    .line 123
    :try_start_28
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 146
    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    move v0, v2

    .line 118
    goto :goto_12

    :cond_2e
    move v4, v2

    .line 119
    goto :goto_21

    .line 126
    :cond_30
    if-eqz p0, :cond_75

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 127
    :goto_36
    if-eqz v0, :cond_2b

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "recyclerView"

    const-string v6, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 132
    if-eqz v2, :cond_77

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    :goto_52
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2b

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_79

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-ne v0, v2, :cond_79

    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoBoard;->setupKind:Z

    if-ne v2, v4, :cond_79

    .line 137
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->keepFirstRow(Landroid/view/View;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_6d} :catch_6e

    goto :goto_2b

    .line 143
    :catch_6e
    move-exception v0

    .line 144
    const-string v1, "AutoBoard.sync"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_75
    move-object v0, v3

    .line 126
    goto :goto_36

    :cond_77
    move-object v0, v3

    .line 132
    goto :goto_52

    .line 140
    :cond_79
    :try_start_79
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 141
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AutoBoard;->setupKind:Z

    .line 142
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->attach(Landroid/content/Context;Landroid/view/View;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_81} :catch_6e

    goto :goto_2b
.end method
