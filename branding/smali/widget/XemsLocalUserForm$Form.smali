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

.field final fitRow:[Landroid/widget/LinearLayout;

.field fitness:Ljava/lang/String;

.field goal:Ljava/lang/String;

.field final goalRow:[Landroid/widget/LinearLayout;

.field final height:[I

.field name:Landroid/widget/EditText;

.field phone:Landroid/widget/EditText;

.field sex:Lcom/isaigu/gymapp/bean/Gender;

.field final sexRow:[Landroid/widget/LinearLayout;

.field warning:Landroid/widget/TextView;

.field final weight:[I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 87
    new-array v0, v2, [I

    const/16 v1, 0x23

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    .line 88
    new-array v0, v2, [I

    const/16 v1, 0xaa

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    .line 89
    new-array v0, v2, [I

    const/16 v1, 0x46

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    .line 90
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 91
    const-string v0, "mid"

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    .line 94
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    .line 95
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    .line 96
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    .line 99
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 100
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 101
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->load(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 7

    .prologue
    const/16 v5, 0xc

    const v1, -0xbc5fb9

    const/16 v6, 0x8

    .line 419
    const/16 v2, 0x10

    if-eqz p3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p2, v2, v0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 420
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 421
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    if-eqz p3, :cond_2

    move v2, v1

    :goto_1
    if-eqz p3, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 423
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;

    invoke-direct {v0, p0, p4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 429
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 430
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 432
    :cond_0
    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    return-void

    .line 419
    :cond_1
    const v0, -0x13100c

    goto :goto_0

    .line 422
    :cond_2
    const v0, -0xedebe8

    move v2, v0

    goto :goto_1

    :cond_3
    const v0, -0xd3cec5

    goto :goto_2
.end method

.method button(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 7

    .prologue
    const/16 v6, 0x18

    const/16 v4, 0x11

    const/16 v5, 0xc

    const v1, -0xbc5fb9

    .line 509
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v4, v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 510
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 511
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 512
    if-eqz p2, :cond_1

    move v2, v1

    :goto_1
    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 513
    return-object v3

    .line 509
    :cond_0
    const v0, -0x13100c

    goto :goto_0

    .line 512
    :cond_1
    const v0, -0xe3e0da

    move v2, v0

    goto :goto_1

    :cond_2
    const v0, -0xd3cec5

    goto :goto_2
.end method

.method card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/16 v4, 0x12

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 400
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 401
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 402
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

    .line 403
    const v2, -0xe3e0da

    const v3, -0xd3cec5

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const v3, -0x675e50

    invoke-virtual {p0, v2, v7, v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 405
    const v3, 0x3da3d70a    # 0.08f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 406
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    return-object v1

    .line 407
    :cond_0
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    goto :goto_0
.end method

.method chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 414
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-object v0
.end method

.method column()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 389
    return-object v0
.end method

.method contraChip(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    .line 297
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    const v2, -0x13100c

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 298
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 299
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->styleContra(Landroid/widget/TextView;Z)V

    .line 300
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-object v0
.end method

.method dp(I)I
    .locals 3

    .prologue
    .line 551
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
    .locals 5

    .prologue
    const/16 v3, 0xe

    const/16 v4, 0xc

    .line 496
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 500
    const v1, -0x13100c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 501
    const v1, -0x675e50

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 502
    const/4 v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 503
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 504
    const v1, -0xedebe8

    const v2, -0xd3cec5

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    return-object v0
.end method

.method leftColumn()Landroid/view/View;
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 183
    const-string v0, "\u0418\u043c\u0435"

    const-string v1, "Name"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 184
    const-string v1, "\u0418\u043c\u0435 \u0438 \u0444\u0430\u043c\u0438\u043b\u0438\u044f"

    const-string v2, "Full name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2001

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    .line 185
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const-string v0, "\u041f\u043e\u043b"

    const-string v1, "Sex"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v1, v9

    .line 192
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 194
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u00b7 \u0440\u044a\u0441\u0442 \u00b7 \u0442\u0435\u0433\u043b\u043e"

    const-string v1, "Age \u00b7 height \u00b7 weight"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 195
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
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

    .line 199
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

    .line 201
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

    .line 203
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    const-string v0, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d (\u043f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435)"

    const-string v1, "Phone (optional)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 206
    const-string v1, "+359 \u2026"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    .line 207
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 208
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-object v6
.end method

.method load(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 111
    :cond_0
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x63

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v2

    aput v2, v0, v1

    .line 114
    :cond_1
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    iget v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    aput v2, v0, v1

    .line 117
    :cond_2
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    iget v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 120
    :cond_3
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

    .line 121
    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 122
    array-length v0, v2

    const/4 v3, 0x3

    if-lt v0, v3, :cond_7

    .line 123
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    aget-object v0, v2, v1

    :goto_0
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 124
    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    aget-object v0, v2, v6

    :goto_1
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 125
    const/4 v0, 0x2

    aget-object v0, v2, v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_7

    aget-object v1, v2, v0

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 127
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_7
    return-void
.end method

.method match(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 536
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 538
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 539
    return-object v0
.end method

.method open()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 136
    const v0, -0xedebe8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 139
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
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

    .line 143
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_1

    const-string v0, "\u041d\u043e\u0432 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "New client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v3, 0x18

    const v4, -0x13100c

    invoke-virtual {p0, v0, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 144
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v3, "Cancel"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 146
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {p0, v6, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 153
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 164
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->leftColumn()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 168
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->rightColumn()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 174
    :goto_1
    or-int/lit8 v0, v0, 0x10

    .line 172
    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 179
    :cond_0
    return-void

    .line 143
    :cond_1
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method paint(Landroid/widget/NumberPicker;)V
    .locals 5

    .prologue
    .line 468
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 469
    const v1, -0x13100c

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setTextColor(I)V

    .line 470
    const/4 v1, 0x2

    const/high16 v2, 0x41d00000    # 26.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 471
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 470
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setTextSize(F)V

    .line 473
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 474
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 475
    instance-of v1, v2, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 476
    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    const v4, -0x13100c

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 477
    check-cast v2, Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v2, v1, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 473
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 480
    :cond_2
    const-class v1, Landroid/widget/NumberPicker;

    const-string v2, "mSelectorWheelPaint"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 481
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 482
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 483
    const v2, -0x13100c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    const/4 v2, 0x2

    const/high16 v3, 0x41d00000    # 26.0f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 485
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 484
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 486
    const-class v1, Landroid/widget/NumberPicker;

    const-string v2, "mSelectionDivider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 487
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 488
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbc5fb9

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_1
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 493
    return-void

    .line 489
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method renderFitness()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    .line 285
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 287
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method renderGoal()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    .line 272
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 273
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 274
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$5;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-void
.end method

.method renderSex()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    aget-object v3, v0, v2

    .line 255
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 256
    const-string v0, "\u041c\u044a\u0436"

    const-string v4, "Male"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_0
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 262
    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v4, "Female"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v4, v5, :cond_1

    :goto_1
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 256
    goto :goto_0

    :cond_1
    move v1, v2

    .line 262
    goto :goto_1
.end method

.method rightColumn()Landroid/view/View;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 217
    const-string v0, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 219
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 221
    const-string v0, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0444\u043e\u0440\u043c\u0430"

    const-string v2, "Fitness"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFitness()V

    .line 225
    const-string v0, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const-string v2, "Contraindications"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 226
    const-string v0, "\u041e\u0442\u0431\u0435\u043b\u0435\u0436\u0438, \u0430\u043a\u043e \u0438\u043c\u0430. EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u043f\u0440\u0438 \u043d\u0438\u0442\u043e \u0435\u0434\u043d\u043e \u043e\u0442 \u0442\u044f\u0445."

    const-string v2, "Mark any that apply. EMS is not advised with any of them."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    const v5, -0x675e50

    invoke-virtual {p0, v0, v2, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const-string v0, ""

    const/16 v2, 0xe

    const v5, -0x1ac6cb

    invoke-virtual {p0, v0, v2, v5, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    .line 234
    :goto_0
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 235
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v0

    .line 237
    :goto_1
    add-int/lit8 v7, v0, 0x2

    sget-object v8, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 238
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChip(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    if-ne v2, v0, :cond_0

    .line 240
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v9

    invoke-direct {v8, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :cond_1
    invoke-virtual {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->updateWarning()V

    .line 248
    return-object v3
.end method

.method round(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 528
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 529
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 530
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 531
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 532
    return-object v0
.end method

.method save()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435"

    const-string v2, "Enter a name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 365
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v1, v0

    .line 340
    :goto_1
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 341
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    aget v0, v0, v3

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 346
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 348
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    aget v4, v4, v3

    neg-int v4, v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 349
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    :goto_2
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->summary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_6

    :goto_3
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v4, v2

    :goto_4
    if-ge v3, v4, :cond_7

    aget-object v5, v2, v3

    .line 356
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 358
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 339
    :cond_4
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    move-object v1, v0

    goto/16 :goto_1

    .line 351
    :cond_5
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move v2, v3

    .line 353
    goto :goto_3

    .line 363
    :cond_7
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

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0
.end method

.method scroll(Landroid/view/View;)Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 394
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 396
    return-object v0
.end method

.method styleContra(Landroid/widget/TextView;Z)V
    .locals 2

    .prologue
    .line 313
    if-eqz p2, :cond_0

    const v0, 0x33e53935

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const v0, -0x1ac6cb

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    if-eqz p2, :cond_2

    const/16 v0, -0x7580

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    return-void

    .line 313
    :cond_0
    const v0, -0xe3e0da

    move v1, v0

    goto :goto_0

    :cond_1
    const v0, -0xd3cec5

    goto :goto_1

    .line 314
    :cond_2
    const v0, -0x13100c

    goto :goto_2
.end method

.method summary()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
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

    .line 370
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

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    const-string v0, " \u00b7 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f: "

    const-string v4, "Contraindications: "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const/4 v0, 0x1

    .line 374
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 375
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 376
    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 374
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    const-string v0, ", "

    goto :goto_1

    .line 381
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 517
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 518
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 520
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    if-eqz p4, :cond_0

    .line 522
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    :cond_0
    return-object v0
.end method

.method updateWarning()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const-string v1, "\u26a0 \u0418\u043c\u0430 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0435 \u2014 EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0431\u0435\u0437 \u043b\u0435\u043a\u0430\u0440."

    const-string v2, "\u26a0 Contraindication \u2014 no EMS without a doctor\'s approval."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method wheel(Ljava/lang/String;Ljava/lang/String;[III)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x11

    const v7, -0x675e50

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 437
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 439
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 440
    const/16 v1, 0xf

    invoke-virtual {p0, p1, v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 441
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v1, Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 444
    invoke-virtual {v1, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 445
    invoke-virtual {v1, p5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 446
    aget v2, p3, v5

    invoke-static {v2, p4, p5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 447
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 448
    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 449
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;

    invoke-direct {v2, p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;[I)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 454
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->paint(Landroid/widget/NumberPicker;)V

    .line 455
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0xbe

    .line 456
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 457
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 458
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    const/16 v1, 0xe

    invoke-virtual {p0, p2, v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 460
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 461
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    return-object v0
.end method

.method wrap(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 543
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 546
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 547
    return-object v0
.end method
