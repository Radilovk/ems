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
    .locals 0

    .prologue
    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2006
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    .line 2007
    return-void
.end method


# virtual methods
.method beginDrag(Landroid/view/View;FF)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2054
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 2055
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1402(I)I

    .line 2056
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500()Landroid/widget/ScrollView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2057
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2600()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2700(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2502(Landroid/widget/ScrollView;)Landroid/widget/ScrollView;

    .line 2059
    :cond_0
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400(Z)V

    .line 2061
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2064
    :goto_0
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2800(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2065
    if-eqz v0, :cond_2

    .line 2066
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2900()V

    .line 2067
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3002(Landroid/view/View;)Landroid/view/View;

    .line 2068
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2069
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3202(I)I

    .line 2070
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 2071
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3200()I

    move-result v2

    if-gtz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2072
    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3300(Landroid/app/Activity;I)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3202(I)I

    .line 2074
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2075
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3400(Landroid/view/View;FF)V

    .line 2077
    :cond_2
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2100(I)V

    .line 2078
    return-void

    .line 2062
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2011
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 2049
    :cond_0
    :goto_0
    return v0

    .line 2013
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->downRawY:F

    .line 2014
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 2015
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 2016
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 2017
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1402(I)I

    .line 2018
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500()V

    .line 2019
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1602(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 2020
    new-instance v1, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;-><init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;FF)V

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1702(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2021
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x118

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2022
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2023
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 2027
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 2028
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 2029
    iget-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz v1, :cond_0

    .line 2030
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1900(FF)V

    .line 2031
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2000(F)I

    move-result v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2100(I)V

    .line 2032
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200(F)V

    goto :goto_0

    .line 2038
    :pswitch_2
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500()V

    .line 2039
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz v2, :cond_1

    .line 2040
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2000(F)I

    move-result v2

    .line 2041
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 2042
    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2300(II)V

    .line 2043
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()V

    goto/16 :goto_0

    .line 2046
    :cond_1
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400(Z)V

    move v0, v1

    .line 2047
    goto/16 :goto_0

    .line 2011
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
