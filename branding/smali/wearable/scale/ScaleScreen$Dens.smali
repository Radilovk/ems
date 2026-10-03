.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;
.super Ljava/lang/Object;
.source "ScaleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dens"
.end annotation


# static fields
.field static density:F

.field static dpi:I

.field static scaled:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static begin(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 1962
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1963
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1964
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_1b

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v2, :cond_1b

    .line 1965
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1967
    :cond_1b
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v0

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    .line 1968
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->scaled:F

    .line 1969
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->dpi:I

    .line 1970
    return-void
.end method

.method static end()V
    .registers 1

    .prologue
    .line 1991
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    .line 1992
    return-void
.end method

.method static hold(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1973
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 1982
    :goto_7
    return-void

    .line 1977
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->set(Landroid/util/DisplayMetrics;)V

    .line 1978
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->set(Landroid/util/DisplayMetrics;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_7

    .line 1979
    :catch_23
    move-exception v0

    .line 1980
    const-string v1, "ScaleScreen.dens"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method static set(Landroid/util/DisplayMetrics;)V
    .registers 2

    .prologue
    .line 1985
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 1986
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->scaled:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1987
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->dpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1988
    return-void
.end method
