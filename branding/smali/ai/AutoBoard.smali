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

.field static final KIND_MAP:I = 0x3

.field static final KIND_RUN:I = 0x1

.field static final KIND_SETUP:I = 0x2

.field private static board:Landroid/view/View;

.field private static guarded:Landroid/view/View;

.field private static heightPx:I

.field private static kind:I

.field private static list:Landroid/view/View;

.field private static listParams:Landroid/view/ViewGroup$LayoutParams;


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
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static attach(Landroid/content/Context;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 160
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 161
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->guard(Landroid/view/View;)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 163
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V

    .line 165
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d2

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_d2

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    :goto_2e
    if-eqz v1, :cond_d5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_d5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 167
    :goto_3a
    if-eqz v1, :cond_10b

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_10b

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 169
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 171
    :goto_50
    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->heightPx:I

    .line 172
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 179
    sget v2, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_dd

    .line 180
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 181
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiMapBoard;->build(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 182
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoachBar;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :cond_82
    :goto_82
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x44910000    # 1160.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x43910000    # 290.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 200
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 201
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 202
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 203
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 204
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 207
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 208
    return-void

    .line 165
    :cond_d2
    const/4 v1, 0x0

    goto/16 :goto_2e

    .line 166
    :cond_d5
    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto/16 :goto_3a

    .line 185
    :cond_dd
    sget v2, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e6

    .line 186
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->buildSetupBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_82

    .line 188
    :cond_e6
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 189
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 190
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v2, :cond_82

    .line 193
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoachBar;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_82

    :cond_10b
    move v1, v2

    goto/16 :goto_50
.end method

.method static detach()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 236
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 237
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    :cond_1c
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_2d

    .line 241
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    :cond_2d
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 244
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onBoardDetached()V

    .line 246
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->forget()V

    .line 247
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiMapBoard;->forget()V

    .line 248
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_4f

    :cond_46
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 249
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->close()V

    .line 251
    :cond_4f
    return-void
.end method

.method private static guard(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 102
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->guarded:Landroid/view/View;

    if-eq p0, v0, :cond_8

    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_9

    .line 109
    :cond_8
    :goto_8
    return-void

    .line 105
    :cond_9
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoBoard$NoDrag;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AutoBoard$NoDrag;-><init>()V

    move-object v0, p0

    .line 106
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 107
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoBoard;->guarded:Landroid/view/View;

    goto :goto_8
.end method

.method public static isAttached()Z
    .registers 1

    .prologue
    .line 114
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
    .line 213
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

    .line 214
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_23

    .line 215
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 219
    :cond_23
    :goto_23
    return-void

    .line 217
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method public static onScreen()Z
    .registers 1

    .prologue
    .line 119
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static rebuild()V
    .registers 2

    .prologue
    .line 230
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 231
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    .line 232
    if-eqz v0, :cond_b

    :goto_7
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 233
    return-void

    .line 232
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method private static scrollTop(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 223
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

    .line 226
    :goto_20
    return-void

    .line 224
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method static sync(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v3, :cond_3b

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_3b

    move v0, v1

    .line 125
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v3

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v3, v5, :cond_3d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v3

    if-eqz v3, :cond_3d

    move v3, v1

    .line 128
    :goto_21
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isAi()Z

    move-result v5

    .line 129
    if-nez v0, :cond_2b

    if-nez v3, :cond_2b

    if-eqz v5, :cond_32

    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->ownsAuto()Z

    move-result v3

    if-nez v3, :cond_32

    move v2, v1

    .line 130
    :cond_32
    if-eqz v5, :cond_3f

    const/4 v1, 0x3

    .line 132
    :cond_35
    :goto_35
    if-nez v2, :cond_43

    .line 133
    :try_start_37
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 156
    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    move v0, v2

    .line 124
    goto :goto_12

    :cond_3d
    move v3, v2

    .line 125
    goto :goto_21

    .line 130
    :cond_3f
    if-nez v0, :cond_35

    const/4 v1, 0x2

    goto :goto_35

    .line 136
    :cond_43
    if-eqz p0, :cond_88

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 137
    :goto_49
    if-eqz v0, :cond_3a

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "recyclerView"

    const-string v6, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 142
    if-eqz v3, :cond_8a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    :goto_65
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3a

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_8c

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-ne v0, v3, :cond_8c

    sget v3, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    if-ne v3, v1, :cond_8c

    .line 147
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->keepFirstRow(Landroid/view/View;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_80} :catch_81

    goto :goto_3a

    .line 153
    :catch_81
    move-exception v0

    .line 154
    const-string v1, "AutoBoard.sync"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    :cond_88
    move-object v0, v4

    .line 136
    goto :goto_49

    :cond_8a
    move-object v0, v4

    .line 142
    goto :goto_65

    .line 150
    :cond_8c
    :try_start_8c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 151
    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    .line 152
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->attach(Landroid/content/Context;Landroid/view/View;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_94} :catch_81

    goto :goto_3a
.end method
