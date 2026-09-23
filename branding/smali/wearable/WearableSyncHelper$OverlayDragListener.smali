.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$OverlayDragListener;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OverlayDragListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 993
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_ac

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_ac

    .line 996
    :cond_13
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 997
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_84

    if-eq v1, v2, :cond_7a

    const/4 p1, 0x2

    if-eq v1, p1, :cond_30

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2f

    .line 1028
    return v0

    .line 1026
    :cond_2f
    return v2

    .line 1006
    :cond_30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2700()F

    move-result v0

    sub-float/2addr p1, v0

    .line 1007
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2800()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1008
    const/4 v1, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1009
    if-eqz v1, :cond_51

    .line 1010
    const/16 v3, 0xa

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3000(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_53

    .line 1011
    :cond_51
    const/high16 v1, 0x41c00000    # 24.0f

    .line 1012
    :goto_53
    mul-float p1, p1, p1

    mul-float v0, v0, v0

    add-float/2addr p1, v0

    mul-float v1, v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_61

    .line 1013
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2902(Z)Z

    .line 1015
    :cond_61
    nop

    .line 1016
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2500()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 1017
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2600()F

    move-result v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 1015
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->moveOverlayWindow(II)V
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3100(II)V

    .line 1018
    return v2

    .line 1021
    :cond_7a
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2900()Z

    move-result p1

    if-nez p1, :cond_83

    .line 1022
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->openOverlaySettings()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3200()V

    .line 1024
    :cond_83
    return v2

    .line 999
    :cond_84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2502(F)F

    .line 1000
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2602(F)F

    .line 1001
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2702(F)F

    .line 1002
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2802(F)F

    .line 1003
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2902(Z)Z

    .line 1004
    return v2

    .line 994
    :cond_ac
    :goto_ac
    return v0
.end method
