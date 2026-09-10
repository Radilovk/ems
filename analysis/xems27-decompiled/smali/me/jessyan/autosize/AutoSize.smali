.class public final Lme/jessyan/autosize/AutoSize;
.super Ljava/lang/Object;
.source "AutoSize.java"


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

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lme/jessyan/autosize/AutoSize;->mCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you can\'t instantiate me!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static autoConvertDensity(Landroid/app/Activity;FZ)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sizeInDp"    # F
    .param p2, "isBaseOnWidth"    # Z

    .line 147
    const-string v0, "activity == null"

    invoke-static {p0, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-eqz p2, :cond_0

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignWidth()F

    move-result v0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getUnitsManager()Lme/jessyan/autosize/unit/UnitsManager;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/unit/UnitsManager;->getDesignHeight()F

    move-result v0

    :goto_0
    nop

    .line 151
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

    .line 153
    if-eqz p2, :cond_2

    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenWidth()I

    move-result v1

    goto :goto_2

    .line 154
    :cond_2
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getScreenHeight()I

    move-result v1

    :goto_2
    nop

    .line 155
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

    .line 156
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->isUseDeviceSize()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lme/jessyan/autosize/AutoSizeConfig;->getInitScaledDensity()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lme/jessyan/autosize/AutoSize;->mCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/jessyan/autosize/DisplayMetricsInfo;

    .line 162
    .local v3, "displayMetricsInfo":Lme/jessyan/autosize/DisplayMetricsInfo;
    const/4 v4, 0x0

    .line 163
    .local v4, "targetDensity":F
    const/4 v5, 0x0

    .line 164
    .local v5, "targetDensityDpi":I
    const/4 v6, 0x0

    .line 165
    .local v6, "targetScaledDensity":F
    const/4 v7, 0x0

    .line 167
    .local v7, "targetXdpi":F
    if-nez v3, :cond_6

    .line 168
    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 169
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

    .line 171
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

    .line 173
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

    .line 174
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

    .line 175
    .local v4, "scale":F
    mul-float v6, v9, v4

    .line 176
    const/high16 v10, 0x43200000    # 160.0f

    mul-float v10, v10, v9

    float-to-int v5, v10

    .line 178
    if-eqz p2, :cond_5

    .line 179
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

    .line 181
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

    .line 184
    .end local v7    # "targetXdpi":F
    .restart local v10    # "targetXdpi":F
    :goto_5
    sget-object v7, Lme/jessyan/autosize/AutoSize;->mCache:Ljava/util/Map;

    new-instance v8, Lme/jessyan/autosize/DisplayMetricsInfo;

    invoke-direct {v8, v9, v5, v6, v10}, Lme/jessyan/autosize/DisplayMetricsInfo;-><init>(FIFF)V

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v4    # "scale":F
    goto :goto_6

    .line 186
    .end local v9    # "targetDensity":F
    .end local v10    # "targetXdpi":F
    .local v4, "targetDensity":F
    .restart local v7    # "targetXdpi":F
    :cond_6
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensity()F

    move-result v9

    .line 187
    .end local v4    # "targetDensity":F
    .restart local v9    # "targetDensity":F
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getDensityDpi()I

    move-result v5

    .line 188
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getScaledDensity()F

    move-result v6

    .line 189
    invoke-virtual {v3}, Lme/jessyan/autosize/DisplayMetricsInfo;->getXdpi()F

    move-result v10

    .line 192
    .end local v7    # "targetXdpi":F
    .restart local v10    # "targetXdpi":F
    :goto_6
    invoke-static {p0, v9, v5, v6, v10}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/app/Activity;FIFF)V

    .line 194
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x3

    if-eqz p2, :cond_7

    const-string v11, "designWidthInDp"

    goto :goto_7

    :cond_7
    const-string v11, "designHeightInDp"

    :goto_7
    aput-object v11, v7, v8

    const/4 v8, 0x4

    .line 196
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x5

    if-eqz p2, :cond_8

    const-string v11, "designWidthInSubunits"

    goto :goto_8

    :cond_8
    const-string v11, "designHeightInSubunits"

    :goto_8
    aput-object v11, v7, v8

    const/4 v8, 0x6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x7

    .line 197
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v8

    const/16 v8, 0x8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v8

    const/16 v8, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/16 v8, 0xa

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v8

    .line 194
    const-string v8, "The %s has been adapted! \n%s Info: isBaseOnWidth = %s, %s = %f, %s = %f, targetDensity = %f, targetScaledDensity = %f, targetDensityDpi = %d, targetXdpi = %f"

    invoke-static {v4, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lme/jessyan/autosize/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static autoConvertDensityBaseOnHeight(Landroid/app/Activity;F)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "designHeightInDp"    # F

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

    .line 79
    const-string v0, "customAdapt == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->getSizeInDp()F

    move-result v0

    .line 83
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 84
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    .line 90
    :cond_1
    :goto_0
    invoke-interface {p1}, Lme/jessyan/autosize/internal/CustomAdapt;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V

    .line 91
    return-void
.end method

.method public static autoConvertDensityOfExternalAdaptInfo(Landroid/app/Activity;Lme/jessyan/autosize/external/ExternalAdaptInfo;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "externalAdaptInfo"    # Lme/jessyan/autosize/external/ExternalAdaptInfo;

    .line 100
    const-string v0, "externalAdaptInfo == null"

    invoke-static {p1, v0}, Lme/jessyan/autosize/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->getSizeInDp()F

    move-result v0

    .line 104
    .local v0, "sizeInDp":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 105
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignWidthInDp()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v1

    int-to-float v0, v1

    .line 111
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lme/jessyan/autosize/external/ExternalAdaptInfo;->isBaseOnWidth()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V

    .line 112
    return-void
.end method

.method public static autoConvertDensityOfGlobal(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

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

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getDesignHeightInDp()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lme/jessyan/autosize/AutoSize;->autoConvertDensityBaseOnHeight(Landroid/app/Activity;F)V

    .line 70
    :goto_0
    return-void
.end method

.method public static cancelAdapt(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 206
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lme/jessyan/autosize/AutoSizeConfig;->getInitXdpi()F

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

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    .line 213
    goto :goto_0

    .line 209
    :cond_1
    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr v0, v1

    .line 210
    nop

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
.end method

.method private static getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 302
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

    .line 304
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

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    return-object v1

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public static initCompatMultiProcess(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".autosize-init-provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 230
    return-void
.end method

.method private static setDensity(Landroid/app/Activity;FIFF)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "density"    # F
    .param p2, "densityDpi"    # I
    .param p3, "scaledDensity"    # F
    .param p4, "xdpi"    # F

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/AutoSize;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 244
    .local v0, "activityDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lme/jessyan/autosize/AutoSize;->getMetricsOnMiui(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 246
    .local v1, "appDisplayMetricsOnMIUI":Landroid/util/DisplayMetrics;
    if-eqz v0, :cond_0

    .line 247
    invoke-static {v0, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 250
    .local v2, "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 253
    .end local v2    # "activityDisplayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    if-eqz v1, :cond_1

    .line 254
    invoke-static {v1, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    goto :goto_1

    .line 256
    :cond_1
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lme/jessyan/autosize/AutoSizeConfig;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 257
    .local v2, "appDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-static {v2, p1, p2, p3, p4}, Lme/jessyan/autosize/AutoSize;->setDensity(Landroid/util/DisplayMetrics;FIFF)V

    .line 259
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

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 285
    :cond_2
    iput p4, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 286
    goto :goto_0

    .line 288
    :cond_3
    const v0, 0x41cb3333    # 25.4f

    mul-float v0, v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 289
    goto :goto_0

    .line 282
    :cond_4
    const/high16 v0, 0x42900000    # 72.0f

    mul-float v0, v0, p4

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 283
    nop

    .line 292
    :goto_0
    return-void
.end method
