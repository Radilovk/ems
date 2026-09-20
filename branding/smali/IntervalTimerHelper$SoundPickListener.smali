.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$SoundPickListener;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoundPickListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 833
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 834
    const v0, 0x7f0d0128

    if-nez p1, :cond_d

    .line 835
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500(I)V

    .line 836
    return-void

    .line 838
    :cond_d
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->hostActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 840
    :try_start_10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 845
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$802(Z)Z

    .line 846
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()Landroid/support/v7/app/AlertDialog;

    move-result-object v2
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_42

    if-eqz v2, :cond_3c

    .line 848
    :try_start_33
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->configDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$900()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->hide()V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3b

    .line 850
    goto :goto_3c

    .line 849
    :catchall_3b
    move-exception v2

    .line 852
    :cond_3c
    :goto_3c
    const/16 v2, 0x4256

    :try_start_3e
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    .line 858
    goto :goto_52

    .line 853
    :catchall_42
    move-exception p1

    .line 854
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->pickingSignal:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$802(Z)Z

    .line 855
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->restoreConfigDialogAfterPick()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$1000()V

    .line 856
    const-string v1, "interval_timer_pick"

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 857
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toast(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500(I)V

    .line 859
    :goto_52
    return-void
.end method
