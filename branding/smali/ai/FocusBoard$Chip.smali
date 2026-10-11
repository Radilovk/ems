.class final Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
.super Ljava/lang/Object;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Chip"
.end annotation


# instance fields
.field final bar:Landroid/view/View;

.field final barFill:Landroid/view/View;

.field cap:I

.field dragValue:I

.field final k:I

.field level:I

.field final name:Landroid/widget/TextView;

.field off:Z

.field sel:Z

.field private shown:Ljava/lang/String;

.field tint:I

.field final value:Landroid/widget/TextView;

.field final view:Landroid/widget/LinearLayout;

.field yellow:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 14

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 1472
    iput v7, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1474
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 1476
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    .line 1479
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    .line 1480
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1481
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    .line 1482
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1483
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;-><init>(Lcom/isaigu/gymapp/ai/FocusBoard$Chip;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1484
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;

    invoke-direct {v1, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1486
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1487
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1488
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1489
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1490
    invoke-static {p1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const v5, 0x3eb33333    # 0.35f

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1491
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1800()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    const-string v3, "mipmap"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1493
    if-eqz v1, :cond_ad

    .line 1494
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1495
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1496
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1497
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 1498
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1499
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    :cond_ad
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1504
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1505
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1506
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p1, v1, v2, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    .line 1507
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1508
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1509
    const-string v1, ""

    const/high16 v2, 0x41700000    # 15.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p1, v1, v2, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    .line 1510
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1511
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1512
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1513
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v3, 0xaa

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, v6, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    .line 1515
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    .line 1516
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1517
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1518
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1520
    return-void
.end method


# virtual methods
.method repaint()V
    .registers 11

    .prologue
    const/16 v9, 0xcc

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1535
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    if-ltz v0, :cond_5f

    const/4 v0, 0x1

    move v4, v0

    .line 1536
    :goto_b
    if-eqz v4, :cond_61

    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1537
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1538
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1559
    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v4, v3

    .line 1535
    goto :goto_b

    .line 1536
    :cond_61
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    goto :goto_f

    .line 1541
    :cond_64
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 1542
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1543
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v6, v1

    .line 1544
    if-eqz v4, :cond_f2

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 1545
    :goto_77
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    iget-boolean v8, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-nez v8, :cond_7f

    if-eqz v4, :cond_fe

    :cond_7f
    invoke-static {v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1546
    :goto_83
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 1545
    invoke-static {v1, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1548
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v1, :cond_114

    const v1, 0x3ecccccd    # 0.4f

    :goto_95
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1549
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v1, :cond_116

    const-string v1, "\u0438\u0437\u043a\u043b."

    const-string v4, "off"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1551
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v5, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4, v3, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1552
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1553
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1554
    if-lez v1, :cond_12b

    const/16 v4, 0x64

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_e3
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1555
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1556
    if-gtz v1, :cond_5e

    .line 1557
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    goto/16 :goto_5e

    .line 1544
    :cond_f2
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    if-eqz v1, :cond_fa

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_77

    :cond_fa
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_77

    .line 1546
    :cond_fe
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    .line 1547
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 1546
    invoke-static {v1, v6, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_83

    :cond_114
    move v1, v2

    .line 1548
    goto :goto_95

    .line 1549
    :cond_116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " %"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a6

    :cond_12b
    move v0, v3

    .line 1554
    goto :goto_e3
.end method

.method set(IIZZZ)V
    .registers 8

    .prologue
    .line 1523
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    .line 1524
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 1525
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    .line 1526
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    .line 1527
    iput-boolean p5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    .line 1528
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->focus:Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1000()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 1529
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 1530
    if-nez v0, :cond_1c

    const/16 v0, 0x64

    :goto_16
    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    .line 1531
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->repaint()V

    .line 1532
    return-void

    .line 1530
    :cond_1c
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    if-ne p2, v1, :cond_27

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_16

    :cond_27
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_16
.end method
