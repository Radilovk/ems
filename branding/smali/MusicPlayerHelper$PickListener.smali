.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PickListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1806
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 1807
    if-nez v0, :cond_d

    .line 1808
    const v0, 0x7f0d010b

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1833
    :goto_c
    return-void

    .line 1811
    :cond_d
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1813
    :try_start_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1814
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1817
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1818
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1819
    const/4 v2, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1502(Z)Z

    .line 1820
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600()Landroid/support/v7/app/AlertDialog;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_37} :catch_47

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1822
    :try_start_3a
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1600()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_41} :catch_5b

    .line 1826
    :cond_41
    :goto_41
    const/16 v2, 0x4255

    :try_start_43
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_c

    .line 1827
    :catch_47
    move-exception v0

    .line 1828
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1502(Z)Z

    .line 1829
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700()V

    .line 1830
    const-string v1, "player_pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1831
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_c

    .line 1823
    :catch_5b
    move-exception v2

    goto :goto_41
.end method
