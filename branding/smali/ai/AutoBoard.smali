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
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 159
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->guard(Landroid/view/View;)V

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 161
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V

    .line 163
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b4

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_b4

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 164
    :goto_2c
    if-eqz v1, :cond_b7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_b7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 165
    :goto_38
    if-eqz v1, :cond_e5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_e5

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 167
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 169
    :goto_4e
    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->heightPx:I

    .line 170
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 177
    sget v2, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_bf

    .line 178
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoUi;->buildSetupBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 189
    :cond_64
    :goto_64
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x44910000    # 1160.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x43910000    # 290.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v3, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/AutoBoard$Fit;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 192
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 194
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 195
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 196
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 199
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x104

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 200
    return-void

    .line 163
    :cond_b4
    const/4 v1, 0x0

    goto/16 :goto_2c

    .line 164
    :cond_b7
    const/high16 v2, 0x432a0000    # 170.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    goto/16 :goto_38

    .line 180
    :cond_bf
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 181
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AutoUi;->buildBoard(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 182
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    sget-boolean v2, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v2, :cond_64

    .line 185
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoachBar;->build(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42480000    # 50.0f

    .line 186
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_64

    :cond_e5
    move v1, v2

    goto/16 :goto_4e
.end method

.method static detach()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 228
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    .line 229
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    :cond_1c
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->board:Landroid/view/View;

    .line 232
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_2d

    .line 233
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    :cond_2d
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 236
    sput-object v2, Lcom/isaigu/gymapp/ai/AutoBoard;->listParams:Landroid/view/ViewGroup$LayoutParams;

    .line 237
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->onBoardDetached()V

    .line 238
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->forget()V

    .line 239
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoSession;->aiMode:Z

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-eq v0, v1, :cond_46

    .line 240
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->close()V

    .line 242
    :cond_46
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
    .line 205
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

    .line 206
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_23

    .line 207
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoBoard;->scrollTop(Landroid/view/View;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_24

    .line 211
    :cond_23
    :goto_23
    return-void

    .line 209
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
    .line 222
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    .line 223
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    .line 224
    if-eqz v0, :cond_b

    :goto_7
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->sync(Landroid/view/View;)V

    .line 225
    return-void

    .line 224
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPanelRoot()Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method private static scrollTop(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 215
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

    .line 218
    :goto_20
    return-void

    .line 216
    :catch_21
    move-exception v0

    goto :goto_20
.end method

.method static sync(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v0, v4, :cond_34

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getEngine()Lcom/isaigu/gymapp/ai/AutoEngine;

    move-result-object v0

    if-eqz v0, :cond_34

    move v0, v1

    .line 125
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    if-ne v4, v5, :cond_36

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v4

    if-eqz v4, :cond_36

    move v4, v1

    .line 127
    :goto_21
    if-nez v0, :cond_25

    if-eqz v4, :cond_2c

    :cond_25
    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio;->ownsAuto()Z

    move-result v4

    if-nez v4, :cond_2c

    move v2, v1

    .line 128
    :cond_2c
    if-eqz v0, :cond_38

    .line 130
    :goto_2e
    if-nez v2, :cond_3a

    .line 131
    :try_start_30
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 154
    :cond_33
    :goto_33
    return-void

    :cond_34
    move v0, v2

    .line 124
    goto :goto_12

    :cond_36
    move v4, v2

    .line 125
    goto :goto_21

    .line 128
    :cond_38
    const/4 v1, 0x2

    goto :goto_2e

    .line 134
    :cond_3a
    if-eqz p0, :cond_7f

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 135
    :goto_40
    if-eqz v0, :cond_33

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "recyclerView"

    const-string v6, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 140
    if-eqz v4, :cond_81

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    :goto_5c
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_33

    .line 144
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_83

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoBoard;->list:Landroid/view/View;

    if-ne v0, v3, :cond_83

    sget v3, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    if-ne v3, v1, :cond_83

    .line 145
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->keepFirstRow(Landroid/view/View;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_77} :catch_78

    goto :goto_33

    .line 151
    :catch_78
    move-exception v0

    .line 152
    const-string v1, "AutoBoard.sync"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    :cond_7f
    move-object v0, v3

    .line 134
    goto :goto_40

    :cond_81
    move-object v0, v3

    .line 140
    goto :goto_5c

    .line 148
    :cond_83
    :try_start_83
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoBoard;->detach()V

    .line 149
    sput v1, Lcom/isaigu/gymapp/ai/AutoBoard;->kind:I

    .line 150
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AutoBoard;->attach(Landroid/content/Context;Landroid/view/View;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8b} :catch_78

    goto :goto_33
.end method
