.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;
.super Landroid/view/View;
.source "MastogoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhaseView"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

.field final paint:Landroid/graphics/Paint;

.field final r:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 5

    .prologue
    .line 1961
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1957
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->paint:Landroid/graphics/Paint;

    .line 1958
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->r:Landroid/graphics/RectF;

    .line 1962
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 1963
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->live:Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    .line 1968
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v5, v4, v1

    .line 1969
    const/4 v1, 0x1

    iget v2, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    iget v6, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    add-int/2addr v2, v6

    iget v6, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    add-int/2addr v2, v6

    iget v6, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    add-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v6, v1

    .line 1970
    const/4 v1, 0x0

    .line 1971
    const/4 v2, 0x4

    new-array v7, v2, [I

    const/4 v2, 0x0

    iget v8, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->upMs:I

    aput v8, v7, v2

    const/4 v2, 0x1

    iget v8, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->onMs:I

    aput v8, v7, v2

    const/4 v2, 0x2

    iget v8, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->downMs:I

    aput v8, v7, v2

    const/4 v2, 0x3

    iget v0, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;->offMs:I

    aput v0, v7, v2

    .line 1972
    const/4 v0, 0x4

    new-array v8, v0, [I

    const/4 v0, 0x0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v9, 0x80

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    aput v2, v8, v0

    const/4 v0, 0x1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    aput v2, v8, v0

    const/4 v0, 0x2

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/16 v9, 0x80

    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    aput v2, v8, v0

    const/4 v0, 0x3

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/16 v9, 0x55

    .line 1973
    invoke-static {v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    aput v2, v8, v0

    .line 1974
    const/4 v0, 0x0

    move v2, v0

    :goto_66
    const/4 v0, 0x4

    if-ge v2, v0, :cond_a3

    .line 1975
    aget v0, v7, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    div-float v9, v0, v6

    .line 1976
    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gtz v0, :cond_79

    move v0, v1

    .line 1974
    :goto_75
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_66

    .line 1979
    :cond_79
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->paint:Landroid/graphics/Paint;

    aget v10, v8, v2

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1980
    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->r:Landroid/graphics/RectF;

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v11, v4, v0

    add-float v12, v1, v9

    const/4 v0, 0x3

    if-ge v2, v0, :cond_a1

    const/4 v0, 0x2

    :goto_8d
    int-to-float v0, v0

    sub-float v0, v12, v0

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v4

    invoke-virtual {v10, v1, v11, v0, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1981
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->r:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1982
    add-float v0, v1, v9

    goto :goto_75

    .line 1980
    :cond_a1
    const/4 v0, 0x0

    goto :goto_8d

    .line 1984
    :cond_a3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->sh()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;

    move-result-object v0

    .line 1985
    if-eqz v0, :cond_f1

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->running:Z

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->liveRun:Z

    if-eqz v1, :cond_f1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->mod()Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell$Mod;

    move-result-object v1

    if-eqz v1, :cond_f1

    .line 1986
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoShell;->modElapsed()J

    move-result-wide v0

    float-to-long v8, v6

    rem-long/2addr v0, v8

    long-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 1987
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->paint:Landroid/graphics/Paint;

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1988
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->r:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1989
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->r:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$PhaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1991
    :cond_f1
    return-void
.end method
