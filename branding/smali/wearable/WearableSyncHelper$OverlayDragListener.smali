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

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1295
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_12

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    .line 1330
    :cond_13
    :goto_13
    :pswitch_13
    return v0

    .line 1298
    :cond_14
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_a6

    move v0, v1

    .line 1330
    goto :goto_13

    .line 1301
    :pswitch_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2902(F)F

    .line 1302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3002(F)F

    .line 1303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3102(F)F

    .line 1304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3202(F)F

    .line 1305
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3302(Z)Z

    goto :goto_13

    .line 1308
    :pswitch_52
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawX:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3100()F

    move-result v2

    sub-float v2, v1, v2

    .line 1309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDownRawY:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3200()F

    move-result v3

    sub-float v3, v1, v3

    .line 1310
    const/4 v1, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 1311
    if-eqz v1, :cond_98

    .line 1312
    const/16 v4, 0xa

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dp(Landroid/app/Activity;I)I
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3400(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    .line 1314
    :goto_74
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7f

    .line 1315
    # setter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3302(Z)Z

    .line 1318
    :cond_7f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDx:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$2900()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1319
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayTouchDy:F
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3000()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1317
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->moveOverlayWindow(II)V
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3500(II)V

    goto/16 :goto_13

    .line 1313
    :cond_98
    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_74

    .line 1323
    :pswitch_9b
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayMoved:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3300()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1324
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->openOverlaySettings()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$3600()V

    goto/16 :goto_13

    .line 1299
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_29
        :pswitch_9b
        :pswitch_52
        :pswitch_13
    .end packed-switch
.end method
