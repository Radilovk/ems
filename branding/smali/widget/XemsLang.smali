.class public final Lcom/isaigu/gymapp/widget/XemsLang;
.super Ljava/lang/Object;
.source "XemsLang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLang$Again;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLang;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterWebView(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 62
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLang;->reapply(Landroid/app/Activity;)V

    .line 63
    if-eqz p0, :cond_11

    .line 64
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLang;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLang$Again;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLang$Again;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_11
    return-void
.end method

.method private static fix(Landroid/content/res/Resources;Ljava/util/Locale;)V
    .registers 5

    .prologue
    .line 98
    if-nez p0, :cond_3

    .line 108
    :cond_2
    :goto_2
    return-void

    .line 101
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 102
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    :cond_1b
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 106
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 107
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    if-eqz p0, :cond_12

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_10
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    .line 36
    :cond_12
    return-void
.end method

.method public static isBg()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    :try_start_2
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLang;->appContext:Landroid/content/Context;

    .line 41
    if-nez v2, :cond_d

    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLang;->init(Landroid/content/Context;)V

    .line 45
    :cond_d
    if-nez v2, :cond_10

    .line 51
    :cond_f
    :goto_f
    return v0

    .line 48
    :cond_10
    const-string v3, "setting_share"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
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

    .line 50
    :catch_29
    move-exception v1

    goto :goto_f
.end method

.method public static reapply()V
    .registers 1

    .prologue
    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLang;->reapply(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public static reapply(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 83
    if-nez p0, :cond_3

    .line 94
    :cond_2
    :goto_2
    return-void

    .line 86
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    const-string v2, "BG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLang;->fix(Landroid/content/res/Resources;Ljava/util/Locale;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsLang;->fix(Landroid/content/res/Resources;Ljava/util/Locale;)V

    goto :goto_2

    .line 92
    :catch_27
    move-exception v0

    goto :goto_2

    .line 86
    :cond_29
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_27

    goto :goto_12
.end method

.method public static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
