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

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    .line 1099
    return-void
.end method


# virtual methods
.method beginDrag(Landroid/view/View;FF)V
    .registers 9

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1149
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(I)I

    .line 1151
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    .line 1153
    goto :goto_e

    .line 1152
    :catchall_d
    move-exception v0

    .line 1154
    :goto_e
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->findPlaylistRow(Landroid/view/View;)Landroid/view/View;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2100(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1155
    if-eqz v0, :cond_67

    .line 1156
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreDragSourceRow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200()V

    .line 1157
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceRow:Landroid/view/View;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2302(Landroid/view/View;)Landroid/view/View;

    .line 1158
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragSourceBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1159
    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1160
    const v1, 0x3f75c28f    # 0.96f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1161
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1162
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 1163
    if-eqz p1, :cond_64

    .line 1164
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1166
    const/high16 v2, 0x22000000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1167
    const/16 v2, 0xa

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500(Landroid/app/Activity;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1168
    nop

    .line 1169
    const/4 v2, 0x2

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2500(Landroid/app/Activity;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const v3, 0x7f06006f

    const v4, -0x994496

    .line 1170
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveThemeColor(Landroid/app/Activity;II)I
    invoke-static {p1, v3, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2600(Landroid/app/Activity;II)I

    move-result p1

    .line 1168
    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1171
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1173
    :cond_64
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showDragGhost(Landroid/view/View;FF)V
    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2700(Landroid/view/View;FF)V

    .line 1175
    :cond_67
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->highlightDropTarget(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800(I)V

    .line 1176
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    if-eq v0, v2, :cond_31

    const/4 p1, 0x2

    if-eq v0, p1, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_31

    .line 1143
    return v1

    .line 1119
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 1120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 1121
    iget-boolean p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz p2, :cond_30

    .line 1122
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->moveDragGhost(FF)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600(FF)V

    .line 1123
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700(F)I

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->highlightDropTarget(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800(I)V

    .line 1124
    return v2

    .line 1126
    :cond_30
    return v2

    .line 1129
    :cond_31
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200()V

    .line 1130
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    if-eqz p1, :cond_54

    .line 1131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveDropIndex(F)I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700(F)I

    move-result p1

    .line 1132
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearDragHighlight()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1900()V

    .line 1133
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1134
    const/4 p2, -0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(I)I

    .line 1135
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    if-eq p1, p2, :cond_50

    .line 1136
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->movePlaylistItem(II)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2000(II)V

    .line 1138
    :cond_50
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()V

    .line 1139
    return v2

    .line 1141
    :cond_54
    return v1

    .line 1105
    :cond_55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->downRawY:F

    .line 1106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    .line 1107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    .line 1108
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->dragging:Z

    .line 1109
    iget p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->index:I

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->dragFromIndex:I
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(I)I

    .line 1110
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->cancelPendingDrag()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200()V

    .line 1111
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->activeDragListener:Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1302(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;)Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;

    .line 1112
    new-instance p2, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawX:F

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;->lastRawY:F

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$DragStartRunnable;-><init>(Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistDragListener;Landroid/view/View;FF)V

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {p2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1402(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1113
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500()Landroid/os/Handler;

    move-result-object p2

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pendingDragStart:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1400()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v3, 0x118

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_9a

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1117
    :cond_9a
    return v2
.end method
