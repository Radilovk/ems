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
.field static aDensity:F

.field static aDpi:I

.field static aScaled:F

.field static density:F

.field static dpi:I

.field static oDensity:F

.field static oDpi:I

.field static oScaled:F

.field static scaled:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static begin(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 2471
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2472
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2473
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDensity:F

    .line 2474
    iget v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oScaled:F

    .line 2475
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDpi:I

    .line 2476
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aDensity:F

    .line 2477
    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aScaled:F

    .line 2478
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aDpi:I

    .line 2479
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2480
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_3f

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lez v2, :cond_3f

    .line 2481
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2483
    :cond_3f
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v0

    sput v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    .line 2484
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->scaled:F

    .line 2485
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->dpi:I

    .line 2486
    return-void
.end method

.method static end(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2507
    sput v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    .line 2508
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDensity:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    .line 2525
    :goto_9
    return-void

    .line 2512
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2513
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2514
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oScaled:F

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2515
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2516
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2517
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2518
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aScaled:F

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2519
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_36} :catch_4a

    .line 2524
    :goto_36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 2520
    :catch_4a
    move-exception v0

    .line 2521
    const-string v1, "ScaleScreen.densEnd"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method static hold(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 2489
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 2498
    :goto_7
    return-void

    .line 2493
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->set(Landroid/util/DisplayMetrics;)V

    .line 2494
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

    .line 2495
    :catch_23
    move-exception v0

    .line 2496
    const-string v1, "ScaleScreen.dens"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method static set(Landroid/util/DisplayMetrics;)V
    .registers 2

    .prologue
    .line 2501
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 2502
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->scaled:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2503
    sget v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->dpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2504
    return-void
.end method
