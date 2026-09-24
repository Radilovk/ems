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

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 176
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 187
    :cond_d
    :goto_d
    return-void

    .line 181
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

    if-nez v0, :cond_d

    .line 182
    :cond_1e
    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showOverlayDialog()Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$200()Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_d

    .line 184
    :catch_22
    move-exception v0

    .line 185
    const-string v1, "WearableSyncHelper.showDial"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
