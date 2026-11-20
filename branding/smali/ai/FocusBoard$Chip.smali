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
.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 14

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 2396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2384
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 2390
    iput v7, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 2392
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 2394
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    .line 2397
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    .line 2398
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_14f

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_24
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    if-eqz p3, :cond_153

    const/high16 v0, 0x40e00000    # 7.0f

    :goto_30
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 2399
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 2398
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2400
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    .line 2401
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2402
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;-><init>(Lcom/isaigu/gymapp/ai/FocusBoard$Chip;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2403
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;

    invoke-direct {v2, p2}, Lcom/isaigu/gymapp/ai/FocusBoard$ChipClick;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2405
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2406
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2407
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 2408
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2409
    invoke-static {p1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const v6, 0x3eb33333    # 0.35f

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 2410
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2411
    if-eqz p3, :cond_157

    move v0, v1

    .line 2412
    :goto_80
    if-eqz v0, :cond_a0

    .line 2413
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2414
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2415
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2416
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 2417
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2418
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2421
    :cond_a0
    if-nez p3, :cond_b8

    .line 2422
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    :cond_b8
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 2426
    if-eqz p3, :cond_16d

    const/4 v0, 0x0

    :goto_bf
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2427
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, p2

    if-eqz p3, :cond_171

    const/high16 v0, 0x41500000    # 13.0f

    :goto_d0
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p1, v3, v0, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    .line 2428
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2429
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2430
    const-string v3, ""

    if-eqz p3, :cond_175

    const/high16 v0, 0x41800000    # 16.0f

    :goto_e8
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p1, v3, v0, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    .line 2431
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2432
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2433
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2434
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/16 v4, 0xaa

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2435
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    .line 2436
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    .line 2437
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2438
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {p1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2439
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2440
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2441
    return-void

    .line 2398
    :cond_14f
    const/high16 v0, 0x41000000    # 8.0f

    goto/16 :goto_24

    :cond_153
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_30

    .line 2411
    :cond_157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->ICONS:[Ljava/lang/String;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$3600()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p2

    const-string v4, "mipmap"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_80

    .line 2426
    :cond_16d
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_bf

    .line 2427
    :cond_171
    const/high16 v0, 0x41580000    # 13.5f

    goto/16 :goto_d0

    .line 2430
    :cond_175
    const/high16 v0, 0x41b00000    # 22.0f

    goto/16 :goto_e8
.end method


# virtual methods
.method repaint()V
    .registers 12

    .prologue
    const/16 v10, 0xcc

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 2466
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    if-ltz v0, :cond_5f

    move v5, v3

    .line 2467
    :goto_b
    if-eqz v5, :cond_61

    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 2468
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2469
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2493
    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v5, v4

    .line 2466
    goto :goto_b

    .line 2467
    :cond_61
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    goto :goto_f

    .line 2472
    :cond_64
    iput-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    .line 2473
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2474
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v7, v1

    .line 2475
    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 2476
    iget-object v8, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    iget-boolean v9, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-nez v9, :cond_7d

    if-eqz v5, :cond_108

    :cond_7d
    invoke-static {v6, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->glow(Landroid/content/Context;IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 2477
    :goto_81
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 2476
    invoke-static {v1, v9, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2479
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v1, :cond_11e

    const v1, 0x3ecccccd    # 0.4f

    :goto_93
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2480
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v1, :cond_121

    const-string v1, "\u0438\u0437\u043a\u043b."

    const-string v7, "off"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2482
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-nez v1, :cond_ad

    if-eqz v5, :cond_136

    :cond_ad
    sget-boolean v1, Lcom/isaigu/gymapp/widget/XemsUi;->dark:Z

    if-nez v1, :cond_136

    move v1, v3

    .line 2483
    :goto_b2
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->value:Landroid/widget/TextView;

    if-eqz v1, :cond_139

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_b8
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2484
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    if-eqz v1, :cond_13d

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_c1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2485
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    if-eqz v1, :cond_140

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    :goto_ca
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3, v4, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2486
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->bar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2487
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2488
    if-lez v1, :cond_f9

    const/16 v3, 0x64

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_f9
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2489
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->barFill:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2490
    if-gtz v1, :cond_5e

    .line 2491
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->shown:Ljava/lang/String;

    goto/16 :goto_5e

    .line 2477
    :cond_108
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v9

    .line 2478
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    .line 2477
    invoke-static {v1, v7, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    goto/16 :goto_81

    :cond_11e
    move v1, v2

    .line 2479
    goto/16 :goto_93

    .line 2480
    :cond_121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " %"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a4

    :cond_136
    move v1, v4

    .line 2482
    goto/16 :goto_b2

    .line 2483
    :cond_139
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    goto/16 :goto_b8

    .line 2484
    :cond_13d
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_c1

    .line 2485
    :cond_140
    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    goto :goto_ca
.end method

.method set(IIZZZ)V
    .registers 7

    .prologue
    .line 2456
    iput p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    .line 2457
    iput p2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 2458
    iput-boolean p3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    .line 2459
    iput-boolean p4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->yellow:Z

    .line 2460
    iput-boolean p5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    .line 2461
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    .line 2462
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->repaint()V

    .line 2463
    return-void
.end method

.method show(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 2445
    if-eqz p1, :cond_28

    const/4 v0, 0x0

    .line 2446
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_10

    .line 2447
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2449
    :cond_10
    if-eqz p2, :cond_2b

    .line 2450
    :goto_12
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2451
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2453
    :cond_27
    return-void

    .line 2445
    :cond_28
    const/16 v0, 0x8

    goto :goto_3

    .line 2449
    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoUi;->zoneNames()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    aget-object p2, v0, v1

    goto :goto_12
.end method
