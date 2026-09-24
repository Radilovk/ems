.class public final Lcom/isaigu/gymapp/widget/XemsLang;
.super Ljava/lang/Object;
.source "XemsLang.java"


# static fields
.field private static appContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .prologue
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
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 25
    :try_start_2
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    .line 26
    if-nez v2, :cond_d

    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLang;->init(Landroid/content/Context;)V

    .line 30
    :cond_d
    if-nez v2, :cond_10

    .line 36
    :cond_f
    :goto_f
    return v0

    .line 33
    :cond_10
    const-string v3, "setting_share"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 34
    const-string v3, "en"

    const-string v4, "language"

    const-string v5, "bg"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_29

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    goto :goto_f

    .line 35
    :catch_29
    move-exception v1

    goto :goto_f
.end method

.method public static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
