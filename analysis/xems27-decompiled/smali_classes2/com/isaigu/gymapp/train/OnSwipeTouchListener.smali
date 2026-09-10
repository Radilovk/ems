.class public Lcom/isaigu/gymapp/train/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;,
        Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;
    }
.end annotation


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipeListener"    # Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/train/OnSwipeTouchListener$GestureListener;-><init>(Lcom/isaigu/gymapp/train/OnSwipeTouchListener$SwipeListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/train/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 14
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 18
    iget-object v0, p0, Lcom/isaigu/gymapp/train/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
