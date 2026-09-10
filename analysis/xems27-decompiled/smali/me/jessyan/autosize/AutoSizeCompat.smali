.class public final Lme/jessyan/autosize/AutoSizeCompat;
.super Ljava/lang/Object;
.source "AutoSizeCompat.java"


# static fields
.field private static mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lme/jessyan/autosize/DisplayMetricsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/jessyan/autosize/AutoSizeCompat;->mCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you can\'t instantiate me!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static autoConvertDensity(Landroid/content/res/Resources;FZ)V
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "sizeInDp"    # F
    .param p2, "isBaseOnWidth"    # Z

    .line 135
    const-string v0, "resources == null"

    invoke-static {p0, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    if-eqz p2, :cond_0

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignWidth()F

    move-result v0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignHeight()F

    move-result v0

    :goto_0
    nop

    .line 139
    .local v0, "subunitsDesignSize":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    move v0, v1

    .line 141
    if-eqz p2, :cond_2

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v1

    goto :goto_2

    .line 142
    :cond_2
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v1

    :goto_2
    nop

    .line 143
    .local v1, "screenSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lme/jessyan/autosize/AutoSizeCompat;->mCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/jessyan/autosize/DisplayMetricsInfo;

    .line 150
    .local v3, "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    const/4 v4, 0x0

    .line 151
    .local v4, "targetDensity":F
    const/4 v5, 0x0

    .line 152
    .local v5, "targetDensityDpi":I
    const/4 v6, 0x0

    .line 153
    .local v6, "targetScaledDensity":F
    const/4 v7, 0x0

    .line 155
    .local v7, "targetXdpi":F
    if-nez v3, :cond_6

    .line 156
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 157
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v9

    invoke-virtual {v9}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v8

    div-float/2addr v9, p1

    .end local v4    # "targetDensity":F
    .local v9, "targetDensity":F
    goto :goto_3

    .line 159
    .end local v9    # "targetDensity":F
    .restart local v4    # "targetDensity":F
    :cond_3
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v9

    invoke-virtual {v9}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v8

    div-float/2addr v9, p1

    .line 161
    .end local v4    # "targetDensity":F
    .restart local v9    # "targetDensity":F
    :goto_3
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->isExcludeFontScale()Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v4

    mul-float v4, v4, v8

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensity()F

    move-result v10

    div-float/2addr v4, v10

    :goto_4
    nop

    .line 163
    .local v4, "scale":F
    mul-float v6, v9, v4

    .line 164
    const/high16 v10, 0x43200000    # 160.0f

    mul-float v10, v10, v9

    float-to-int v5, v10

    .line 166
    if-eqz p2, :cond_5

    .line 167
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v8

    div-float/2addr v10, v0

    .end local v7    # "targetXdpi":F
    .local v10, "targetXdpi":F
    goto :goto_5

    .line 169
    .end local v10    # "targetXdpi":F
    .restart local v7    # "targetXdpi":F
    :cond_5
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v8

    div-float/2addr v10, v0

    .line 172
    .end local v7    # "targetXdpi":F
    .restart local v10    # "targetXdpi":F
    :goto_5
    sget-object v7, Lme/jessyan/autosize/AutoSizeCompat;->mCache:Ljava/util/Map;

    new-instance v8, Lme/jessyan/autosize/DisplayMetricsInfo;

    invoke-direct {v8, v9, v5, v6, v10}, Lme/jessyan/autosize/DisplayMetricsInfo;-><init>(FIFF)V

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v4    # "scale":F
    goto :goto_6

    .line 174
    .end local v9    # "targetDensity":F
    .end local v10    # "targetXdpi":F
    .local v4, "targetDensity":F
    .restart local v7    # "targetXdpi":F
    :cond_6
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensity()F

    move-result v9

    .line 175
    .end local v4    # "targetDensity":F
    .restart local v9    # "targetDensity":F
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensityDpi()I

    move-result v5

    .line 176
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getScaledDensity()F

    move-result v6

    .line 177
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getXdpi()F

    move-result v10

    .line 180
    .end local v7    # "targetXdpi":F
    .restart local v10    # "targetXdpi":F
    :goto_6
    invoke-static {p0, v9, v5, v6, v10}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/content/res/Resources;FIFF)V

    .line 181
    return-void
.end method

.method public static autoConvertDensityBaseOnHeight(Landroid/content/res/Resources;F)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "designHeightInDp"    # F

    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    .line 120
    return-void
.end method

.method public static autoConvertDensityBaseOnWidth(Landroid/content/res/Resources;F)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "designWidthInDp"    # F

    .line 109
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    .line 110
    return-void
.end method

.method public static autoConvertDensityOfCustomAdapt(Landroid/content/res/Resources;Lme/jessyan/autosize/internal/CustomAdapt;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "customAdapt"    # Lme/jessyan/autosize/internal/CustomAdapt;

    .line 67
    const-string v0, "customAdapt == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->getSizeInDp()F

    move-result v0

    .line 71
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 72
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    .line 78
    :cond_1
    :goto_0
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    .line 79
    return-void
.end method

.method public static autoConvertDensityOfExternalAdaptInfo(Landroid/content/res/Resources;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "externalAdaptInfo"    # Lme/jessyan/autosize/external/ExternalAdaptInfo;

    .line 88
    const-string v0, "externalAdaptInfo == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->getSizeInDp()F

    move-result v0

    .line 92
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 93
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    .line 100
    return-void
.end method

.method public static autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 53
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->isBaseOnWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityBaseOnWidth(Landroid/content/res/Resources;F)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityBaseOnHeight(Landroid/content/res/Resources;F)V

    .line 58
    :goto_0
    return-void
.end method

.method public static cancelAdapt(Landroid/content/res/Resources;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 189
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getInitXdpi()F

    move-result v0

    .line 190
    .local v0, "initXdpi":F
    sget-object v1, Lme/jessyan/autosize/AutoSizeCompat$1;->$SwitchMap$me$jessyan$autosize$unit$Subunits:[I

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/unit/UnitsManager;->getSupportSubunits()Lme/jessyan/autosize/unit/Subunits;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/unit/Subunits;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    .line 196
    goto :goto_0

    .line 192
    :cond_1
    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    .line 193
    nop

    .line 199
    :goto_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensity()F

    move-result v1

    .line 200
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensityDpi()I

    move-result v2

    .line 201
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v3

    .line 199
    invoke-static {p0, v1, v2, v3, v0}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/content/res/Resources;FIFF)V

    .line 203
    return-void
.end method

.method private static getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 275
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->isMiui()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getTmpMetricsField()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getTmpMetricsField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    return-object v1

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method private static setDensity(Landroid/content/res/Resources;FIFF)V
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F
    .param p4, "xdpi"    # F

    .line 216
    invoke-static {p0}, Lme/jessyan/autosize/AutoSizeCompat;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 217
    .local v0, "activityDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/AutoSizeCompat;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 219
    .local v1, "appDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 223
    .local v2, "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 226
    .end local v2    # "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    if-eqz v1, :cond_1

    .line 227
    invoke-static {v1, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_1

    .line 229
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 230
    .local v2, "appDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 232
    .end local v2    # "appDisplayMetrics":Landroid/util/DisplayMetrics;
    :goto_1
    return-void
.end method

.method private static setDensity(Landroid/util/DisplayMetrics;FIFF)V
    .locals 2
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F
    .param p4, "xdpi"    # F

    .line 244
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->isSupportDP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput p1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 246
    iput p2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 248
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->isSupportSP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iput p3, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 251
    :cond_1
    sget-object v0, Lme/jessyan/autosize/AutoSizeCompat$1;->$SwitchMap$me$jessyan$autosize$unit$Subunits:[I

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/unit/UnitsManager;->getSupportSubunits()Lme/jessyan/autosize/unit/Subunits;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/unit/Subunits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 258
    :cond_2
    iput p4, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 259
    goto :goto_0

    .line 261
    :cond_3
    const v0, 0x41cb3333    # 25.4f

    mul-float v0, v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 262
    goto :goto_0

    .line 255
    :cond_4
    const/high16 v0, 0x42900000    # 72.0f

    mul-float v0, v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 256
    nop

    .line 265
    :goto_0
    return-void
.end method
