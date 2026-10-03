.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.super Ljava/lang/Object;
.source "ScaleScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$MetricPick;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CloseSheet;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Summary;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CardInfo;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Range;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Mode;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$DeleteNow;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$AskDelete;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Details;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Rotate;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Relayout;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Columns;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Reveal;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ToResults;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;
    }
.end annotation


# static fields
.field static final H_KEY:Ljava/lang/String; = "h"

.field static final LAYER_REACH:I = 0x3

.field static final MODE_DAY:I = 0x0

.field static final MODE_TRACK:I = 0x1

.field static final M_AGE:I = 0x3

.field static final M_COL:[I

.field static final M_FAT:I = 0x0

.field static final M_KEY:[Ljava/lang/String;

.field static final M_MUSCLE:I = 0x1

.field static final M_WATER:I = 0x2

.field static final M_WEIGHT:I = 0x4

.field static final T_FAT:I = 0x1

.field static final T_MUSCLE:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x5

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "muscle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "water"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "w"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_26

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_COL:[I

    return-void

    :array_26
    .array-data 4
        -0xa61f5
        -0xdd3aa2
        -0xc74208
        -0x587406
        -0x178607
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static foot(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/TextView;FI)V
    .registers 9

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    .line 1836
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1837
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1838
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1839
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1840
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1841
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1842
    int-to-float v2, p3

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1843
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1844
    return-void
.end method

.method public static open(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 4

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 68
    :goto_8
    return-void

    .line 65
    :catch_9
    move-exception v0

    .line 66
    const-string v1, "ScaleScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static pop(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;I)Landroid/widget/PopupWindow;
    .registers 14

    .prologue
    .line 1851
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1852
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 1853
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1854
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1855
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 1856
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1858
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1859
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1858
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1860
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1861
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 1862
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1863
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v4, 0x2

    sub-int v1, v0, v1

    .line 1864
    const/4 v0, 0x1

    aget v0, v8, v0

    mul-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    .line 1865
    if-le v7, v1, :cond_5d

    if-lt v1, v2, :cond_bd

    :cond_5d
    const/4 v0, 0x1

    .line 1866
    :goto_5e
    const/high16 v9, 0x43200000    # 160.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    if-eqz v0, :cond_bf

    :goto_66
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1867
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1868
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v7, 0x1

    invoke-direct {v2, v6, v5, v1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1869
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1870
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1871
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 1872
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    const/4 v6, 0x0

    aget v6, v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v6, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1873
    if-eqz v0, :cond_c1

    const/4 v0, 0x1

    aget v0, v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1874
    :goto_b6
    const v1, 0x800033

    invoke-virtual {v2, p1, v1, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1875
    return-object v2

    .line 1865
    :cond_bd
    const/4 v0, 0x0

    goto :goto_5e

    :cond_bf
    move v1, v2

    .line 1866
    goto :goto_66

    .line 1873
    :cond_c1
    const/4 v0, 0x1

    aget v0, v8, v0

    sub-int/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_b6
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
