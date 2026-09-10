.class public Lcom/isaigu/gymapp/utils/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyChange(Landroid/app/Activity;)V
    .locals 10
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 70
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 71
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 73
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v7

    iget-object v7, v7, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v7}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 74
    .local v4, "locale":Ljava/util/Locale;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_0

    .line 75
    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 76
    new-instance v5, Landroid/os/LocaleList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/util/Locale;

    aput-object v4, v7, v9

    invoke-direct {v5, v7}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 77
    .local v5, "localeList":Landroid/os/LocaleList;
    invoke-static {v5}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 88
    .end local v5    # "localeList":Landroid/os/LocaleList;
    :goto_0
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 92
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 93
    const/high16 v7, 0x10000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 95
    invoke-virtual {p0, v9, v9}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 96
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void

    .line 80
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 83
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static applyChangeWithoutRestart(Landroid/app/Activity;)V
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 101
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 102
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 104
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 105
    .local v3, "locale":Ljava/util/Locale;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 107
    new-instance v4, Landroid/os/LocaleList;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/util/Locale;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-direct {v4, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 108
    .local v4, "localeList":Landroid/os/LocaleList;
    invoke-static {v4}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 109
    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 119
    .end local v4    # "localeList":Landroid/os/LocaleList;
    :goto_0
    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 120
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 114
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static changeLanguage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    iput-object p1, v0, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveData(Ljava/lang/Object;)V

    .line 21
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/LanguageUtils;->applyChange(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method public static getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 44
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    const-string v2, "BG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static wrapContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {}, Lcom/isaigu/gymapp/bean/UserData;->getInstance()Lcom/isaigu/gymapp/bean/UserData;

    move-result-object v4

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/UserData;->language:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/LanguageUtils;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 50
    .local v2, "newLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 51
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 53
    .local v0, "configuration":Landroid/content/res/Configuration;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 56
    new-instance v1, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v1, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 57
    .local v1, "localeList":Landroid/os/LocaleList;
    invoke-static {v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 65
    .end local v1    # "localeList":Landroid/os/LocaleList;
    :cond_0
    :goto_0
    return-object p0

    .line 60
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method
