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
            "Ljava/util/Set",
            "<",
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

.field miSport:I

.field name:Landroid/widget/EditText;

.field newPhoto:Landroid/graphics/Bitmap;

.field final ownRow:[Landroid/widget/LinearLayout;

.field owner:Z

.field phone:Landroid/widget/EditText;

.field photo:Landroid/widget/ImageView;

.field photoHint:Landroid/widget/TextView;

.field sex:Lcom/isaigu/gymapp/bean/Gender;

.field final sexRow:[Landroid/widget/LinearLayout;

.field final sportRow:[Landroid/widget/LinearLayout;

.field warning:Landroid/widget/TextView;

.field final weight:[I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 92
    new-array v0, v2, [I

    const/16 v1, 0x23

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    .line 93
    new-array v0, v2, [I

    const/16 v1, 0xaa

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    .line 94
    new-array v0, v2, [I

    const/16 v1, 0x46

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    .line 95
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 96
    const-string v0, "mid"

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    .line 99
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    .line 100
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    .line 101
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    .line 105
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->ownRow:[Landroid/widget/LinearLayout;

    .line 106
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow:[Landroid/widget/LinearLayout;

    .line 109
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 110
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 111
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    .line 112
    if-eqz p2, :cond_5a

    .line 113
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->load(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 115
    :cond_5a
    return-void
.end method


# virtual methods
.method addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .registers 12

    .prologue
    const/16 v5, 0xc

    const v1, -0xbc5fb9

    const/16 v6, 0x8

    .line 554
    const/16 v2, 0x10

    if-eqz p3, :cond_56

    const/4 v0, -0x1

    :goto_c
    invoke-virtual {p0, p2, v2, v0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 555
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 557
    if-eqz p3, :cond_5a

    move v2, v1

    :goto_2b
    if-eqz p3, :cond_5f

    move v0, v1

    :goto_2e
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 558
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$14;

    invoke-direct {v0, p0, p4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$14;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 564
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_52

    .line 565
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 567
    :cond_52
    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    return-void

    .line 554
    :cond_56
    const v0, -0x13100c

    goto :goto_c

    .line 557
    :cond_5a
    const v0, -0xedebe8

    move v2, v0

    goto :goto_2b

    :cond_5f
    const v0, -0xd3cec5

    goto :goto_2e
.end method

.method button(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/16 v6, 0x18

    const/16 v4, 0x11

    const/16 v5, 0xc

    const v1, -0xbc5fb9

    .line 644
    if-eqz p2, :cond_35

    const/4 v0, -0x1

    :goto_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v4, v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 645
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 646
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 647
    if-eqz p2, :cond_39

    move v2, v1

    :goto_2a
    if-eqz p2, :cond_3e

    move v0, v1

    :goto_2d
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 648
    return-object v3

    .line 644
    :cond_35
    const v0, -0x13100c

    goto :goto_c

    .line 647
    :cond_39
    const v0, -0xe3e0da

    move v2, v0

    goto :goto_2a

    :cond_3e
    const v0, -0xd3cec5

    goto :goto_2d
.end method

.method card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 11

    .prologue
    const/16 v4, 0x12

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 535
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 536
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 537
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 538
    const v2, -0xe3e0da

    const v3, -0xd3cec5

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 539
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const v3, -0x675e50

    invoke-virtual {p0, v2, v7, v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 540
    const v3, 0x3da3d70a    # 0.08f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 541
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5a

    :goto_52
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    return-object v1

    .line 542
    :cond_5a
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    goto :goto_52
.end method

.method chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 4

    .prologue
    .line 547
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 548
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 549
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    return-object v0
.end method

.method column()Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 522
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 524
    return-object v0
.end method

.method contraChip(Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    .line 423
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    const v2, -0x13100c

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 424
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 425
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->styleContra(Landroid/widget/TextView;Z)V

    .line 426
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    return-object v0
.end method

.method dp(I)I
    .registers 5

    .prologue
    .line 686
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method input(Ljava/lang/String;I)Landroid/widget/EditText;
    .registers 8

    .prologue
    const/16 v3, 0xe

    const/16 v4, 0xc

    .line 631
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 632
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 634
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 635
    const v1, -0x13100c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 636
    const v1, -0x675e50

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 637
    const/4 v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 638
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 639
    const v1, -0xedebe8

    const v2, -0xd3cec5

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-object v0
.end method

.method leftColumn()Landroid/view/View;
    .registers 14

    .prologue
    const/16 v7, 0x10

    const/4 v12, 0x6

    const/4 v11, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 206
    const-string v0, "\u0421\u043d\u0438\u043c\u043a\u0430 \u0438 \u0438\u043c\u0435"

    const-string v1, "Photo and name"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 210
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoBox()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x60

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    const/16 v5, 0x60

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    const-string v2, "\u0418\u043c\u0435 \u0438 \u0444\u0430\u043c\u0438\u043b\u0438\u044f"

    const-string v3, "Full name"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2001

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    .line 212
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v2, :cond_5f

    .line 213
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_5f
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 216
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 217
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    const-string v0, "\u041f\u043e\u043b"

    const-string v1, "Sex"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v1, v9

    .line 222
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 224
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u00b7 \u0440\u044a\u0441\u0442 \u00b7 \u0442\u0435\u0433\u043b\u043e"

    const-string v1, "Age \u00b7 height \u00b7 weight"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 225
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 227
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v1, "Age"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0433."

    const-string v2, "y"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    const/16 v4, 0xa

    const/16 v5, 0x63

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v1, "Height"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cm"

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    const/16 v4, 0x64

    const/16 v5, 0xe6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    const-string v0, "\u0422\u0435\u0433\u043b\u043e"

    const-string v1, "Weight"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kg"

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    const/16 v4, 0x1e

    const/16 v5, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    const-string v0, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442 (\u043f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435)"

    const-string v1, "Contact (optional)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 236
    const-string v1, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d  +359 \u2026"

    const-string v2, "Phone  +359 \u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    .line 237
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 238
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_13f

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v1, :cond_13f

    .line 239
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_13f
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    const-string v1, "\u0418\u043c\u0435\u0439\u043b"

    const-string v2, "Email"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    .line 243
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 244
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_170

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v1, :cond_170

    .line 245
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_170
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    return-object v6
.end method

.method load(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 121
    :cond_b
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_21

    .line 122
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x63

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v2

    aput v2, v0, v1

    .line 124
    :cond_21
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_2b

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    iget v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    aput v2, v0, v1

    .line 127
    :cond_2b
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3c

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    iget v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 130
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "misport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 134
    array-length v0, v2

    if-lt v0, v7, :cond_e4

    .line 135
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_de

    aget-object v0, v2, v1

    :goto_b3
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 136
    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e1

    aget-object v0, v2, v6

    :goto_bf
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 137
    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_cc
    if-ge v0, v3, :cond_e4

    aget-object v1, v2, v0

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_db

    .line 139
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    .line 135
    :cond_de
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    goto :goto_b3

    .line 136
    :cond_e1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    goto :goto_bf

    .line 143
    :cond_e4
    return-void
.end method

.method match(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 671
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 673
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 674
    return-object v0
.end method

.method open()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 146
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    const v0, -0xedebe8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 151
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 154
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_13b

    const-string v0, "\u041d\u043e\u0432 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "New client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    const/16 v3, 0x18

    const v4, -0x13100c

    invoke-virtual {p0, v0, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 156
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_91

    .line 158
    const-string v0, "\u0418\u0441\u0442\u043e\u0440\u0438\u044f \u0438 \u0434\u043e\u043a\u043b\u0430\u0434\u0438"

    const-string v3, "History and reports"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 159
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {p0, v6, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_91
    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v3, "Cancel"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 169
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {p0, v6, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 176
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 187
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->leftColumn()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 190
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 191
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->rightColumn()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_145

    const/4 v0, 0x4

    .line 197
    :goto_127
    or-int/lit8 v0, v0, 0x10

    .line 195
    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_13a

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 202
    :cond_13a
    return-void

    .line 155
    :cond_13b
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b

    .line 197
    :cond_145
    const/4 v0, 0x2

    goto :goto_127
.end method

.method openReports()V
    .registers 6

    .prologue
    .line 388
    :try_start_0
    const-string v0, "com.isaigu.gymapp.wearable.ReportScreen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "open"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 389
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    aput-object v4, v2, v3

    .line 390
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 394
    :goto_2a
    return-void

    .line 391
    :catch_2b
    move-exception v0

    .line 392
    const-string v1, "xems_form"

    const-string v2, "reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method paint(Landroid/widget/NumberPicker;)V
    .registers 7

    .prologue
    .line 603
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_20

    .line 604
    const v1, -0x13100c

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setTextColor(I)V

    .line 605
    const/4 v1, 0x2

    const/high16 v2, 0x41d00000    # 26.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 606
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 605
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setTextSize(F)V

    .line 608
    :cond_20
    const/4 v1, 0x0

    move v3, v1

    :goto_22
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_46

    .line 609
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 610
    instance-of v1, v2, Landroid/widget/EditText;

    if-eqz v1, :cond_42

    .line 611
    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    const v4, -0x13100c

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 612
    check-cast v2, Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v2, v1, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 608
    :cond_42
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_22

    .line 615
    :cond_46
    const-class v1, Landroid/widget/NumberPicker;

    const-string v2, "mSelectorWheelPaint"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 616
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 617
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 618
    const v2, -0x13100c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    const/4 v2, 0x2

    const/high16 v3, 0x41d00000    # 26.0f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 620
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 619
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 621
    const-class v1, Landroid/widget/NumberPicker;

    const-string v2, "mSelectionDivider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 622
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 623
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbc5fb9

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_89} :catch_8d

    .line 627
    :goto_89
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 628
    return-void

    .line 624
    :catch_8d
    move-exception v1

    goto :goto_89
.end method

.method photoBox()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 253
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 254
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 255
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 256
    const v2, -0xedebe8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 257
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    const v3, -0xbc5fb9

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    .line 260
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 261
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const-string v1, "+ \u0441\u043d\u0438\u043c\u043a\u0430"

    const-string v2, "+ photo"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    const v3, -0x13100c

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    .line 264
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_73

    .line 268
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->read(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->showPhoto(Landroid/graphics/Bitmap;)V

    .line 270
    :cond_73
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-object v0
.end method

.method renderFitness()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    .line 411
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 412
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    array-length v3, v2

    :goto_b
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 413
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 420
    :cond_24
    return-void
.end method

.method renderGoal()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    .line 398
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 399
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    array-length v3, v2

    :goto_b
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 400
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$11;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$11;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 407
    :cond_24
    return-void
.end method

.method renderOwner()V
    .registers 8

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->ownRow:[Landroid/widget/LinearLayout;

    aget-object v4, v0, v2

    .line 356
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 357
    const-string v0, "\u041d\u0435 \u043d\u043e\u0441\u0438 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v5, "No band"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    if-nez v0, :cond_6c

    move v0, v1

    :goto_18
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v4, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 363
    const-string v0, "\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438\u043a \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v5, "Band owner"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v4, v0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow:[Landroid/widget/LinearLayout;

    aget-object v4, v0, v2

    .line 370
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 371
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    if-eqz v0, :cond_6e

    move v0, v2

    :goto_3e
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    const-string v0, "\u0411\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043a\u0440\u0438\u0442\u043e"

    const-string v5, "Indoor running"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_70

    move v0, v1

    :goto_4f
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v4, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 378
    const-string v0, "\u0421\u0432\u043e\u0431\u043e\u0434\u043d\u0430 (\u043f\u0440\u043e\u0431\u0430)"

    const-string v5, "Free (test)"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    if-ne v5, v3, :cond_72

    :goto_63
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 384
    return-void

    :cond_6c
    move v0, v2

    .line 357
    goto :goto_18

    :cond_6e
    move v0, v3

    .line 371
    goto :goto_3e

    :cond_70
    move v0, v2

    .line 372
    goto :goto_4f

    :cond_72
    move v1, v2

    .line 378
    goto :goto_63
.end method

.method renderSex()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    aget-object v3, v0, v2

    .line 339
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 340
    const-string v0, "\u041c\u044a\u0436"

    const-string v4, "Male"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v0, v5, :cond_37

    move v0, v1

    :goto_18
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 346
    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v4, "Female"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v4, v5, :cond_39

    :goto_2e
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 352
    return-void

    :cond_37
    move v0, v2

    .line 340
    goto :goto_18

    :cond_39
    move v1, v2

    .line 346
    goto :goto_2e
.end method

.method rightColumn()Landroid/view/View;
    .registers 15

    .prologue
    const/4 v13, 0x4

    const v5, -0x675e50

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 293
    const-string v0, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 294
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 295
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 297
    const-string v0, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0444\u043e\u0440\u043c\u0430"

    const-string v2, "Fitness"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 298
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 299
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFitness()V

    .line 301
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430 \u0438 Mi Fitness"

    const-string v2, "Band and Mi Fitness"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 302
    const-string v2, "\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438\u043a\u044a\u0442 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430 \u0432\u0441\u044f\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0438 \u043a\u0430\u0442\u043e \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0432 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u043f\u0443\u043b\u0441, \u043a\u0430\u043b\u043e\u0440\u0438\u0438 \u0438 \u0432\u0440\u0435\u043c\u0435 \u0432\u043b\u0438\u0437\u0430\u0442 \u0432 Mi Fitness."

    const-string v4, "The band owner also gets every training as a band workout: heart rate, calories and time go to Mi Fitness."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 304
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->ownRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v4

    aput-object v4, v2, v1

    .line 306
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 307
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderOwner()V

    .line 309
    const-string v0, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v2, "Contraindications"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 310
    const-string v0, "\u041e\u0442\u0431\u0435\u043b\u0435\u0436\u0438, \u0430\u043a\u043e \u0438\u043c\u0430. EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u043f\u0440\u0438 \u043d\u0438\u0442\u043e \u0435\u0434\u043d\u043e \u043e\u0442 \u0442\u044f\u0445."

    const-string v2, "Mark any that apply. EMS is not advised with any of them."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 312
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    const-string v0, ""

    const/16 v2, 0xe

    const v5, -0x1ac6cb

    invoke-virtual {p0, v0, v2, v5, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    .line 318
    :goto_bd
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_111

    .line 319
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v0

    .line 321
    :goto_cd
    add-int/lit8 v7, v0, 0x2

    sget-object v8, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v2, v7, :cond_103

    .line 322
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChip(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    if-ne v2, v0, :cond_100

    .line 324
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v9

    invoke-direct {v8, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    :cond_100
    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    .line 328
    :cond_103
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    add-int/lit8 v0, v0, 0x2

    goto :goto_bd

    .line 330
    :cond_111
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->updateWarning()V

    .line 332
    return-object v3
.end method

.method round(II)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 663
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 664
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 665
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 666
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 667
    return-object v0
.end method

.method save()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 459
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 460
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    .line 461
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435"

    const-string v2, "Enter a name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 500
    :goto_28
    return-void

    .line 465
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v1, v0

    .line 466
    :goto_30
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 467
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 468
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 470
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 471
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    aget v0, v0, v3

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 473
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 474
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    aget v4, v4, v3

    neg-int v4, v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 475
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_db

    :goto_73
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_de

    :goto_89
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9d

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_9d

    .line 483
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    .line 486
    :cond_9d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->summary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_e1

    :goto_ab
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v4, v2

    :goto_b6
    if-ge v3, v4, :cond_e3

    aget-object v5, v2, v3

    .line 490
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_cd

    .line 492
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    :cond_cd
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 465
    :cond_d3
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    move-object v1, v0

    goto/16 :goto_30

    .line 477
    :cond_db
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    goto :goto_73

    .line 479
    :cond_de
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    goto :goto_89

    :cond_e1
    move v2, v3

    .line 487
    goto :goto_ab

    .line 497
    :cond_e3
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    .line 498
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "misport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_28
.end method

.method scroll(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    .line 528
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 529
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 531
    return-object v0
.end method

.method showPhoto(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 284
    if-nez p1, :cond_3

    .line 289
    :goto_2
    return-void

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method styleContra(Landroid/widget/TextView;Z)V
    .registers 5

    .prologue
    .line 439
    if-eqz p2, :cond_1a

    const v0, 0x33e53935

    move v1, v0

    :goto_6
    if-eqz p2, :cond_1f

    const v0, -0x1ac6cb

    :goto_b
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 440
    if-eqz p2, :cond_23

    const/16 v0, -0x7580

    :goto_16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    return-void

    .line 439
    :cond_1a
    const v0, -0xe3e0da

    move v1, v0

    goto :goto_6

    :cond_1f
    const v0, -0xd3cec5

    goto :goto_b

    .line 440
    :cond_23
    const v0, -0x13100c

    goto :goto_16
.end method

.method summary()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    const-string v0, "\u0426\u0435\u043b: "

    const-string v2, "Goal: "

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0424\u043e\u0440\u043c\u0430: "

    const-string v4, "Fitness: "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 507
    const-string v0, " \u00b7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f: "

    const-string v4, "Contraindications: "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const/4 v0, 0x1

    .line 509
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_55
    if-ge v2, v5, :cond_77

    aget-object v6, v4, v2

    .line 510
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 511
    if-eqz v0, :cond_74

    const-string v0, ""

    :goto_65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 509
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 511
    :cond_74
    const-string v0, ", "

    goto :goto_65

    .line 516
    :cond_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .registers 8

    .prologue
    .line 652
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 655
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    if-eqz p4, :cond_19

    .line 657
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 659
    :cond_19
    return-object v0
.end method

.method updateWarning()V
    .registers 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 454
    :goto_4
    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 450
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const-string v1, "\u26a0 \u0418\u043c\u0430 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0435 \u2014 EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0431\u0435\u0437 \u043b\u0435\u043a\u0430\u0440."

    const-string v2, "\u26a0 Contraindication \u2014 no EMS without a doctor\'s approval."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;
    .registers 15

    .prologue
    const/16 v8, 0x11

    const v7, -0x675e50

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 572
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 573
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 574
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 575
    const/16 v1, 0xf

    invoke-virtual {p0, p1, v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 576
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 577
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    new-instance v1, Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 579
    invoke-virtual {v1, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 580
    invoke-virtual {v1, p5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 581
    aget v2, p3, v5

    invoke-static {v2, p4, p5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 582
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 583
    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 584
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$15;

    invoke-direct {v2, p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$15;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;[I)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 589
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->paint(Landroid/widget/NumberPicker;)V

    .line 590
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0xbe

    .line 591
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 592
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 593
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    const/16 v1, 0xe

    invoke-virtual {p0, p2, v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 596
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    return-object v0
.end method

.method wrap(II)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    const/4 v1, -0x2

    .line 678
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 680
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 681
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 682
    return-object v0
.end method
