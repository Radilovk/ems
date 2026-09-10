.class public Lme/jessyan/autosize/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you can\'t instantiate me!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHeightOfNavigationBar(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return v2

    .line 118
    :cond_0
    invoke-static {p0}, Lme/jessyan/autosize/utils/ScreenUtils;->getRawScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 119
    .local v0, "realHeight":I
    invoke-static {p0}, Lme/jessyan/autosize/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v2

    aget v1, v2, v1

    .line 120
    .local v1, "displayHeight":I
    sub-int v2, v0, v1

    return v2
.end method

.method public static getRawScreenSize(Landroid/content/Context;)[I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 81
    .local v0, "size":[I
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 82
    .local v1, "w":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 83
    .local v2, "d":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 87
    .local v4, "widthPixels":I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    .local v5, "heightPixels":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/16 v9, 0xe

    if-lt v6, v9, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_0

    .line 92
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string v9, "getRawWidth"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 93
    const-class v6, Landroid/view/Display;

    const-string v9, "getRawHeight"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 95
    goto :goto_0

    .line 94
    :catch_0
    move-exception v6

    .line 97
    :cond_0
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x1

    if-lt v6, v7, :cond_1

    .line 99
    :try_start_1
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 100
    .local v6, "realSize":Landroid/graphics/Point;
    const-class v7, Landroid/view/Display;

    const-string v10, "getRealSize"

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Landroid/graphics/Point;

    aput-object v12, v11, v8

    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v8

    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget v7, v6, Landroid/graphics/Point;->x:I

    move v4, v7

    .line 102
    iget v7, v6, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 104
    .end local v6    # "realSize":Landroid/graphics/Point;
    goto :goto_1

    .line 103
    :catch_1
    move-exception v6

    .line 105
    :cond_1
    :goto_1
    aput v4, v0, v8

    .line 106
    aput v5, v0, v9

    .line 107
    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 62
    .local v0, "size":[I
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 63
    .local v1, "w":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 64
    .local v2, "d":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 65
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x0

    aput v4, v0, v5

    .line 68
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 69
    return-object v0
.end method

.method public static getStatusBarHeight()I
    .locals 5

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 44
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 45
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 49
    .end local v1    # "resourceId":I
    :cond_0
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 50
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return v0
.end method
