.class public Lcom/isaigu/gymapp/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyChange(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "darkMode"    # Z

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/ThemeUtils;->setDarkMode(Landroid/content/Context;Z)V

    if-eqz p1, :cond_light

    const/4 v0, 0x2

    goto :goto_apply

    :cond_light
    const/4 v0, 0x1

    :goto_apply
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public static applyStoredNightMode(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_light

    const/4 v0, 0x2

    goto :goto_apply

    :cond_light
    const/4 v0, 0x1

    :goto_apply
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method

.method public static bindThemeSwitch(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/View;

    if-eqz p0, :cond_end

    if-nez p1, :cond_has_root

    goto :goto_end

    :cond_has_root
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "theme_switch_button"

    const-string v2, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_has_id

    goto :goto_end

    :cond_has_id
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/SwitchButton;

    if-nez v0, :cond_has_switch

    goto :goto_end

    :cond_has_switch
    new-instance v1, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;)V

    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SwitchButton;->setCheck(Z)V

    :cond_end
    :goto_end
    return-void
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "setting_share"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "dark_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDarkMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "darkMode"    # Z

    const-string v0, "setting_share"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dark_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
