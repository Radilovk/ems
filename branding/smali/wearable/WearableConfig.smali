.class public final Lcom/isaigu/gymapp/wearable/WearableConfig;
.super Ljava/lang/Object;
.source "WearableConfig.java"


# static fields
.field private static final KEY_AUTO_REDUCE:Ljava/lang/String; = "auto_reduce"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_HR_THRESHOLD:Ljava/lang/String; = "hr_threshold"

.field private static final KEY_STRENGTH_STEP:Ljava/lang/String; = "strength_step"

.field private static final KEY_TASKER_PASSWORD:Ljava/lang/String; = "tasker_password"

.field private static final PREFS:Ljava/lang/String; = "wearable_bridge"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHrThreshold(Landroid/content/Context;)I
    .registers 3

    .line 31
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

    .line 35
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "strength_step"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTaskerPassword(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "tasker_password"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAutoReduceEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "auto_reduce"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 23
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

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 19
    const-string v0, "wearable_bridge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 18
    return-object p0
.end method
