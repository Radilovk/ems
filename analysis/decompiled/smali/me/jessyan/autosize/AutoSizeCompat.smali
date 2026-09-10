.class public final Lme/jessyan/autosize/AutoSizeCompat;
.super Ljava/lang/Object;
.source "AutoSizeCompat.java"


# static fields
.field private static mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lme/jessyan/autosize/DisplayMetricsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/jessyan/autosize/AutoSizeCompat;->mCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you can\'t instantiate me!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static autoConvertDensity(Landroid/content/res/Resources;FZ)V
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "sizeInDp"    # F
    .param p2, "isBaseOnWidth"    # Z

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 135
    const-string v10, "resources == null"

    invoke-static {p0, v10}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    if-eqz p2, :cond_0

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignWidth()F

    move-result v4

    .line 139
    .local v4, "subunitsDesignSize":F
    :goto_0
    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-lez v10, :cond_1

    .line 141
    :goto_1
    if-eqz p2, :cond_2

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v3

    .line 143
    .local v3, "screenSize":I
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 144
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v11

    invoke-virtual {v11}, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 145
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v11

    invoke-virtual {v11}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "key":Ljava/lang/String;
    sget-object v10, Lme/jessyan/autosize/AutoSizeCompat;->mCache:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/autosize/DisplayMetricsInfo;

    .line 150
    .local v0, "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    const/4 v5, 0x0

    .line 151
    .local v5, "targetDensity":F
    const/4 v6, 0x0

    .line 152
    .local v6, "targetDensityDpi":I
    const/4 v7, 0x0

    .line 153
    .local v7, "targetScaledDensity":F
    const/4 v8, 0x0

    .line 155
    .local v8, "targetXdpi":F
    if-nez v0, :cond_6

    .line 156
    if-eqz p2, :cond_3

    .line 157
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    div-float v5, v10, p1

    .line 161
    :goto_3
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->isExcludeFontScale()Z

    move-result v10

    if-eqz v10, :cond_4

    move v2, v9

    .line 163
    .local v2, "scale":F
    :goto_4
    mul-float v7, v5, v2

    .line 164
    const/high16 v10, 0x43200000    # 160.0f

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .line 166
    if-eqz p2, :cond_5

    .line 167
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float v8, v9, v4

    .line 172
    :goto_5
    sget-object v9, Lme/jessyan/autosize/AutoSizeCompat;->mCache:Ljava/util/Map;

    new-instance v10, Lme/jessyan/autosize/DisplayMetricsInfo;

    invoke-direct {v10, v5, v6, v7, v8}, Lme/jessyan/autosize/DisplayMetricsInfo;-><init>(FIFF)V

    invoke-interface {v9, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v2    # "scale":F
    :goto_6
    invoke-static {p0, v5, v6, v7, v8}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/content/res/Resources;FIFF)V

    .line 181
    return-void

    .line 138
    .end local v0    # "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "screenSize":I
    .end local v4    # "subunitsDesignSize":F
    .end local v5    # "targetDensity":F
    .end local v6    # "targetDensityDpi":I
    .end local v7    # "targetScaledDensity":F
    .end local v8    # "targetXdpi":F
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignHeight()F

    move-result v4

    goto/16 :goto_0

    .restart local v4    # "subunitsDesignSize":F
    :cond_1
    move v4, p1

    .line 139
    goto/16 :goto_1

    .line 142
    :cond_2
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v3

    goto/16 :goto_2

    .line 159
    .restart local v0    # "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v3    # "screenSize":I
    .restart local v5    # "targetDensity":F
    .restart local v6    # "targetDensityDpi":I
    .restart local v7    # "targetScaledDensity":F
    .restart local v8    # "targetXdpi":F
    :cond_3
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    div-float v5, v10, p1

    goto :goto_3

    .line 161
    :cond_4
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    .line 162
    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v10

    mul-float/2addr v10, v9

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v11

    invoke-virtual {v11}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensity()F

    move-result v11

    div-float v2, v10, v11

    goto :goto_4

    .line 169
    .restart local v2    # "scale":F
    :cond_5
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    div-float v8, v9, v4

    goto :goto_5

    .line 174
    .end local v2    # "scale":F
    :cond_6
    invoke-virtual {v0}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensity()F

    move-result v5

    .line 175
    invoke-virtual {v0}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensityDpi()I

    move-result v6

    .line 176
    invoke-virtual {v0}, Lme/jessyan/autosize/DisplayMetricsInfo;->getScaledDensity()F

    move-result v7

    .line 177
    invoke-virtual {v0}, Lme/jessyan/autosize/DisplayMetricsInfo;->getXdpi()F

    move-result v8

    goto :goto_6
.end method

.method public static autoConvertDensityBaseOnHeight(Landroid/content/res/Resources;F)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "designHeightInDp"    # F

    .prologue
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

    .prologue
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

    .prologue
    .line 67
    const-string v1, "customAdapt == null"

    invoke-static {p1, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->getSizeInDp()F

    move-result v0

    .line 71
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 72
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    .line 78
    :cond_0
    :goto_0
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    .line 79
    return-void

    .line 75
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static autoConvertDensityOfExternalAdaptInfo(Landroid/content/res/Resources;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "externalAdaptInfo"    # Lme/jessyan/autosize/external/ExternalAdaptInfo;

    .prologue
    .line 88
    const-string v1, "externalAdaptInfo == null"

    invoke-static {p1, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->getSizeInDp()F

    move-result v0

    .line 92
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    .line 100
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
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

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityBaseOnHeight(Landroid/content/res/Resources;F)V

    goto :goto_0
.end method

.method public static cancelAdapt(Landroid/content/res/Resources;)V
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 189
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getInitXdpi()F

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

    packed-switch v1, :pswitch_data_0

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

    .line 192
    :pswitch_0
    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    .line 196
    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->isMiui()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getTmpMetricsField()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getTmpMetricsField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 279
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 282
    goto :goto_0
.end method

.method private static setDensity(Landroid/content/res/Resources;FIFF)V
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F
    .param p4, "xdpi"    # F

    .prologue
    .line 216
    invoke-static {p0}, Lme/jessyan/autosize/AutoSizeCompat;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 217
    .local v1, "activityDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lme/jessyan/autosize/AutoSizeCompat;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 219
    .local v3, "appDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_0

    .line 220
    invoke-static {v1, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 226
    :goto_0
    if-eqz v3, :cond_1

    .line 227
    invoke-static {v3, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 232
    :goto_1
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 223
    .local v0, "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v0, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_0

    .line 229
    .end local v0    # "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 230
    .local v2, "appDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSizeCompat;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_1
.end method

.method private static setDensity(Landroid/util/DisplayMetrics;FIFF)V
    .locals 2
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F
    .param p4, "xdpi"    # F

    .prologue
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

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 258
    :pswitch_2
    iput p4, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 261
    :pswitch_3
    const v0, 0x41cb3333    # 25.4f

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
