.class public final Lcom/isaigu/gymapp/wearable/WearableConfig;
.super Ljava/lang/Object;
.source "WearableConfig.java"


# static fields
.field private static final KEY_ARMED:Ljava/lang/String; = "armed"

.field private static final KEY_AUTH_KEY:Ljava/lang/String; = "auth_key"

.field private static final KEY_AUTO_REDUCE:Ljava/lang/String; = "auto_reduce_v2"

.field private static final KEY_BAND_MAC:Ljava/lang/String; = "band_mac"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_HR_MANUAL:Ljava/lang/String; = "hr_threshold_manual"

.field private static final KEY_HR_REST:Ljava/lang/String; = "hr_rest"

.field private static final KEY_HR_THRESHOLD:Ljava/lang/String; = "hr_threshold"

.field private static final KEY_SAVED_BANDS:Ljava/lang/String; = "saved_bands"

.field private static final KEY_STRENGTH_STEP:Ljava/lang/String; = "strength_step"

.field private static final PREFS:Ljava/lang/String; = "wearable_bridge"

.field private static armedThisRun:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 91
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auth_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBandAppVersion(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "band_app_ver"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3
.end method

.method public static getBandMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 81
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "band_mac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBandTransport(Landroid/content/Context;)I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 181
    if-nez p0, :cond_4

    .line 185
    :goto_3
    return v1

    .line 184
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "band_transport"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 185
    if-ltz v0, :cond_15

    const/4 v2, 0x2

    if-gt v0, v2, :cond_15

    :goto_13
    move v1, v0

    goto :goto_3

    :cond_15
    move v0, v1

    goto :goto_13
.end method

.method public static getHrThreshold(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 47
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hr_threshold"

    const/16 v2, 0x96

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    :goto_12
    return v0

    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(I)I

    move-result v0

    goto :goto_12
.end method

.method public static getRestHr(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 68
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hr_rest"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStrengthStep(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 76
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "strength_step"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isArmed(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/WearableConfig;->armedThisRun:Z

    if-eqz v1, :cond_12

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "armed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static isAutoReduceEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 41
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_reduce_v2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isBandRemoteEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 161
    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "band_remote"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isConfigured(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 198
    if-nez p0, :cond_4

    .line 213
    :cond_3
    :goto_3
    return v1

    .line 201
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_3

    .line 205
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 207
    :cond_32
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_3

    .line 212
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_64

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_64

    const/4 v0, 0x1

    :goto_62
    move v1, v0

    goto :goto_3

    :cond_64
    move v0, v1

    goto :goto_62
.end method

.method public static isDirectBleMode(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 193
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHrThresholdManual(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hr_threshold_manual"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wearable_bridge"

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 105
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_15

    .line 125
    :cond_14
    :goto_14
    return-void

    .line 109
    :cond_15
    :try_start_15
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBandsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 110
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 111
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 112
    const-string v0, "mac"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "key"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v4, "name"

    if-eqz p3, :cond_6c

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 116
    const/4 v0, 0x0

    :goto_48
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6f

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_6f

    .line 117
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 118
    const-string v4, "mac"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 119
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 116
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 114
    :cond_6c
    const-string v0, ""

    goto :goto_41

    .line 122
    :cond_6f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_bands"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_84} :catch_85

    goto :goto_14

    .line 123
    :catch_85
    move-exception v0

    goto :goto_14
.end method

.method public static savedBands(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :try_start_6
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBandsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_39

    .line 133
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 134
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mac"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "key"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_35} :catch_38

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 136
    :catch_38
    move-exception v0

    .line 138
    :cond_39
    return-object v1
.end method

.method private static savedBandsJson(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 5

    .prologue
    .line 153
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "saved_bands"

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 155
    :goto_11
    return-object v0

    .line 154
    :catch_12
    move-exception v0

    .line 155
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_11
.end method

.method public static savedKeyFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 143
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 144
    const/4 v1, 0x0

    aget-object v3, v0, v1

    if-nez p1, :cond_25

    const-string v1, ""

    :goto_1b
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 148
    :goto_24
    return-object v0

    .line 144
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 148
    :cond_2a
    const-string v0, ""

    goto :goto_24
.end method

.method public static setArmed(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 221
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableConfig;->armedThisRun:Z

    .line 222
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "armed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    return-void
.end method

.method public static setAuthKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 95
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "auth_key"

    .line 96
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_10
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void

    .line 96
    :cond_18
    const-string v0, ""

    goto :goto_10
.end method

.method public static setAutoReduceEnabled(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 226
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_reduce_v2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method

.method public static setBandAppVersion(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 174
    if-eqz p0, :cond_13

    .line 175
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "band_app_ver"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    :cond_13
    return-void
.end method

.method public static setBandMac(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 85
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "band_mac"

    .line 86
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_10
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void

    .line 86
    :cond_18
    const-string v0, ""

    goto :goto_10
.end method

.method public static setBandRemoteEnabled(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 165
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "band_remote"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    return-void
.end method

.method public static setBandTransport(Landroid/content/Context;I)V
    .registers 6

    .prologue
    .line 189
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "band_transport"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 217
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    return-void
.end method

.method public static setHrThreshold(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/16 v0, 0xdc

    const/16 v1, 0x50

    .line 230
    if-ge p1, v1, :cond_1c

    .line 233
    :goto_6
    if-le v1, v0, :cond_1a

    .line 236
    :goto_8
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hr_threshold"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    return-void

    :cond_1a
    move v0, v1

    goto :goto_8

    :cond_1c
    move v1, p1

    goto :goto_6
.end method

.method public static setHrThresholdFromField(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 58
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(I)I

    move-result v0

    .line 59
    if-lez p1, :cond_c

    if-ne p1, v0, :cond_1f

    .line 60
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hr_threshold_manual"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    :goto_1e
    return-void

    .line 63
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hr_threshold_manual"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setHrThreshold(Landroid/content/Context;I)V

    goto :goto_1e
.end method

.method public static setRestHr(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hr_rest"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    return-void
.end method

.method public static setStrengthStep(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 240
    if-ge p1, v1, :cond_1b

    .line 243
    :goto_5
    if-le v1, v0, :cond_19

    .line 246
    :goto_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "strength_step"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    return-void

    :cond_19
    move v0, v1

    goto :goto_7

    :cond_1b
    move v1, p1

    goto :goto_5
.end method
