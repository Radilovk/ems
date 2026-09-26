.class Lcom/isaigu/gymapp/wearable/WearableSyncHelper$1;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->onTrainingHostReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 186
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_29

    .line 191
    :cond_e
    :try_start_e
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1e

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$100()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_21

    .line 192
    :cond_1e
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$200()Z
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_22

    .line 196
    :cond_21
    goto :goto_28

    .line 194
    :catchall_22
    move-exception v0

    .line 195
    const-string v1, "WearableSyncHelper.showDial"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :goto_28
    return-void

    .line 188
    :cond_29
    :goto_29
    return-void
.end method
