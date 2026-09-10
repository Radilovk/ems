.class public Lme/jessyan/autosize/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you can\'t instantiate me!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHeightOfNavigationBar(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "force_fsg_nav_bar"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    :goto_0
    return v2

    .line 118
    :cond_0
    invoke-static {p0}, Lme/jessyan/autosize/utils/ScreenUtils;->getRawScreenSize(Landroid/content/Context;)[I

    move-result-object v2

    aget v1, v2, v5

    .line 119
    .local v1, "realHeight":I
    invoke-static {p0}, Lme/jessyan/autosize/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v2

    aget v0, v2, v5

    .line 120
    .local v0, "displayHeight":I
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public static getRawScreenSize(Landroid/content/Context;)[I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x11

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 79
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 81
    .local v4, "size":[I
    const-string/jumbo v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 82
    .local v5, "w":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 83
    .local v0, "d":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .local v6, "widthPixels":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    .local v1, "heightPixels":I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v10, :cond_0

    .line 92
    :try_start_0
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawWidth"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 93
    const-class v7, Landroid/view/Display;

    const-string v8, "getRawHeight"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 97
    :cond_0
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_1

    .line 99
    :try_start_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v3, "realSize":Landroid/graphics/Point;
    const-class v7, Landroid/view/Display;

    const-string v8, "getRealSize"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/graphics/Point;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 102
    iget v1, v3, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .end local v3    # "realSize":Landroid/graphics/Point;
    :cond_1
    :goto_1
    aput v6, v4, v12

    .line 106
    aput v1, v4, v13

    .line 107
    return-object v4

    .line 103
    :catch_0
    move-exception v7

    goto :goto_1

    .line 94
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 62
    .local v2, "size":[I
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 63
    .local v3, "w":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    const/4 v4, 0x0

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v5, v2, v4

    .line 68
    const/4 v4, 0x1

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v5, v2, v4

    .line 69
    return-object v2
.end method

.method public static getStatusBarHeight()I
    .locals 7

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 50
    .end local v1    # "resourceId":I
    :cond_0
    :goto_0
    return v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method
