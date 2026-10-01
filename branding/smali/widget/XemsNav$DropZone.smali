.class final Lcom/isaigu/gymapp/widget/XemsNav$DropZone;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropZone"
.end annotation


# instance fields
.field private final bar:Z

.field private marker:Landroid/view/View;


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->bar:Z

    .line 444
    return-void
.end method

.method private hideMarker()V
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 523
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 525
    :cond_19
    return-void
.end method

.method private showMarker(Landroid/widget/LinearLayout;I)V
    .registers 9

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    const/4 v1, 0x0

    .line 496
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 497
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    if-nez v0, :cond_24

    .line 498
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    :cond_24
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 504
    :cond_39
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 506
    :goto_3f
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 507
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_82

    .line 508
    if-ne v2, p2, :cond_6c

    .line 515
    :goto_53
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->bar:Z

    if-eqz v1, :cond_72

    .line 516
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 518
    :goto_66
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 519
    return-void

    .line 512
    :cond_6c
    add-int/lit8 v1, v2, 0x1

    .line 506
    :goto_6e
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3f

    .line 517
    :cond_72
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_66

    :cond_82
    move v1, v2

    goto :goto_6e

    :cond_84
    move v0, v3

    goto :goto_53
.end method

.method private slot(Landroid/widget/LinearLayout;FF)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 480
    move v0, v1

    move v2, v1

    .line 481
    :goto_5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 482
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->marker:Landroid/view/View;

    if-ne v1, v3, :cond_20

    move v1, v2

    .line 481
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_5

    .line 486
    :cond_20
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->bar:Z

    if-eqz v3, :cond_3a

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 487
    :goto_30
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->bar:Z

    if-eqz v3, :cond_47

    move v3, p2

    :goto_35
    cmpg-float v1, v3, v1

    if-gez v1, :cond_49

    .line 492
    :cond_39
    return v2

    .line 486
    :cond_3a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    goto :goto_30

    :cond_47
    move v3, p3

    .line 487
    goto :goto_35

    .line 490
    :cond_49
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_1c

    :cond_4d
    move v1, v2

    goto :goto_1c
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 448
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    .line 449
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_d

    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-nez v2, :cond_f

    .line 450
    :cond_d
    const/4 v0, 0x0

    .line 474
    :goto_e
    return v0

    .line 452
    :cond_f
    check-cast v0, Ljava/lang/String;

    .line 453
    check-cast p1, Landroid/widget/LinearLayout;

    .line 454
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_56

    move v0, v1

    .line 474
    goto :goto_e

    :pswitch_1c
    move v0, v1

    .line 456
    goto :goto_e

    .line 459
    :pswitch_1e
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->slot(Landroid/widget/LinearLayout;FF)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->showMarker(Landroid/widget/LinearLayout;I)V

    move v0, v1

    .line 460
    goto :goto_e

    .line 462
    :pswitch_2f
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->hideMarker()V

    move v0, v1

    .line 463
    goto :goto_e

    .line 465
    :pswitch_34
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->slot(Landroid/widget/LinearLayout;FF)I

    move-result v1

    .line 466
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->hideMarker()V

    .line 467
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->bar:Z

    invoke-static {v2, v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsNav;->drop(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_e

    .line 470
    :pswitch_4e
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/XemsNav$DropZone;->hideMarker()V

    .line 471
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->restoreAlpha()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$000()V

    move v0, v1

    .line 472
    goto :goto_e

    .line 454
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1e
        :pswitch_34
        :pswitch_4e
        :pswitch_1e
        :pswitch_2f
    .end packed-switch
.end method
