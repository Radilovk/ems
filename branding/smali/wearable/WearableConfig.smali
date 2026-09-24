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

    .line 101
    if-nez p0, :cond_4

    .line 105
    :goto_3
    return v1

    .line 104
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "band_transport"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
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

.method public static isConfigured(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p0, :cond_4

    .line 133
    :cond_3
    :goto_3
    return v1

    .line 121
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_3

    .line 125
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

    .line 126
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "0X"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 127
    :cond_32
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_3

    .line 132
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
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
    .line 113
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

.method public static setArmed(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 141
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/WearableConfig;->armedThisRun:Z

    .line 142
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "armed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
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
    .line 146
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_reduce_v2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
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

.method public static setBandTransport(Landroid/content/Context;I)V
    .registers 6

    .prologue
    .line 109
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

    .line 110
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 137
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method public static setHrThreshold(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/16 v0, 0xdc

    const/16 v1, 0x50

    .line 150
    if-ge p1, v1, :cond_1c

    .line 153
    :goto_6
    if-le v1, v0, :cond_1a

    .line 156
    :goto_8
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hr_threshold"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
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

    .line 160
    if-ge p1, v1, :cond_1b

    .line 163
    :goto_5
    if-le v1, v0, :cond_19

    .line 166
    :goto_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "strength_step"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void

    :cond_19
    move v0, v1

    goto :goto_7

    :cond_1b
    move v1, p1

    goto :goto_5
.end method
