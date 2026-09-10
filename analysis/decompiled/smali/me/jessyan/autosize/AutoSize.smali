.class public final Lme/jessyan/autosize/AutoSize;
.super Ljava/lang/Object;
.source "AutoSize.java"


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
    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/jessyan/autosize/AutoSize;->mCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you can\'t instantiate me!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static autoConvertDensity(Landroid/app/Activity;FZ)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sizeInDp"    # F
    .param p2, "isBaseOnWidth"    # Z

    .prologue
    .line 147
    const-string v10, "activity == null"

    invoke-static {p0, v10}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-eqz p2, :cond_0

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignWidth()F

    move-result v5

    .line 151
    .local v5, "subunitsDesignSize":F
    :goto_0
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_1

    .line 153
    :goto_1
    if-eqz p2, :cond_2

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v4

    .line 155
    .local v4, "screenSize":I
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 156
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v11

    invoke-virtual {v11}, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 157
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v11

    invoke-virtual {v11}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "key":Ljava/lang/String;
    sget-object v10, Lme/jessyan/autosize/AutoSize;->mCache:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/jessyan/autosize/DisplayMetricsInfo;

    .line 162
    .local v1, "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    const/4 v6, 0x0

    .line 163
    .local v6, "targetDensity":F
    const/4 v7, 0x0

    .line 164
    .local v7, "targetDensityDpi":I
    const/4 v8, 0x0

    .line 165
    .local v8, "targetScaledDensity":F
    const/4 v9, 0x0

    .line 167
    .local v9, "targetXdpi":F
    if-nez v1, :cond_6

    .line 168
    if-eqz p2, :cond_3

    .line 169
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    div-float v6, v10, p1

    .line 173
    :goto_3
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->isExcludeFontScale()Z

    move-result v10

    if-eqz v10, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    .line 175
    .local v3, "scale":F
    :goto_4
    mul-float v8, v6, v3

    .line 176
    const/high16 v10, 0x43200000    # 160.0f

    mul-float/2addr v10, v6

    float-to-int v7, v10

    .line 178
    if-eqz p2, :cond_5

    .line 179
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    div-float v9, v10, v5

    .line 184
    :goto_5
    sget-object v10, Lme/jessyan/autosize/AutoSize;->mCache:Ljava/util/Map;

    new-instance v11, Lme/jessyan/autosize/DisplayMetricsInfo;

    invoke-direct {v11, v6, v7, v8, v9}, Lme/jessyan/autosize/DisplayMetricsInfo;-><init>(FIFF)V

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v3    # "scale":F
    :goto_6
    invoke-static {p0, v6, v7, v8, v9}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/app/Activity;FIFF)V

    .line 194
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v12, "The %s has been adapted! \n%s Info: isBaseOnWidth = %s, %s = %f, %s = %f, targetDensity = %f, targetScaledDensity = %f, targetDensityDpi = %d, targetXdpi = %f"

    const/16 v10, 0xb

    new-array v13, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v14, 0x3

    if-eqz p2, :cond_7

    const-string v10, "designWidthInDp"

    :goto_7
    aput-object v10, v13, v14

    const/4 v10, 0x4

    .line 196
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v14, 0x5

    if-eqz p2, :cond_8

    const-string v10, "designWidthInSubunits"

    :goto_8
    aput-object v10, v13, v14

    const/4 v10, 0x6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x7

    .line 197
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0x8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/16 v10, 0xa

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v13, v10

    .line 194
    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 198
    return-void

    .line 150
    .end local v1    # "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "screenSize":I
    .end local v5    # "subunitsDesignSize":F
    .end local v6    # "targetDensity":F
    .end local v7    # "targetDensityDpi":I
    .end local v8    # "targetScaledDensity":F
    .end local v9    # "targetXdpi":F
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignHeight()F

    move-result v5

    goto/16 :goto_0

    .restart local v5    # "subunitsDesignSize":F
    :cond_1
    move/from16 v5, p1

    .line 151
    goto/16 :goto_1

    .line 154
    :cond_2
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v4

    goto/16 :goto_2

    .line 171
    .restart local v1    # "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "screenSize":I
    .restart local v6    # "targetDensity":F
    .restart local v7    # "targetDensityDpi":I
    .restart local v8    # "targetScaledDensity":F
    .restart local v9    # "targetXdpi":F
    :cond_3
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    div-float v6, v10, p1

    goto/16 :goto_3

    .line 173
    :cond_4
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    .line 174
    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v11

    invoke-virtual {v11}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensity()F

    move-result v11

    div-float v3, v10, v11

    goto/16 :goto_4

    .line 181
    .restart local v3    # "scale":F
    :cond_5
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v10

    invoke-virtual {v10}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    div-float v9, v10, v5

    goto/16 :goto_5

    .line 186
    .end local v3    # "scale":F
    :cond_6
    invoke-virtual {v1}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensity()F

    move-result v6

    .line 187
    invoke-virtual {v1}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensityDpi()I

    move-result v7

    .line 188
    invoke-virtual {v1}, Lme/jessyan/autosize/DisplayMetricsInfo;->getScaledDensity()F

    move-result v8

    .line 189
    invoke-virtual {v1}, Lme/jessyan/autosize/DisplayMetricsInfo;->getXdpi()F

    move-result v9

    goto/16 :goto_6

    .line 195
    :cond_7
    const-string v10, "designHeightInDp"

    goto/16 :goto_7

    .line 196
    :cond_8
    const-string v10, "designHeightInSubunits"

    goto/16 :goto_8
.end method

.method public static autoConvertDensityBaseOnHeight(Landroid/app/Activity;F)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "designHeightInDp"    # F

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V

    .line 132
    return-void
.end method

.method public static autoConvertDensityBaseOnWidth(Landroid/app/Activity;F)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "designWidthInDp"    # F

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V

    .line 122
    return-void
.end method

.method public static autoConvertDensityOfCustomAdapt(Landroid/app/Activity;Lme/jessyan/autosize/internal/CustomAdapt;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "customAdapt"    # Lme/jessyan/autosize/internal/CustomAdapt;

    .prologue
    .line 79
    const-string v1, "customAdapt == null"

    invoke-static {p1, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->getSizeInDp()F

    move-result v0

    .line 83
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 84
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    .line 90
    :cond_0
    :goto_0
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V

    .line 91
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static autoConvertDensityOfExternalAdaptInfo(Landroid/app/Activity;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "externalAdaptInfo"    # Lme/jessyan/autosize/external/ExternalAdaptInfo;

    .prologue
    .line 100
    const-string v1, "externalAdaptInfo == null"

    invoke-static {p1, v1}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->getSizeInDp()F

    move-result v0

    .line 104
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 105
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V

    .line 112
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static autoConvertDensityOfGlobal(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->isBaseOnWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityBaseOnWidth(Landroid/app/Activity;F)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityBaseOnHeight(Landroid/app/Activity;F)V

    goto :goto_0
.end method

.method public static cancelAdapt(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 206
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getInitXdpi()F

    move-result v0

    .line 207
    .local v0, "initXdpi":F
    sget-object v1, Lme/jessyan/autosize/AutoSize$1;->$SwitchMap$me$jessyan$autosize$unit$Subunits:[I

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

    .line 216
    :goto_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensity()F

    move-result v1

    .line 217
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/AutoSizeConfig;->getInitDensityDpi()I

    move-result v2

    .line 218
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v3

    .line 216
    invoke-static {p0, v1, v2, v3, v0}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/app/Activity;FIFF)V

    .line 220
    return-void

    .line 209
    :pswitch_0
    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    .line 213
    goto :goto_0

    .line 207
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

    .line 302
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

    .line 304
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

    .line 309
    :goto_0
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 306
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 309
    goto :goto_0
.end method

.method public static initCompatMultiProcess(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".autosize-init-provider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 230
    return-void
.end method

.method private static setDensity(Landroid/app/Activity;FIFF)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F
    .param p4, "xdpi"    # F

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lme/jessyan/autosize/AutoSize;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 244
    .local v1, "activityDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lme/jessyan/autosize/AutoSize;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 246
    .local v3, "appDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_0

    .line 247
    invoke-static {v1, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 253
    :goto_0
    if-eqz v3, :cond_1

    .line 254
    invoke-static {v3, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 259
    :goto_1
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 250
    .local v0, "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v0, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_0

    .line 256
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

    .line 257
    .local v2, "appDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

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
    .line 271
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->isSupportDP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iput p1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 273
    iput p2, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 275
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->isSupportSP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iput p3, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 278
    :cond_1
    sget-object v0, Lme/jessyan/autosize/AutoSize$1;->$SwitchMap$me$jessyan$autosize$unit$Subunits:[I

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

    .line 292
    :goto_0
    :pswitch_0
    return-void

    .line 282
    :pswitch_1
    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 285
    :pswitch_2
    iput p4, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 288
    :pswitch_3
    const v0, 0x41cb3333    # 25.4f

    mul-float/2addr v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
