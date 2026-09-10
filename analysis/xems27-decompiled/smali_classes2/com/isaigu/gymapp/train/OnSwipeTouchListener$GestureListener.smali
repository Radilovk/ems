.class final Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x1

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x1


# instance fields
.field private final swipeListener:Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;->swipeListener:Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;

    .line 36
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "result":Z
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 63
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 64
    .local v2, "diffX":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 65
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 66
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;->swipeListener:Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;

    invoke-interface {v3}, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;->onSwipeRight()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;->swipeListener:Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;

    invoke-interface {v3}, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;->onSwipeLeft()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    const/4 v0, 0x1

    .line 76
    .end local v1    # "diffY":F
    .end local v2    # "diffX":F
    :cond_1
    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 51
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 46
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 82
    const/4 v0, 0x0

    return v0
.end method
