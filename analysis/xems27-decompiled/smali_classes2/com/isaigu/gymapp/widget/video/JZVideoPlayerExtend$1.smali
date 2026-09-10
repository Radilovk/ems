.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;
.super Ljava/lang/Object;
.source "JZVideoPlayerExtend.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    .line 23
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 26
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 27
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 28
    .local v2, "id":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v3, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->currentScreen:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 39
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v3, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownX:F

    sub-float v3, v0, v3

    .line 40
    .local v3, "deltaX":F
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v4, v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownY:F

    sub-float v4, v1, v4

    .line 41
    .local v4, "deltaY":F
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    .local v5, "width":I
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v6, v6, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mScreenHeight:I

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43b40000    # 360.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v6, v7

    .line 43
    .local v6, "height":I
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getX()F

    move-result v7

    .line 44
    .local v7, "ox":F
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getY()F

    move-result v8

    .line 45
    .local v8, "oy":F
    add-float v9, v7, v3

    float-to-int v9, v9

    int-to-float v7, v9

    .line 46
    add-float v9, v8, v4

    float-to-int v9, v9

    int-to-float v8, v9

    .line 47
    const/4 v9, 0x0

    cmpg-float v10, v7, v9

    if-gez v10, :cond_1

    .line 48
    const/4 v7, 0x0

    .line 50
    :cond_1
    int-to-float v10, v5

    cmpl-float v10, v7, v10

    if-lez v10, :cond_2

    .line 51
    int-to-float v7, v5

    .line 53
    :cond_2
    cmpg-float v9, v8, v9

    if-gez v9, :cond_3

    .line 54
    const/4 v8, 0x0

    .line 56
    :cond_3
    int-to-float v9, v6

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4

    .line 57
    int-to-float v8, v6

    .line 59
    :cond_4
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9, v7}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setX(F)V

    .line 60
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9, v8}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setY(F)V

    goto :goto_0

    .line 31
    .end local v3    # "deltaX":F
    .end local v4    # "deltaY":F
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "ox":F
    .end local v8    # "oy":F
    :cond_5
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mTouchingProgressBar:Z

    .line 33
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iput v0, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownX:F

    .line 34
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iput v1, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownY:F

    .line 35
    nop

    .line 64
    :cond_6
    :goto_0
    const/4 v3, 0x0

    return v3
.end method
