.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDragListener;
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
    name = "OverlayDragListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2149
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2180
    :goto_0
    return v0

    .line 2152
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 2180
    goto :goto_0

    .line 2155
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4002(F)F

    .line 2156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    sub-float v2, v3, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4102(F)F

    .line 2157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4202(F)F

    .line 2158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4302(F)F

    .line 2159
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4402(Z)Z

    goto :goto_0

    .line 2162
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()F

    move-result v2

    sub-float v2, v1, v2

    .line 2163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4300()F

    move-result v3

    sub-float v3, v1, v3

    .line 2164
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 2165
    if-eqz v1, :cond_3

    .line 2166
    const/16 v4, 0xa

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3300(Landroid/app/Activity;I)I

    move-result v1

    int-to-float v1, v1

    .line 2168
    :goto_1
    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 2169
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4402(Z)Z

    .line 2172
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4000()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 2173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4100()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2171
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4500(II)V

    goto/16 :goto_0

    .line 2167
    :cond_3
    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_1

    .line 2178
    :pswitch_2
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4400()Z

    move-result v0

    goto/16 :goto_0

    .line 2153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
