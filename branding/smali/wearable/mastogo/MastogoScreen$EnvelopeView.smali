.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;
.super Landroid/view/View;
.source "MastogoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnvelopeView"
.end annotation


# instance fields
.field final dot:Landroid/graphics/Paint;

.field final grid:Landroid/graphics/Paint;

.field final label:Landroid/graphics/Paint;

.field final line:Landroid/graphics/Paint;

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

.field final path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 952
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 945
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->line:Landroid/graphics/Paint;

    .line 946
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->grid:Landroid/graphics/Paint;

    .line 947
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->dot:Landroid/graphics/Paint;

    .line 948
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->label:Landroid/graphics/Paint;

    .line 949
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->path:Landroid/graphics/Path;

    .line 953
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 954
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->line:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 955
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->line:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 956
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->line:Landroid/graphics/Paint;

    const v1, -0x587406

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 957
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->grid:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v2, 0x22

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 958
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->grid:Landroid/graphics/Paint;

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 959
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->dot:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 960
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->label:Landroid/graphics/Paint;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 961
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->label:Landroid/graphics/Paint;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->sp(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 962
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 967
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->mod:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 968
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v1, v0

    .line 969
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    sub-float v8, v0, v2

    .line 970
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    sub-float v9, v0, v2

    .line 971
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gtz v0, :cond_2e

    .line 1002
    :cond_2d
    :goto_2d
    return-void

    .line 974
    :cond_2e
    const/4 v0, 0x0

    move v6, v0

    :goto_30
    const/4 v0, 0x5

    if-gt v6, v0, :cond_49

    .line 975
    add-float v0, v1, v9

    int-to-float v2, v6

    mul-float/2addr v2, v9

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 976
    add-float v3, v1, v8

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->grid:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 974
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    .line 978
    :cond_49
    const-wide/16 v2, 0x2

    iget v0, v7, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->periodMs:I

    int-to-long v4, v0

    mul-long/2addr v4, v2

    .line 979
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 980
    const/high16 v0, 0x42700000    # 60.0f

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v8, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v2, v0

    .line 981
    const/4 v0, 0x0

    :goto_60
    if-gt v0, v2, :cond_87

    .line 982
    int-to-long v10, v0

    mul-long/2addr v10, v4

    int-to-long v12, v2

    div-long/2addr v10, v12

    .line 983
    int-to-float v3, v0

    mul-float/2addr v3, v8

    int-to-float v6, v2

    div-float/2addr v3, v6

    add-float/2addr v3, v1

    .line 984
    add-float v6, v1, v9

    invoke-static {v7, v10, v11}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->envelope(Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;J)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    const/high16 v11, 0x41c80000    # 25.0f

    div-float/2addr v10, v11

    sub-float/2addr v6, v10

    .line 985
    if-nez v0, :cond_81

    .line 986
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 981
    :goto_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 988
    :cond_81
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->path:Landroid/graphics/Path;

    invoke-virtual {v10, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7e

    .line 991
    :cond_87
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->line:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 992
    const-string v0, "25"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->label:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 993
    const-string v0, "0"

    add-float v2, v1, v9

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->label:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 994
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_e2

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v2, :cond_e2

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modElapsed()J

    move-result-wide v2

    .line 996
    :goto_b5
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2d

    .line 997
    rem-long/2addr v2, v4

    .line 998
    long-to-float v2, v2

    mul-float/2addr v2, v8

    long-to-float v3, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 999
    add-float/2addr v1, v9

    const/4 v3, 0x0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->level:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v9

    const/high16 v3, 0x41c80000    # 25.0f

    div-float/2addr v0, v3

    sub-float v0, v1, v0

    .line 1000
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$EnvelopeView;->dot:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2d

    .line 995
    :cond_e2
    const-wide/16 v2, -0x1

    goto :goto_b5
.end method
