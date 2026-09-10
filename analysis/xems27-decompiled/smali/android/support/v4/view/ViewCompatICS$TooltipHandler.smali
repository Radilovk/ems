.class Landroid/support/v4/view/ViewCompatICS$TooltipHandler;
.super Ljava/lang/Object;
.source "ViewCompatICS.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompatICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipHandler"
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mTooltip:Landroid/widget/Toast;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "tooltipText"    # Ljava/lang/CharSequence;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler$1;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewCompatICS$TooltipHandler$1;-><init>(Landroid/support/v4/view/ViewCompatICS$TooltipHandler;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    .line 58
    iput-object p2, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewCompatICS$TooltipHandler;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/view/ViewCompatICS$TooltipHandler;
    .param p1, "x1"    # I

    .line 45
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->show(I)V

    return-void
.end method

.method private hide()V
    .locals 2

    .line 132
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltip:Landroid/widget/Toast;

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method private show(I)V
    .locals 14
    .param p1, "duration"    # I

    .line 90
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 93
    .local v2, "screenWidth":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 95
    .local v3, "screenHeight":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 96
    .local v4, "displayFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 97
    iget v5, v4, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-gez v5, :cond_1

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_1

    .line 101
    const-string v5, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v1, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 102
    .local v5, "resourceId":I
    if-lez v5, :cond_0

    .line 103
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .local v7, "statusBarHeight":I
    goto :goto_0

    .line 105
    .end local v7    # "statusBarHeight":I
    :cond_0
    const/4 v7, 0x0

    .line 107
    .restart local v7    # "statusBarHeight":I
    :goto_0
    invoke-virtual {v4, v6, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    .end local v5    # "resourceId":I
    .end local v7    # "statusBarHeight":I
    :cond_1
    const/4 v5, 0x2

    new-array v7, v5, [I

    .line 111
    .local v7, "anchorPos":[I
    iget-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 112
    aget v6, v7, v6

    iget-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 113
    .local v6, "referenceX":I
    iget-object v5, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_2

    .line 114
    sub-int v6, v2, v6

    .line 116
    :cond_2
    const/4 v5, 0x1

    aget v5, v7, v5

    .line 117
    .local v5, "anchorTop":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->hide()V

    .line 118
    iget-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-static {v0, v8, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltip:Landroid/widget/Toast;

    .line 119
    int-to-double v8, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double v10, v10, v12

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    .line 121
    iget-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltip:Landroid/widget/Toast;

    const v9, 0x800035

    iget-object v10, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    .line 122
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v5

    iget v11, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .line 121
    invoke-virtual {v8, v9, v6, v10}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 125
    :cond_3
    iget-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltip:Landroid/widget/Toast;

    const v9, 0x800055

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v5

    invoke-virtual {v8, v9, v6, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 128
    :goto_1
    iget-object v8, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mTooltip:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 72
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 74
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 75
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    return v2

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 79
    .local v1, "action":I
    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    .line 80
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->hide()V

    .line 81
    iget-object v3, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 82
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    .line 81
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 83
    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 84
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->hide()V

    .line 86
    :cond_2
    :goto_0
    return v2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewCompatICS$TooltipHandler;->show(I)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
