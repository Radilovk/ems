.class public final Lcom/isaigu/gymapp/wearable/WearableConfig;
.super Ljava/lang/Object;
.source "WearableConfig.java"


# static fields
.field private static final KEY_ARMED:Ljava/lang/String; = "armed"

.field private static final KEY_AUTH_KEY:Ljava/lang/String; = "auth_key"

.field private static final KEY_AUTO_REDUCE:Ljava/lang/String; = "auto_reduce"

.field private static final KEY_BAND_MAC:Ljava/lang/String; = "band_mac"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_HR_THRESHOLD:Ljava/lang/String; = "hr_threshold"

.field private static final KEY_STRENGTH_STEP:Ljava/lang/String; = "strength_step"

.field private static final PREFS:Ljava/lang/String; = "wearable_bridge"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 56
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "auth_key"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBandMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "band_mac"

    const-string v1, "D0:62:2C:26:49:60"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHrThreshold(Landroid/content/Context;)I
    .registers 3

    .line 37
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hr_threshold"

    const/16 v1, 0xaa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStrengthStep(Landroid/content/Context;)I
    .registers 3

    .line 41
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "strength_step"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isArmed(Landroid/content/Context;)Z
    .registers 3

    .line 29
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "armed"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAutoReduceEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 33
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "auto_reduce"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isDirectBleMode(Landroid/content/Context;)Z
    .registers 4

    .line 65
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 66
    const/4 v0, 0x0

    if-nez p0, :cond_8

    .line 67
    return v0

    .line 69
    :cond_8
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 71
    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x20

    if-ne p0, v1, :cond_3a

    const/4 v0, 0x1

    :cond_3a
    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 21
    const-string v0, "wearable_bridge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static setArmed(Landroid/content/Context;Z)V
    .registers 3

    .line 81
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "armed"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public static setAuthKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 61
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    .line 60
    :goto_11
    const-string v0, "auth_key"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    return-void
.end method

.method public static setAutoReduceEnabled(Landroid/content/Context;Z)V
    .registers 3

    .line 85
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "auto_reduce"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public static setBandMac(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 51
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    .line 50
    :goto_11
    const-string v0, "band_mac"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 3

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "enabled"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    return-void
.end method

.method public static setHrThreshold(Landroid/content/Context;I)V
    .registers 3

    .line 89
    const/16 v0, 0x50

    if-ge p1, v0, :cond_6

    .line 90
    const/16 p1, 0x50

    .line 92
    :cond_6
    const/16 v0, 0xdc

    if-le p1, v0, :cond_c

    .line 93
    const/16 p1, 0xdc

    .line 95
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hr_threshold"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    return-void
.end method

.method public static setStrengthStep(Landroid/content/Context;I)V
    .registers 3

    .line 99
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 100
    const/4 p1, 0x1

    .line 102
    :cond_4
    const/16 v0, 0x14

    if-le p1, v0, :cond_a

    .line 103
    const/16 p1, 0x14

    .line 105
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "strength_step"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method
