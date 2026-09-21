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

.field private lastRawX:F

.field private lastRawY:F


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    .line 1466
    return-void
.end method


# virtual methods
.method beginDrag(Landroid/view/View;FF)V
    .registers 6

    .line 1513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1514
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1402(I)I

    .line 1515
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500()Landroid/widget/ScrollView;

    move-result-object v1

    if-nez v1, :cond_19

    .line 1516
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2600()Landroid/widget/LinearLayout;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2700(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2502(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    .line 1518
    :cond_19
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400(Z)V

    .line 1520
    const/4 v0, 0x0

    :try_start_1d
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    .line 1522
    goto :goto_22

    .line 1521
    :catchall_21
    move-exception v0

    .line 1523
    :goto_22
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2800(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1524
    if-eqz v0, :cond_58

    .line 1525
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2900()V

    .line 1526
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3002(Landroid/view/View;)Landroid/view/View;

    .line 1527
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1528
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3202(I)I

    .line 1529
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 1530
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3200()I

    move-result v1

    if-gtz v1, :cond_51

    if-eqz p1, :cond_51

    .line 1531
    const/16 v1, 0x2c

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3300(Landroid/app/Activity;I)I

    move-result p1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3202(I)I

    .line 1533
    :cond_51
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1534
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3400(Landroid/view/View;FF)V

    .line 1536
    :cond_58
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2100(I)V

    .line 1537
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_54

    if-eq v0, v2, :cond_36

    const/4 p1, 0x2

    if-eq v0, p1, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_36

    .line 1508
    return v1

    .line 1486
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 1487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 1488
    iget-boolean p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz p2, :cond_35

    .line 1489
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1900(FF)V

    .line 1490
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2000(F)I

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2100(I)V

    .line 1491
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200(F)V

    .line 1492
    return v2

    .line 1494
    :cond_35
    return v2

    .line 1497
    :cond_36
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500()V

    .line 1498
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz p1, :cond_50

    .line 1499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2000(F)I

    move-result p1

    .line 1500
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1501
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2300(II)V

    .line 1502
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$900()V

    .line 1503
    return v2

    .line 1505
    :cond_50
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400(Z)V

    .line 1506
    return v1

    .line 1472
    :cond_54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->downRawY:F

    .line 1473
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 1474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 1475
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1476
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1402(I)I

    .line 1477
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500()V

    .line 1478
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1602(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1479
    new-instance p2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;-><init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;FF)V

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1480
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800()Landroid/os/Handler;

    move-result-object p2

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v3, 0x118

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1481
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_99

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1484
    :cond_99
    return v2
.end method
