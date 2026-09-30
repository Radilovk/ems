.class final Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;
.super Ljava/lang/Object;
.source "ParamDialogUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/ParamDialogUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tabs"
.end annotation


# instance fields
.field final cols:[Landroid/view/View;

.field final modesRow:Landroid/view/ViewGroup;

.field final tv:[Landroid/widget/TextView;


# direct methods
.method constructor <init>([Landroid/widget/TextView;[Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->tv:[Landroid/widget/TextView;

    .line 270
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->cols:[Landroid/view/View;

    .line 271
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->modesRow:Landroid/view/ViewGroup;

    .line 272
    return-void
.end method


# virtual methods
.method select(I)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->tv:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    move v0, v1

    .line 276
    :goto_d
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->tv:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_43

    .line 277
    if-ne v0, p1, :cond_3c

    move v2, v3

    .line 278
    :goto_15
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->tv:[Landroid/widget/TextView;

    aget-object v7, v4, v0

    if-eqz v2, :cond_3e

    const/4 v4, -0x1

    :goto_1c
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->tv:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    if-eqz v2, :cond_41

    # getter for: Lcom/isaigu/gymapp/dialog/ParamDialogUi;->TAB_COLORS:[I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/ParamDialogUi;->access$000()[I

    move-result-object v2

    aget v2, v2, v0

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2, v7, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    :goto_36
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3c
    move v2, v1

    .line 277
    goto :goto_15

    .line 278
    :cond_3e
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_1c

    .line 279
    :cond_41
    const/4 v2, 0x0

    goto :goto_36

    .line 281
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->cols:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_53

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->cols:[Landroid/view/View;

    aget-object v2, v0, v1

    if-nez p1, :cond_77

    move v0, v1

    :goto_50
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_53
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->modesRow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5f

    .line 285
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->modesRow:Landroid/view/ViewGroup;

    if-nez p1, :cond_79

    move v0, v5

    :goto_5c
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->cols:[Landroid/view/View;

    array-length v0, v0

    if-ge v3, v0, :cond_7d

    .line 288
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->cols:[Landroid/view/View;

    aget-object v0, v0, v3

    if-eqz v0, :cond_74

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/ParamDialogUi$Tabs;->cols:[Landroid/view/View;

    aget-object v2, v0, v3

    if-ne v3, p1, :cond_7b

    move v0, v1

    :goto_71
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_77
    move v0, v5

    .line 282
    goto :goto_50

    :cond_79
    move v0, v1

    .line 285
    goto :goto_5c

    :cond_7b
    move v0, v5

    .line 289
    goto :goto_71

    .line 292
    :cond_7d
    return-void
.end method
