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

    .prologue
    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    .line 1620
    return-void
.end method


# virtual methods
.method beginDrag(Landroid/view/View;FF)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1667
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1668
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1802(I)I

    .line 1669
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2900()Landroid/widget/ScrollView;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1670
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistList:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3000()Landroid/widget/LinearLayout;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findAncestorScrollView(Landroid/view/View;)Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3100(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2902(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    .line 1672
    :cond_19
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2800(Z)V

    .line 1674
    const/4 v0, 0x0

    :try_start_1d
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_5c

    .line 1677
    :goto_20
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3200(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1678
    if-eqz v0, :cond_56

    .line 1679
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3300()V

    .line 1680
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3402(Landroid/view/View;)Landroid/view/View;

    .line 1681
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3502(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1682
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3602(I)I

    .line 1683
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1684
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600()I

    move-result v2

    if-gtz v2, :cond_4f

    if-eqz v1, :cond_4f

    .line 1685
    const/16 v2, 0x2c

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3700(Landroid/app/Activity;I)I

    move-result v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragRowHeightPx:I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3602(I)I

    .line 1687
    :cond_4f
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800(Landroid/view/View;FF)V

    .line 1690
    :cond_56
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500(I)V

    .line 1691
    return-void

    .line 1675
    :catch_5c
    move-exception v0

    goto :goto_20
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1624
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_98

    move v0, v1

    .line 1662
    :cond_a
    :goto_a
    return v0

    .line 1626
    :pswitch_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->downRawY:F

    .line 1627
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 1628
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 1629
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1630
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1802(I)I

    .line 1631
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1900()V

    .line 1632
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2002(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1633
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;-><init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;FF)V

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2102(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1634
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200()Landroid/os/Handler;

    move-result-object v1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2100()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x118

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1635
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1636
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_a

    .line 1640
    :pswitch_51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 1641
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 1642
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz v1, :cond_a

    .line 1643
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2300(FF)V

    .line 1644
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400(F)I

    move-result v1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateDragHover(I)V
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500(I)V

    .line 1645
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->autoScrollPlaylist(F)V
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2600(F)V

    goto :goto_a

    .line 1651
    :pswitch_77
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1900()V

    .line 1652
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz v2, :cond_92

    .line 1653
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400(F)I

    move-result v2

    .line 1654
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1655
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->finishDragReorder(II)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2700(II)V

    .line 1656
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()V

    goto/16 :goto_a

    .line 1659
    :cond_92
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lockPlaylistScroll(Z)V
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2800(Z)V

    move v0, v1

    .line 1660
    goto/16 :goto_a

    .line 1624
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_b
        :pswitch_77
        :pswitch_51
        :pswitch_77
    .end packed-switch
.end method
