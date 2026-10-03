.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Columns"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final offsetDp:I

.field portrait:Z

.field final row:Landroid/widget/LinearLayout;

.field final tallDp:[I

.field final weights:[F


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;[F[II)V
    .registers 6

    .prologue
    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->a:Landroid/app/Activity;

    .line 1902
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->row:Landroid/widget/LinearLayout;

    .line 1903
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->weights:[F

    .line 1904
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->tallDp:[I

    .line 1905
    iput p5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->offsetDp:I

    .line 1906
    return-void
.end method

.method static apply(Landroid/app/Activity;Landroid/widget/LinearLayout;Z[F[II)V
    .registers 12

    .prologue
    const/high16 v5, 0x41600000    # 14.0f

    const/4 v1, 0x0

    .line 1924
    if-eqz p2, :cond_36

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    .line 1925
    :goto_a
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4f

    .line 1927
    if-eqz p2, :cond_3c

    .line 1928
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 1929
    aget v2, p4, v0

    if-lez v2, :cond_38

    aget v2, p4, v0

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    :goto_20
    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1930
    if-lez v0, :cond_3a

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    :goto_29
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object v2, v3

    .line 1935
    :goto_2c
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1925
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_36
    move v0, v1

    .line 1924
    goto :goto_6

    .line 1929
    :cond_38
    const/4 v2, -0x2

    goto :goto_20

    :cond_3a
    move v2, v1

    .line 1930
    goto :goto_29

    .line 1932
    :cond_3c
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    aget v2, p3, v0

    invoke-direct {v3, v1, p5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1933
    if-lez v0, :cond_4d

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    :goto_49
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object v2, v3

    goto :goto_2c

    :cond_4d
    move v2, v1

    goto :goto_49

    .line 1937
    :cond_4f
    return-void
.end method

.method static follow(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/LinearLayout;[F[II)V
    .registers 13

    .prologue
    .line 1941
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;[F[II)V

    .line 1942
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait:Z

    .line 1943
    iget-boolean v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait:Z

    invoke-static {p0, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->landH(Landroid/app/Activity;I)I

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->apply(Landroid/app/Activity;Landroid/widget/LinearLayout;Z[F[II)V

    .line 1944
    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 1945
    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1947
    :cond_32
    return-void
.end method

.method static landH(Landroid/app/Activity;I)I
    .registers 5

    .prologue
    .line 1920
    const/high16 v0, 0x43dc0000    # 440.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, p1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static narrow(Landroid/app/Activity;)Z
    .registers 4

    .prologue
    .line 1915
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1916
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, v1, v0

    const/high16 v1, 0x44700000    # 960.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static portrait(Landroid/app/Activity;)Z
    .registers 3

    .prologue
    .line 1909
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1910
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    .prologue
    .line 1951
    sub-int v0, p5, p3

    sub-int v1, p4, p2

    if-le v0, v1, :cond_21

    const/4 v0, 0x1

    .line 1952
    :goto_7
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait:Z

    if-eq v0, v1, :cond_20

    sub-int v1, p4, p2

    if-lez v1, :cond_20

    .line 1953
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->portrait:Z

    .line 1954
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->hold(Landroid/app/Activity;)V

    .line 1955
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;->row:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1957
    :cond_20
    return-void

    .line 1951
    :cond_21
    const/4 v0, 0x0

    goto :goto_7
.end method
