.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OverlayDismissListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OverlayDismissListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1322
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$900()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 1323
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3902(Z)Z

    .line 1324
    return-void

    .line 1326
    :cond_b
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1002(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 1327
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3902(Z)Z

    .line 1328
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1329
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4000()V

    .line 1330
    return-void
.end method
