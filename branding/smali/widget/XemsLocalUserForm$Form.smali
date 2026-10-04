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

.field final cond:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field condBox:Landroid/widget/LinearLayout;

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

.field contraBox:Landroid/widget/LinearLayout;

.field final contraChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final dialog:Landroid/app/Dialog;

.field final editing:Lcom/isaigu/gymapp/bean/TrainUser;

.field email:Landroid/widget/EditText;

.field final fitRow:[Landroid/widget/LinearLayout;

.field fitness:Ljava/lang/String;

.field final focus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final focusRows:[Landroid/widget/LinearLayout;

.field goal:Ljava/lang/String;

.field final goalRow:[Landroid/widget/LinearLayout;

.field final height:[I

.field final medRow:[Landroid/widget/LinearLayout;

.field medical:Z

.field miSport:I

.field name:Landroid/widget/EditText;

.field newPhoto:Landroid/graphics/Bitmap;

.field note:Ljava/lang/String;

.field final ownRow:[Landroid/widget/LinearLayout;

.field owner:Z

.field phone:Landroid/widget/EditText;

.field photo:Landroid/widget/ImageView;

.field photoHint:Landroid/widget/TextView;

.field sex:Lcom/isaigu/gymapp/bean/Gender;

.field final sexRow:[Landroid/widget/LinearLayout;

.field final sportRow:[Landroid/widget/LinearLayout;

.field final sportRow2:[Landroid/widget/LinearLayout;

.field warning:Landroid/widget/TextView;

.field final weight:[I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 112
    new-array v0, v2, [I

    const/16 v1, 0x23

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    .line 113
    new-array v0, v2, [I

    const/16 v1, 0xaa

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    .line 114
    new-array v0, v2, [I

    const/16 v1, 0x46

    aput v1, v0, v3

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    .line 115
    const-string v0, "tone"

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 116
    const-string v0, "mid"

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focus:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->cond:Ljava/util/Set;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->note:Ljava/lang/String;

    .line 127
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medRow:[Landroid/widget/LinearLayout;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focusRows:[Landroid/widget/LinearLayout;

    .line 130
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    .line 131
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    .line 132
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    .line 135
    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    .line 136
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->ownRow:[Landroid/widget/LinearLayout;

    .line 137
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow:[Landroid/widget/LinearLayout;

    .line 138
    new-array v0, v2, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow2:[Landroid/widget/LinearLayout;

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChips:Ljava/util/List;

    .line 141
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 142
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 143
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    .line 144
    if-eqz p2, :cond_7f

    .line 145
    invoke-virtual {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->load(Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 147
    :cond_7f
    return-void
.end method

.method static addCsv(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 184
    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 187
    :cond_18
    return-void
.end method


# virtual methods
.method addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .registers 12

    .prologue
    const/16 v5, 0xc

    const v1, -0xbc5fb9

    const/16 v6, 0x8

    .line 710
    const/16 v2, 0x10

    if-eqz p3, :cond_56

    const/4 v0, -0x1

    :goto_c
    invoke-virtual {p0, p2, v2, v0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 711
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 712
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 713
    if-eqz p3, :cond_5a

    move v2, v1

    :goto_2b
    if-eqz p3, :cond_5f

    move v0, v1

    :goto_2e
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 714
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$16;

    invoke-direct {v0, p0, p4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$16;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 720
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_52

    .line 721
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 723
    :cond_52
    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    return-void

    .line 710
    :cond_56
    const v0, -0x13100c

    goto :goto_c

    .line 713
    :cond_5a
    const v0, -0xedebe8

    move v2, v0

    goto :goto_2b

    :cond_5f
    const v0, -0xd3cec5

    goto :goto_2e
.end method

.method addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 462
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    if-ne v0, p3, :cond_e

    const/4 v0, 0x1

    :goto_5
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;

    invoke-direct {v1, p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 468
    return-void

    .line 462
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method addToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 544
    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;

    invoke-direct {v1, p0, p4, p2, p5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$12;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method button(Ljava/lang/String;Z)Landroid/widget/TextView;
    .registers 10

    .prologue
    const/16 v6, 0x18

    const/16 v4, 0x11

    const/16 v5, 0xc

    const v1, -0xbc5fb9

    .line 800
    if-eqz p2, :cond_35

    const/4 v0, -0x1

    :goto_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v4, v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 801
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 802
    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 803
    if-eqz p2, :cond_39

    move v2, v1

    :goto_2a
    if-eqz p2, :cond_3e

    move v0, v1

    :goto_2d
    invoke-virtual {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 804
    return-object v3

    .line 800
    :cond_35
    const v0, -0x13100c

    goto :goto_c

    .line 803
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

    .line 691
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 692
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 693
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

    .line 694
    const v2, -0xe3e0da

    const v3, -0xd3cec5

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 695
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const v3, -0x675e50

    invoke-virtual {p0, v2, v7, v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 696
    const v3, 0x3da3d70a    # 0.08f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5a

    :goto_52
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    return-object v1

    .line 698
    :cond_5a
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    goto :goto_52
.end method

.method chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 4

    .prologue
    .line 703
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 705
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    return-object v0
.end method

.method column()Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 678
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 679
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 680
    return-object v0
.end method

.method contraChip(Ljava/lang/String;)Landroid/view/View;
    .registers 8

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    .line 584
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    const v2, -0x13100c

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 585
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 586
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->styleContra(Landroid/widget/TextView;Z)V

    .line 587
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChips:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$15;

    invoke-direct {v1, p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$15;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    return-object v0
.end method

.method dp(I)I
    .registers 5

    .prologue
    .line 842
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

    .line 787
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 788
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 789
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 790
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 791
    const v1, -0x13100c

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 792
    const v1, -0x675e50

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 793
    const/4 v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 794
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 795
    const v1, -0xedebe8

    const v2, -0xd3cec5

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 796
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

    .line 249
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 250
    const-string v0, "\u0421\u043d\u0438\u043c\u043a\u0430 \u0438 \u0438\u043c\u0435"

    const-string v1, "Photo and name"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 253
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 254
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

    .line 255
    const-string v2, "\u0418\u043c\u0435 \u0438 \u0444\u0430\u043c\u0438\u043b\u0438\u044f"

    const-string v3, "Full name"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2001

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    .line 256
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v2, :cond_5f

    .line 257
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_5f
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 260
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 261
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const-string v0, "\u041f\u043e\u043b"

    const-string v1, "Sex"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v1, v9

    .line 266
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 268
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442 \u00b7 \u0440\u044a\u0441\u0442 \u00b7 \u0442\u0435\u0433\u043b\u043e"

    const-string v1, "Age \u00b7 height \u00b7 weight"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 269
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
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

    .line 273
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

    .line 275
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

    .line 277
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    const-string v0, "\u041a\u043e\u043d\u0442\u0430\u043a\u0442 (\u043f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435)"

    const-string v1, "Contact (optional)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 280
    const-string v1, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d  +359 \u2026"

    const-string v2, "Phone  +359 \u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    .line 281
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 282
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_13f

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v1, :cond_13f

    .line 283
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_13f
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {p0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const-string v1, "\u0418\u043c\u0435\u0439\u043b"

    const-string v2, "Email"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->input(Ljava/lang/String;I)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    .line 287
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 288
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_170

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v1, :cond_170

    .line 289
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_170
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    return-object v6
.end method

.method load(Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v0, :cond_a

    .line 151
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 153
    :cond_a
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v0, :cond_20

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->yearsSince(Ljava/util/Date;)I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x63

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v3

    aput v3, v0, v2

    .line 156
    :cond_20
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_2a

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    iget v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    aput v3, v0, v2

    .line 159
    :cond_2a
    iget v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3b

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    iget v3, p1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v0, v2

    .line 162
    :cond_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "own"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "misport"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    .line 164
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v3, "\\|"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 166
    array-length v0, v3

    const/4 v4, 0x3

    if-lt v0, v4, :cond_e4

    .line 167
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_de

    aget-object v0, v3, v2

    :goto_b3
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    .line 168
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e1

    aget-object v0, v3, v1

    :goto_bf
    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    .line 169
    const/4 v0, 0x2

    aget-object v0, v3, v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_cc
    if-ge v0, v4, :cond_e4

    aget-object v5, v3, v0

    .line 170
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_db

    .line 171
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    .line 167
    :cond_de
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    goto :goto_b3

    .line 168
    :cond_e1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    goto :goto_bf

    .line 175
    :cond_e4
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focus:Ljava/util/Set;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addCsv(Ljava/util/Set;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->cond:Ljava/util/Set;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cond"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addCsv(Ljava/util/Set;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "note"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->note:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    move v0, v1

    :goto_15c
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medical:Z

    .line 179
    return-void

    :cond_15f
    move v0, v2

    .line 178
    goto :goto_15c
.end method

.method match(I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 827
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 829
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 830
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

    .line 190
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 192
    const v0, -0xedebe8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 195
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 198
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

    .line 199
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

    .line 200
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v6, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_91

    .line 202
    const-string v0, "\u0418\u0441\u0442\u043e\u0440\u0438\u044f \u0438 \u0434\u043e\u043a\u043b\u0430\u0434\u0438"

    const-string v3, "History and reports"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 203
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {p0, v6, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_91
    const-string v0, "\u041e\u0442\u043a\u0430\u0437"

    const-string v3, "Cancel"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 213
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$2;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p0, v6, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v3, "Save"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->button(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    .line 220
    new-instance v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->wrap(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 232
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->leftColumn()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 234
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 235
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->rightColumn()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->scroll(Landroid/view/View;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_145

    const/4 v0, 0x4

    .line 241
    :goto_127
    or-int/lit8 v0, v0, 0x10

    .line 239
    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_13a

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 246
    :cond_13a
    return-void

    .line 199
    :cond_13b
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v3, "Client"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b

    .line 241
    :cond_145
    const/4 v0, 0x2

    goto :goto_127
.end method

.method openReports()V
    .registers 6

    .prologue
    .line 472
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

    .line 473
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

    .line 474
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 478
    :goto_2a
    return-void

    .line 475
    :catch_2b
    move-exception v0

    .line 476
    const-string v1, "xems_form"

    const-string v2, "reports"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method paint(Landroid/widget/NumberPicker;)V
    .registers 7

    .prologue
    .line 759
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_20

    .line 760
    const v1, -0x13100c

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setTextColor(I)V

    .line 761
    const/4 v1, 0x2

    const/high16 v2, 0x41d00000    # 26.0f

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 762
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 761
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setTextSize(F)V

    .line 764
    :cond_20
    const/4 v1, 0x0

    move v3, v1

    :goto_22
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_46

    .line 765
    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 766
    instance-of v1, v2, Landroid/widget/EditText;

    if-eqz v1, :cond_42

    .line 767
    move-object v0, v2

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    const v4, -0x13100c

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 768
    check-cast v2, Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-virtual {v2, v1, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 764
    :cond_42
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_22

    .line 771
    :cond_46
    const-class v1, Landroid/widget/NumberPicker;

    const-string v2, "mSelectorWheelPaint"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 772
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 773
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 774
    const v2, -0x13100c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 775
    const/4 v2, 0x2

    const/high16 v3, 0x41d00000    # 26.0f

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    .line 776
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 775
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 777
    const-class v1, Landroid/widget/NumberPicker;

    const-string v2, "mSelectionDivider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 778
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbc5fb9

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_89} :catch_8d

    .line 783
    :goto_89
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->invalidate()V

    .line 784
    return-void

    .line 780
    :catch_8d
    move-exception v1

    goto :goto_89
.end method

.method photoBox()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 297
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 298
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 299
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 300
    const v2, -0xedebe8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 301
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    const v3, -0xbc5fb9

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    .line 304
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 305
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    const-string v1, "+ \u0441\u043d\u0438\u043c\u043a\u0430"

    const-string v2, "+ photo"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    const v3, -0x13100c

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    .line 308
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 309
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_73

    .line 312
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->read(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->showPhoto(Landroid/graphics/Bitmap;)V

    .line 314
    :cond_73
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$4;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    return-object v0
.end method

.method renderCond()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->condBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v6, v5

    .line 523
    :goto_8
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->COND_GROUPS:[[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_78

    .line 524
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->COND_GROUPS:[[Ljava/lang/String;

    aget-object v9, v0, v6

    .line 525
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->condBox:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->condGroupName(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    const v3, -0x675e50

    invoke-virtual {p0, v0, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    if-nez v6, :cond_53

    const/16 v0, 0xa

    :goto_24
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v5

    .line 526
    :goto_30
    array-length v0, v9

    if-ge v7, v0, :cond_74

    .line 527
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->condBox:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    move v8, v7

    .line 528
    :goto_3a
    add-int/lit8 v0, v7, 0x3

    if-ge v8, v0, :cond_70

    .line 529
    array-length v0, v9

    if-ge v8, v0, :cond_56

    .line 530
    aget-object v2, v9, v8

    aget-object v0, v9, v8

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->condName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->cond:Ljava/util/Set;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 528
    :goto_4f
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3a

    .line 525
    :cond_53
    const/16 v0, 0xe

    goto :goto_24

    .line 532
    :cond_56
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 533
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 534
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 535
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4f

    .line 526
    :cond_70
    add-int/lit8 v0, v7, 0x3

    move v7, v0

    goto :goto_30

    .line 523
    :cond_74
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    .line 540
    :cond_78
    return-void
.end method

.method renderFitness()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 500
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    .line 501
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 502
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    array-length v3, v2

    :goto_b
    if-ge v0, v3, :cond_24

    aget-object v4, v2, v0

    .line 503
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$11;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$11;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 510
    :cond_24
    return-void
.end method

.method renderFocus()V
    .registers 9

    .prologue
    .line 513
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focusRows:[Landroid/widget/LinearLayout;

    array-length v0, v0

    if-ge v6, v0, :cond_3d

    .line 514
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focusRows:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 515
    mul-int/lit8 v0, v6, 0x3

    move v7, v0

    :goto_11
    mul-int/lit8 v0, v6, 0x3

    add-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FOCUS:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v7, v0, :cond_39

    .line 516
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focusRows:[Landroid/widget/LinearLayout;

    aget-object v1, v0, v6

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FOCUS:[Ljava/lang/String;

    aget-object v2, v0, v7

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FOCUS:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focus:Ljava/util/Set;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addToggle(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 515
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_11

    .line 513
    :cond_39
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 519
    :cond_3d
    return-void
.end method

.method renderGoal()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    .line 482
    if-nez v1, :cond_8

    .line 497
    :cond_7
    return-void

    .line 485
    :cond_8
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 486
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    array-length v3, v2

    :goto_e
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    .line 487
    const-string v5, "cellulite"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v6, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v5, v6, :cond_23

    .line 486
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 490
    :cond_23
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;

    invoke-direct {v7, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_20
.end method

.method renderMedical()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medRow:[Landroid/widget/LinearLayout;

    aget-object v2, v0, v1

    .line 560
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 561
    const-string v0, "\u041d\u0435"

    const-string v3, "No"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medical:Z

    if-nez v0, :cond_59

    const/4 v0, 0x1

    :goto_15
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$13;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 568
    const-string v0, "\u0414\u0430"

    const-string v3, "Yes"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medical:Z

    new-instance v4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$14;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$14;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 574
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraBox:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medical:Z

    if-eqz v0, :cond_5b

    move v0, v1

    :goto_36
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    :goto_39
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5e

    .line 576
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChips:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->styleContra(Landroid/widget/TextView;Z)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_59
    move v0, v1

    .line 561
    goto :goto_15

    .line 574
    :cond_5b
    const/16 v0, 0x8

    goto :goto_36

    .line 578
    :cond_5e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->updateWarning()V

    .line 579
    return-void
.end method

.method renderOwner()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->ownRow:[Landroid/widget/LinearLayout;

    aget-object v3, v0, v1

    .line 430
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 431
    const-string v0, "\u041d\u0435 \u043d\u043e\u0441\u0438 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v4, "No band"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    if-nez v0, :cond_b3

    const/4 v0, 0x1

    :goto_17
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$7;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 437
    const-string v0, "\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u0438\u043a \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "Band owner"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    new-instance v5, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V

    invoke-virtual {p0, v3, v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addChoice(Landroid/widget/LinearLayout;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow:[Landroid/widget/LinearLayout;

    aget-object v3, v0, v1

    .line 444
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 445
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    if-eqz v0, :cond_b6

    move v0, v1

    :goto_3d
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    const-string v0, "\u0410\u0432\u0442\u043e"

    const-string v4, "Auto"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 447
    const-string v0, "\u0422\u0435\u0436\u0435\u0441\u0442\u0438"

    const-string v4, "Weights"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x134

    invoke-virtual {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 448
    const-string v0, "HIIT"

    const-string v4, "HIIT"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-virtual {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 449
    const-string v0, "\u0410\u0435\u0440\u043e\u0431\u043d\u0430"

    const-string v4, "Aerobics"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x133

    invoke-virtual {p0, v3, v0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 450
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow2:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v1

    .line 451
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 452
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->owner:Z

    if-eqz v3, :cond_b8

    :goto_7d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    const-string v1, "\u0419\u043e\u0433\u0430"

    const-string v3, "Yoga"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x137

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 454
    const-string v1, "\u0421\u0442\u0440\u0435\u0447\u0438\u043d\u0433"

    const-string v3, "Stretching"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x136

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 455
    const-string v1, "\u0413\u044a\u0432\u043a\u0430\u0432\u043e\u0441\u0442"

    const-string v3, "Flexibility"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x130

    invoke-virtual {p0, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 456
    const-string v1, "\u0421\u0432\u043e\u0431\u043e\u0434\u043d\u0430"

    const-string v3, "Free"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 457
    return-void

    :cond_b3
    move v0, v1

    .line 431
    goto/16 :goto_17

    :cond_b6
    move v0, v2

    .line 445
    goto :goto_3d

    :cond_b8
    move v1, v2

    .line 452
    goto :goto_7d
.end method

.method renderSex()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sexRow:[Landroid/widget/LinearLayout;

    aget-object v3, v0, v2

    .line 408
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 409
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

    .line 419
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

    .line 426
    return-void

    :cond_37
    move v0, v2

    .line 409
    goto :goto_18

    :cond_39
    move v1, v2

    .line 419
    goto :goto_2e
.end method

.method rightColumn()Landroid/view/View;
    .registers 16

    .prologue
    const v14, -0x675e50

    const/4 v13, 0x4

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->column()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->note:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_37

    .line 342
    const-string v0, "\u041e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v2, "From the client"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 343
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->note:Ljava/lang/String;

    const/16 v4, 0x10

    const v5, -0x13100c

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_37
    const-string v0, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goalRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 347
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 349
    const-string v0, "\u0424\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430 \u0444\u043e\u0440\u043c\u0430"

    const-string v2, "Fitness"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 350
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 351
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFitness()V

    .line 353
    const-string v0, "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435"

    const-string v2, "Condition"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 354
    const-string v2, "\u041d\u0435 \u0441\u043f\u0438\u0440\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u2014 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043f\u043e\u0434\u0445\u043e\u0434\u0430."

    const-string v4, "Does not stop training \u2014 it shapes the approach."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {p0, v2, v4, v14, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 355
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 354
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->condBox:Landroid/widget/LinearLayout;

    .line 357
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->condBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 358
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->condBox:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderCond()V

    .line 361
    const-string v0, "\u0417\u043e\u043d\u0438 \u0437\u0430 \u0430\u043a\u0446\u0435\u043d\u0442"

    const-string v2, "Focus zones"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    move v0, v1

    .line 362
    :goto_b1
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focusRows:[Landroid/widget/LinearLayout;

    array-length v4, v4

    if-ge v0, v4, :cond_c1

    .line 363
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focusRows:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v5

    aput-object v5, v4, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 365
    :cond_c1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderFocus()V

    .line 367
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v2, "Health"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 368
    const-string v0, "\u0418\u043c\u0430 \u043b\u0438 \u043c\u0435\u0434\u0438\u0446\u0438\u043d\u0441\u043a\u0430 \u043f\u0440\u0438\u0447\u0438\u043d\u0430 EMS \u0434\u0430 \u043d\u0435 \u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449?"

    const-string v2, "Is there a medical reason EMS may not suit?"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    const v5, -0x13100c

    invoke-virtual {p0, v0, v2, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x6

    .line 369
    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 368
    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->medRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    aput-object v2, v0, v1

    .line 371
    const-string v0, ""

    const/16 v2, 0xe

    const v5, -0x1ac6cb

    invoke-virtual {p0, v0, v2, v5, v11}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraBox:Landroid/widget/LinearLayout;

    .line 375
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 376
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    .line 378
    :goto_12d
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_181

    .line 379
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 380
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v0

    .line 381
    :goto_13d
    add-int/lit8 v7, v0, 0x2

    sget-object v8, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v2, v7, :cond_173

    .line 382
    sget-object v7, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChip(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v1, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    if-ne v2, v0, :cond_170

    .line 384
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 385
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v9

    invoke-direct {v8, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_170
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 388
    :cond_173
    invoke-virtual {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    add-int/lit8 v0, v0, 0x2

    goto :goto_12d

    .line 390
    :cond_181
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraBox:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraBox:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderMedical()V

    .line 394
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430 \u0438 Mi Fitness"

    const-string v2, "Band and Mi Fitness"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 395
    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438\u0442\u0435 \u0432\u043b\u0438\u0437\u0430\u0442 \u0438 \u0432 Mi Fitness."

    const-string v4, "Trainings also go to Mi Fitness."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {p0, v2, v4, v14, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 396
    invoke-virtual {p0, v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->ownRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v4

    aput-object v4, v2, v1

    .line 398
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v4

    aput-object v4, v2, v1

    .line 399
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sportRow2:[Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->chips(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    aput-object v0, v2, v1

    .line 400
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderOwner()V

    .line 401
    return-object v3
.end method

.method round(II)Landroid/graphics/drawable/GradientDrawable;
    .registers 5

    .prologue
    .line 819
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 820
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 821
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 822
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 823
    return-object v0
.end method

.method save()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 621
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 622
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    .line 623
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    const-string v1, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0438\u043c\u0435"

    const-string v2, "Enter a name"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 669
    :goto_28
    return-void

    .line 627
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v1, v0

    .line 628
    :goto_30
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 629
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 630
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 632
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 633
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->height:[I

    aget v0, v0, v3

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 634
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->weight:[I

    aget v0, v0, v3

    int-to-float v0, v0

    iput v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 635
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 636
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->age:[I

    aget v4, v4, v3

    neg-int v4, v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 637
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 638
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_db

    :goto_73
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_de

    :goto_89
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9d

    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->newPhoto:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_9d

    .line 645
    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    .line 648
    :cond_9d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->summary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_e1

    :goto_ab
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUser(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v4, v2

    :goto_b6
    if-ge v3, v4, :cond_e3

    aget-object v5, v2, v3

    .line 652
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 653
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_cd

    .line 654
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    :cond_cd
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 627
    :cond_d3
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    move-object v1, v0

    goto/16 :goto_30

    .line 639
    :cond_db
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    goto :goto_73

    .line 641
    :cond_de
    iget-object v0, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    goto :goto_89

    :cond_e1
    move v2, v3

    .line 649
    goto :goto_ab

    .line 659
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

    const-string v3, "edit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

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

    .line 661
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "misport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FOCUS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focus:Ljava/util/Set;

    .line 662
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->csvOf([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->COND:[Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->cond:Ljava/util/Set;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->csvOf([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 664
    :try_start_1c3
    const-string v0, "com.isaigu.gymapp.wearable.ParamPlan"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "onProfile"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/isaigu/gymapp/bean/TrainUser;

    aput-object v5, v3, v4

    .line 665
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1eb
    .catch Ljava/lang/Throwable; {:try_start_1c3 .. :try_end_1eb} :catch_1f2

    .line 668
    :goto_1eb
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_28

    .line 666
    :catch_1f2
    move-exception v0

    goto :goto_1eb
.end method

.method scroll(Landroid/view/View;)Landroid/widget/ScrollView;
    .registers 4

    .prologue
    .line 684
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 686
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 687
    return-object v0
.end method

.method showPhoto(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 328
    if-nez p1, :cond_3

    .line 333
    :goto_2
    return-void

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photo:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->circle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method styleContra(Landroid/widget/TextView;Z)V
    .registers 5

    .prologue
    .line 601
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

    .line 602
    if-eqz p2, :cond_23

    const/16 v0, -0x7580

    :goto_16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 603
    return-void

    .line 601
    :cond_1a
    const v0, -0xe3e0da

    move v1, v0

    goto :goto_6

    :cond_1f
    const v0, -0xd3cec5

    goto :goto_b

    .line 602
    :cond_23
    const v0, -0x13100c

    goto :goto_16
.end method

.method summary()Ljava/lang/String;
    .registers 5

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->goal:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->fitness:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->summaryOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FOCUS:[Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->focus:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->csvOf([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->COND:[Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->cond:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->csvOf([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->note:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->extras(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .registers 8

    .prologue
    .line 808
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 809
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 811
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    if-eqz p4, :cond_19

    .line 813
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 815
    :cond_19
    return-object v0
.end method

.method updateWarning()V
    .registers 4

    .prologue
    .line 606
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 616
    :goto_4
    return-void

    .line 609
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 610
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 612
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->warning:Landroid/widget/TextView;

    const-string v1, "\u26a0 \u0418\u043c\u0430 \u043f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0435 \u2014 EMS \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0432\u0430 \u0431\u0435\u0437 \u043b\u0435\u043a\u0430\u0440."

    const-string v2, "\u26a0 Contraindication \u2014 no EMS without a doctor\'s approval."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
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

    .line 728
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 729
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 730
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 731
    const/16 v1, 0xf

    invoke-virtual {p0, p1, v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 732
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 733
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    new-instance v1, Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 735
    invoke-virtual {v1, p4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 736
    invoke-virtual {v1, p5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 737
    aget v2, p3, v5

    invoke-static {v2, p4, p5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 738
    invoke-virtual {v1, v5}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 739
    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 740
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$17;

    invoke-direct {v2, p0, p3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$17;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;[I)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 745
    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->paint(Landroid/widget/NumberPicker;)V

    .line 746
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0xbe

    .line 747
    invoke-virtual {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->dp(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 748
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 749
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    const/16 v1, 0xe

    invoke-virtual {p0, p2, v1, v7, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 751
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 752
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->match(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    return-object v0
.end method

.method wrap(II)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    const/4 v1, -0x2

    .line 834
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 836
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 837
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 838
    return-object v0
.end method
