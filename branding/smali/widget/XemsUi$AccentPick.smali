.class final Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;
.super Ljava/lang/Object;
.source "XemsUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccentPick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final magenta:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->a:Landroid/app/Activity;

    .line 870
    iput-boolean p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->magenta:Z

    .line 871
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 875
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 876
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->isMagenta(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->magenta:Z

    if-ne v0, v1, :cond_e

    .line 886
    :goto_d
    return-void

    .line 880
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->a:Landroid/app/Activity;

    const-string v1, "setting_share"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accent_magenta"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->magenta:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$AccentPick;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->restartApp(Landroid/app/Activity;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2b} :catch_2c

    goto :goto_d

    .line 883
    :catch_2c
    move-exception v0

    .line 884
    const-string v1, "XemsUi.accentPick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
