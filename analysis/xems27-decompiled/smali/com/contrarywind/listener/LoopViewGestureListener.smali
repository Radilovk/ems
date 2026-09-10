.class public final Lcom/contrarywind/listener/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field private final wheelView:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;)V
    .locals 0
    .param p1, "wheelView"    # Lcom/contrarywind/view/WheelView;

    .line 16
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/contrarywind/listener/LoopViewGestureListener;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 18
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 22
    iget-object v0, p0, Lcom/contrarywind/listener/LoopViewGestureListener;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0, p4}, Lcom/contrarywind/view/WheelView;->scrollBy(F)V

    .line 23
    const/4 v0, 0x1

    return v0
.end method
