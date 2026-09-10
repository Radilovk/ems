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

    .prologue
    .line 23
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 26
    .local v7, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 27
    .local v8, "y":F
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 28
    .local v3, "id":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 64
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x0

    return v9

    .line 31
    :pswitch_1
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mTouchingProgressBar:Z

    .line 33
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iput v7, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownX:F

    .line 34
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iput v8, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownY:F

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v9, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->currentScreen:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 39
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v9, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownX:F

    sub-float v0, v7, v9

    .line 40
    .local v0, "deltaX":F
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v9, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mDownY:F

    sub-float v1, v8, v9

    .line 41
    .local v1, "deltaY":F
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v6, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    .local v6, "width":I
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    iget v9, v9, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->mScreenHeight:I

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x43b40000    # 360.0f

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/utils/AndroidUtils;->dp2px(Landroid/content/Context;F)I

    move-result v10

    sub-int v2, v9, v10

    .line 43
    .local v2, "height":I
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getX()F

    move-result v4

    .line 44
    .local v4, "ox":F
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->getY()F

    move-result v5

    .line 45
    .local v5, "oy":F
    add-float v9, v4, v0

    float-to-int v9, v9

    int-to-float v4, v9

    .line 46
    add-float v9, v5, v1

    float-to-int v9, v9

    int-to-float v5, v9

    .line 47
    cmpg-float v9, v4, v12

    if-gez v9, :cond_1

    .line 48
    const/4 v4, 0x0

    .line 50
    :cond_1
    int-to-float v9, v6

    cmpl-float v9, v4, v9

    if-lez v9, :cond_2

    .line 51
    int-to-float v4, v6

    .line 53
    :cond_2
    cmpg-float v9, v5, v12

    if-gez v9, :cond_3

    .line 54
    const/4 v5, 0x0

    .line 56
    :cond_3
    int-to-float v9, v2

    cmpl-float v9, v5, v9

    if-lez v9, :cond_4

    .line 57
    int-to-float v5, v2

    .line 59
    :cond_4
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9, v4}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setX(F)V

    .line 60
    iget-object v9, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;

    invoke-virtual {v9, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setY(F)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
