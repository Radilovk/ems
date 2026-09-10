.class public Lcom/yanzhenjie/loading/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 29
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    float-to-double v3, p1

    mul-double v1, v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static px2dip(Landroid/content/Context;I)F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 34
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-double v1, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method
