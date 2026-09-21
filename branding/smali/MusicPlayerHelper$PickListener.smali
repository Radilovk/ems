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

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1087
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 1088
    if-nez p1, :cond_d

    .line 1089
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1090
    return-void

    .line 1092
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 1094
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1098
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1099
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$902(Z)Z

    .line 1101
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()Landroid/support/v7/app/AlertDialog;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_47

    if-eqz v1, :cond_41

    .line 1103
    :try_start_38
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    .line 1105
    goto :goto_41

    .line 1104
    :catchall_40
    move-exception v1

    .line 1107
    :cond_41
    :goto_41
    const/16 v1, 0x4255

    :try_start_43
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 1113
    goto :goto_5a

    .line 1108
    :catchall_47
    move-exception p1

    .line 1109
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$902(Z)Z

    .line 1110
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->restoreOverlayAfterPick()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1100()V

    .line 1111
    const-string v0, "player_pick"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1112
    const p1, 0x7f0d0113

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1114
    :goto_5a
    return-void
.end method
