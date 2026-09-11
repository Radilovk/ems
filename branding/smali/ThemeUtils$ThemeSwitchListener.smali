.class Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;
.super Ljava/lang/Object;
.source "ThemeUtils.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/SwitchButton$OnCheckedChangeListener;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private suppress:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;->suppress:Z

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/isaigu/gymapp/widget/SwitchButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Lcom/isaigu/gymapp/widget/SwitchButton;
    .param p2, "isChecked"    # Z

    iget-boolean v0, p0, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;->suppress:Z

    if-eqz v0, :cond_apply

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;->suppress:Z

    return-void

    :cond_apply
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, p2, :cond_change

    return-void

    :cond_change
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/ThemeUtils$ThemeSwitchListener;->activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/utils/ThemeUtils;->applyChange(Landroid/app/Activity;Z)V

    return-void
.end method
