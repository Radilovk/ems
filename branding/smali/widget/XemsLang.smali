.class public final Lcom/isaigu/gymapp/widget/XemsLang;
.super Ljava/lang/Object;
.source "XemsLang.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 18
    if-eqz p0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_10
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    .line 21
    :cond_12
    return-void
.end method

.method public static isBg()Z
    .registers 5

    .line 25
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    .line 26
    if-nez v1, :cond_c

    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLang;->init(Landroid/content/Context;)V

    .line 30
    :cond_c
    if-nez v1, :cond_f

    .line 31
    return v0

    .line 33
    :cond_f
    const-string v2, "setting_share"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    const-string v2, "en"

    const-string v3, "language"

    const-string v4, "bg"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    xor-int/2addr v0, v1

    return v0

    .line 35
    :catchall_26
    move-exception v1

    .line 36
    return v0
.end method

.method public static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method
