.class final Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Form"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final age:[I

.field final contra:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final dialog:Landroid/app/Dialog;

.field final editing:Lcom/isaigu/gymapp/bean/TrainUser;

.field email:Landroid/widget/EditText;

.field final fitRow:[Landroid/widget/LinearLayout;

.field fitness:Ljava/lang/String;

.field goal:Ljava/lang/String;

.field final goalRow:[Landroid/widget/LinearLayout;

.field final height:[I

.field name:Landroid/widget/EditText;

.field newPhoto:Landroid/graphics/Bitmap;

.field phone:Landroid/widget/EditText;

.field photo:Landroid/widget/ImageView;

.field photoHint:Landroid/widget/TextView;

.field sex:Lcom/isaigu/gymapp/bean/Gender;

.field final sexRow:[Landroid/widget/LinearLayout;

.field warning:Landroid/widget/TextView;

.field final weight:[I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 7

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 92
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x23

    const/4 v3, 0x0

    aput v2, v1, v3

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    .line 93
    new-array v1, v0, [I

    const/16 v2, 0xaa

    aput v2, v1, v3

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    .line 94
    new-array v1, v0, [I

    const/16 v2, 0x46

    aput v2, v1, v3

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    .line 95
    const-string v1, "tone"

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 96
    const-string v1, "mid"

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    .line 99
    new-array v1, v0, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    .line 100
    new-array v1, v0, [Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    .line 101
    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    .line 104
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 105
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 106
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    .line 107
    if-eqz p2, :cond_4f

    .line 108
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->load(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 110
    :cond_4f
    return-void
.end method


# virtual methods
.method addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .registers 10

    .line 485
    if-eqz p3, :cond_4

    const/4 v0, -0x1

    goto :goto_7

    :cond_4
    const v0, -0x13100c

    :goto_7
    const/16 v1, 0x10

    invoke-virtual {p0, p2, v1, v0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 486
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 487
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p2, v1, v3, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 488
    const v1, -0xbc5fb9

    if-eqz p3, :cond_32

    const v2, -0xbc5fb9

    goto :goto_35

    :cond_32
    const v2, -0xedebe8

    :goto_35
    if-eqz p3, :cond_38

    goto :goto_3b

    :cond_38
    const v1, -0xd3cec5

    :goto_3b
    invoke-virtual {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 489
    new-instance p3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;

    invoke-direct {p3, p0, p4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, 0x0

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 495
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p4

    if-lez p4, :cond_5f

    .line 496
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result p4

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 498
    :cond_5f
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    return-void
.end method

.method button(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 7

    .line 575
    if-eqz p2, :cond_4

    const/4 v0, -0x1

    goto :goto_7

    :cond_4
    const v0, -0x13100c

    :goto_7
    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 576
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 577
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 578
    const v0, -0xbc5fb9

    if-eqz p2, :cond_31

    const v1, -0xbc5fb9

    goto :goto_34

    :cond_31
    const v1, -0xe3e0da

    :goto_34
    if-eqz p2, :cond_37

    goto :goto_3a

    :cond_37
    const v0, -0xd3cec5

    :goto_3a
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 579
    return-object p1
.end method

.method card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 9

    .line 466
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 467
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 469
    const v2, -0xe3e0da

    const v3, -0xd3cec5

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 470
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0xc

    const v3, -0x675e50

    invoke-virtual {p0, p2, v2, v3, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p2

    .line 471
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-nez p2, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    :goto_57
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    return-object v0
.end method

.method chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 4

    .line 478
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 480
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    return-object v0
.end method

.method column()Landroid/widget/LinearLayout;
    .registers 3

    .line 453
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 454
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 455
    return-object v0
.end method

.method contraChip(Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 355
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    const v2, -0x13100c

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 356
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 357
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->styleContra(Landroid/widget/TextView;Z)V

    .line 358
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-object v0
.end method

.method dp(I)I
    .registers 4

    .line 617
    int-to-float p1, p1

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method input(Ljava/lang/String;I)Landroid/widget/EditText;
    .registers 6

    .line 562
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 563
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 565
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 566
    const p1, -0x13100c

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 567
    const p1, -0x675e50

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 568
    const/4 p1, 0x2

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 569
    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result p2

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result p1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 570
    const p1, -0xedebe8

    const p2, -0xd3cec5

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 571
    return-object v0
.end method

.method leftColumn()Landroid/view/View;
    .registers 15

    .line 187
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 188
    const-string v1, "\u0421\u043d\u0438\u043c\u043a\u0430 \u0438 \u0438\u043c\u0435"

    const-string v2, "Photo and name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 190
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 192
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoBox()Landroid/view/View;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x60

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    const-string v5, "\u0418\u043c\u0435 \u0438 \u0444\u0430\u043c\u0438\u043b\u0438\u044f"

    const-string v6, "Full name"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2001

    invoke-virtual {p0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    .line 194
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v5, :cond_57

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v5, :cond_57

    .line 195
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_57
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 198
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const-string v1, "\u041f\u043e\u043b"

    const-string v2, "Sex"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    aput-object v1, v2, v3

    .line 204
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 206
    const-string v1, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u00b7 \u0440\u044a\u0441\u0442 \u00b7 \u0442\u0435\u0433\u043b\u043e"

    const-string v2, "Age \u00b7 height \u00b7 weight"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 207
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    const-string v4, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v5, "Age"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "\u0433."

    const-string v5, "y"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    const/16 v12, 0xa

    const/16 v13, 0x63

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const-string v4, "\u0420\u044a\u0441\u0442"

    const-string v5, "Height"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    const/16 v12, 0x64

    const/16 v13, 0xe6

    const-string v10, "cm"

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const-string v4, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    const/16 v12, 0x1e

    const/16 v13, 0xc8

    const-string v10, "kg"

    invoke-virtual/range {v8 .. v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const-string v1, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442 (\u043f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435)"

    const-string v2, "Contact (optional)"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 218
    const-string v2, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d  +359 \u2026"

    const-string v5, "Phone  +359 \u2026"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    .line 219
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 220
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_135

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v2, :cond_135

    .line 221
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_135
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const-string v2, "\u0418\u043c\u0435\u0439\u043b"

    const-string v3, "Email"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    .line 225
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 226
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_162

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v2, :cond_162

    .line 227
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_162
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-object v0
.end method

.method load(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 7

    .line 113
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_8

    .line 114
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 116
    :cond_8
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x63

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v2

    aput v2, v0, v1

    .line 119
    :cond_1f
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_29

    .line 120
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    iget v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    aput v2, v0, v1

    .line 122
    :cond_29
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3a

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    iget v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 125
    :cond_3a
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    const/4 v0, -0x1

    const-string v2, "\\|"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 127
    array-length v0, p1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_9f

    .line 128
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6f

    aget-object v0, p1, v1

    goto :goto_71

    :cond_6f
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    :goto_71
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7f

    aget-object v0, p1, v0

    goto :goto_81

    :cond_7f
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    :goto_81
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 130
    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    :goto_8d
    if-ge v1, v0, :cond_9f

    aget-object v2, p1, v1

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9c

    .line 132
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 136
    :cond_9f
    return-void
.end method

.method match(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 602
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 604
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 605
    return-object v0
.end method

.method open()V
    .registers 11

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    const v2, -0xedebe8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 144
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v6

    const/16 v7, 0xe

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v9

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v7

    invoke-virtual {v2, v6, v8, v9, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v6, :cond_41

    const-string v6, "\u041d\u043e\u0432 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v7, "New client"

    goto :goto_45

    :cond_41
    const-string v6, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v7, "Client"

    :goto_45
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0x13100c

    invoke-virtual {p0, v6, v5, v7, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 149
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const-string v5, "\u041e\u0442\u043a\u0430\u0437"

    const-string v6, "Cancel"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v5

    .line 151
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0, v3, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    const-string v5, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v6, "Save"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v1

    .line 158
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {p0, v5, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 170
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->leftColumn()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v3, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 172
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 173
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->rightColumn()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_f3

    const/4 v1, 0x4

    goto :goto_f4

    .line 179
    :cond_f3
    const/4 v1, 0x2

    :goto_f4
    or-int/2addr v1, v4

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_106

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 184
    :cond_106
    return-void
.end method

.method paint(Landroid/widget/NumberPicker;)V
    .registers 8

    .line 534
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/high16 v2, 0x41d00000    # 26.0f

    const/4 v3, 0x2

    const v4, -0x13100c

    if-lt v0, v1, :cond_20

    .line 535
    invoke-virtual {p1, v4}, Landroid/widget/NumberPicker;->setTextColor(I)V

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 537
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 536
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setTextSize(F)V

    .line 539
    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 540
    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 541
    instance-of v5, v1, Landroid/widget/EditText;

    if-eqz v5, :cond_3a

    .line 542
    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 543
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 539
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 546
    :cond_3d
    const-class v0, Landroid/widget/NumberPicker;

    const-string v1, "mSelectorWheelPaint"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 547
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 548
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    .line 549
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 551
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 550
    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 552
    const-class v0, Landroid/widget/NumberPicker;

    const-string v2, "mSelectionDivider"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 554
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbc5fb9

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_0 .. :try_end_79} :catchall_7a

    .line 557
    goto :goto_7b

    .line 555
    :catchall_7a
    move-exception v0

    .line 558
    :goto_7b
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 559
    return-void
.end method

.method photoBox()Landroid/view/View;
    .registers 7

    .line 235
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 236
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 238
    const v3, -0xedebe8

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 239
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    const v4, -0xbc5fb9

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    .line 242
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const-string v1, "+ \u0441\u043d\u0438\u043c\u043a\u0430"

    const-string v3, "+ photo"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    const v5, -0x13100c

    invoke-virtual {p0, v1, v3, v5, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    .line 246
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_6d

    .line 250
    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->read(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->showPhoto(Landroid/graphics/Bitmap;)V

    .line 252
    :cond_6d
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-object v0
.end method

.method renderFitness()V
    .registers 9

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 343
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 344
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    array-length v3, v2

    :goto_b
    if-ge v1, v3, :cond_24

    aget-object v4, v2, v1

    .line 345
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 352
    :cond_24
    return-void
.end method

.method renderGoal()V
    .registers 9

    .line 329
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 330
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 331
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    array-length v3, v2

    :goto_b
    if-ge v1, v3, :cond_24

    aget-object v4, v2, v1

    .line 332
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 339
    :cond_24
    return-void
.end method

.method renderSex()V
    .registers 7

    .line 312
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 313
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 314
    const-string v2, "\u041c\u044a\u0436"

    const-string v3, "Male"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v4, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 320
    const-string v2, "\u0416\u0435\u043d\u0430"

    const-string v3, "Female"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v4, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v3, v4, :cond_31

    const/4 v1, 0x1

    :cond_31
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method rightColumn()Landroid/view/View;
    .registers 14

    .line 274
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 275
    const-string v1, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 277
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 279
    const-string v1, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0444\u043e\u0440\u043c\u0430"

    const-string v2, "Fitness"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    aput-object v1, v2, v3

    .line 281
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFitness()V

    .line 283
    const-string v1, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v2, "Contraindications"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 284
    const-string v2, "\u041e\u0442\u0431\u0435\u043b\u0435\u0436\u0438, \u0430\u043a\u043e \u0438\u043c\u0430. EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u043f\u0440\u0438 \u043d\u0438\u0442\u043e \u0435\u0434\u043d\u043e \u043e\u0442 \u0442\u044f\u0445."

    const-string v4, "Mark any that apply. EMS is not advised with any of them."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    const v5, -0x675e50

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 286
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const-string v2, ""

    const/16 v4, 0xe

    const v5, -0x1ac6cb

    const/4 v6, 0x1

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    .line 288
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 292
    const/4 v5, 0x0

    :goto_82
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_d5

    .line 293
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 295
    move v8, v5

    :goto_92
    add-int/lit8 v9, v5, 0x2

    sget-object v10, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v8, v10, :cond_c8

    .line 296
    sget-object v9, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChip(Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    if-ne v8, v5, :cond_c5

    .line 298
    new-instance v9, Landroid/view/View;

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 299
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v11

    invoke-direct {v10, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_c5
    add-int/lit8 v8, v8, 0x1

    goto :goto_92

    .line 302
    :cond_c8
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    move v5, v9

    goto :goto_82

    .line 304
    :cond_d5
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->updateWarning()V

    .line 306
    return-object v0
.end method

.method round(II)Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 594
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 595
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 596
    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 597
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 598
    return-object v0
.end method

.method save()V
    .registers 8

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    .line 393
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435"

    const-string v2, "Enter a name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 395
    return-void

    .line 397
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_2c

    goto :goto_31

    :cond_2c
    new-instance v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 398
    :goto_31
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 399
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 400
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 402
    :cond_3d
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 405
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    aget v3, v3, v2

    neg-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 407
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_77

    goto :goto_79

    :cond_77
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    :goto_79
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_90

    goto :goto_92

    :cond_90
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    :goto_92
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a4

    .line 413
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v3, v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_a4

    .line 415
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    .line 418
    :cond_a4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->summary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v3, :cond_b3

    goto :goto_b4

    :cond_b3
    const/4 v4, 0x0

    :goto_b4
    invoke-static {v0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v4, v3

    :goto_bf
    if-ge v2, v4, :cond_dc

    aget-object v5, v3, v2

    .line 422
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_d6

    .line 424
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    :cond_d6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    .line 429
    :cond_dc
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 431
    return-void
.end method

.method scroll(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .line 459
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 460
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 461
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 462
    return-object v0
.end method

.method showPhoto(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 266
    if-nez p1, :cond_3

    .line 267
    return-void

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    return-void
.end method

.method styleContra(Landroid/widget/TextView;Z)V
    .registers 5

    .line 371
    if-eqz p2, :cond_6

    const v0, 0x33e53935

    goto :goto_9

    :cond_6
    const v0, -0xe3e0da

    :goto_9
    if-eqz p2, :cond_f

    const v1, -0x1ac6cb

    goto :goto_12

    :cond_f
    const v1, -0xd3cec5

    :goto_12
    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    if-eqz p2, :cond_1e

    const/16 p2, -0x7580

    goto :goto_21

    :cond_1e
    const p2, -0x13100c

    :goto_21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    return-void
.end method

.method summary()Ljava/lang/String;
    .registers 9

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    const-string v1, "\u0426\u0435\u043b: "

    const-string v2, "Goal: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0424\u043e\u0440\u043c\u0430: "

    const-string v3, "Fitness: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_70

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f: "

    const-string v2, "Contraindications: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    nop

    .line 440
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_4f
    if-ge v5, v2, :cond_70

    aget-object v6, v1, v5

    .line 441
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 442
    if-eqz v4, :cond_60

    const-string v4, ""

    goto :goto_62

    :cond_60
    const-string v4, ", "

    :goto_62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const/4 v4, 0x0

    .line 440
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 447
    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .registers 7

    .line 583
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    int-to-float p1, p2

    const/4 p2, 0x2

    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 586
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    if-eqz p4, :cond_19

    .line 588
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 590
    :cond_19
    return-object v0
.end method

.method updateWarning()V
    .registers 4

    .line 376
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 377
    return-void

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 382
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const-string v1, "\u26a0 \u0418\u043c\u0430 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0435 \u2014 EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0431\u0435\u0437 \u043b\u0435\u043a\u0430\u0440."

    const-string v2, "\u26a0 Contraindication \u2014 no EMS without a doctor\'s approval."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :goto_28
    return-void
.end method

.method wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;
    .registers 12

    .line 503
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 504
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 505
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 506
    const/16 v2, 0xf

    const v3, -0x675e50

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 507
    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 508
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    new-instance p1, Landroid/widget/NumberPicker;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {p1, v5}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {p1, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 511
    invoke-virtual {p1, p5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 512
    aget v5, p3, v4

    invoke-static {v5, p4, p5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 513
    invoke-virtual {p1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 514
    const/high16 p4, 0x60000

    invoke-virtual {p1, p4}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 515
    new-instance p4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;

    invoke-direct {p4, p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;[I)V

    invoke-virtual {p1, p4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 520
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->paint(Landroid/widget/NumberPicker;)V

    .line 521
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    .line 522
    const/16 p4, 0xbe

    invoke-virtual {p0, p4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result p4

    const/4 p5, -0x2

    invoke-direct {p3, p5, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 524
    invoke-virtual {v0, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    const/16 p1, 0xe

    invoke-virtual {p0, p2, p1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 526
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 527
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    return-object v0
.end method

.method wrap(II)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 609
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 611
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 612
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 613
    return-object v0
.end method
