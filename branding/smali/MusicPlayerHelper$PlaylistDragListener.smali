.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaylistDragListener"
.end annotation


# instance fields
.field private downRawY:F

.field private dragging:Z

.field private final index:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    .line 878
    return-void
.end method


# virtual methods
.method beginDrag(Landroid/view/View;)V
    .registers 3

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 930
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$902(I)I

    .line 932
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    .line 934
    goto :goto_e

    .line 933
    :catchall_d
    move-exception p1

    .line 935
    :goto_e
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->highlightDropTarget(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500(I)V

    .line 936
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 882
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_68

    if-eq v0, v2, :cond_44

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_44

    .line 924
    return v1

    .line 896
    :cond_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz v0, :cond_21

    .line 897
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1400(F)I

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->highlightDropTarget(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500(I)V

    .line 898
    return v2

    .line 900
    :cond_21
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 901
    if-eqz p1, :cond_2f

    .line 902
    const/16 v0, 0xa

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600(Landroid/app/Activity;I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_31

    .line 903
    :cond_2f
    const/high16 p1, 0x41c00000    # 24.0f

    .line 904
    :goto_31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->downRawY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_43

    .line 905
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()V

    .line 907
    :cond_43
    return v2

    .line 910
    :cond_44
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()V

    .line 911
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz p1, :cond_67

    .line 912
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1400(F)I

    move-result p1

    .line 913
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700()V

    .line 914
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 915
    const/4 p2, -0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$902(I)I

    .line 916
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    if-eq p1, p2, :cond_63

    .line 917
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800(II)V

    .line 919
    :cond_63
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()V

    .line 920
    return v2

    .line 922
    :cond_67
    return v1

    .line 884
    :cond_68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->downRawY:F

    .line 885
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 886
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$902(I)I

    .line 887
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()V

    .line 888
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 889
    new-instance p2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;

    invoke-direct {p2, p0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;-><init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;)V

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1202(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 890
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1300()Landroid/os/Handler;

    move-result-object p2

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v3, 0x15e

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 891
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_9d

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 894
    :cond_9d
    return v2
.end method
