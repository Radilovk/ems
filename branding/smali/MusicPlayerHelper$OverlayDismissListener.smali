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

    .prologue
    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2091
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2092
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$5302(Z)Z

    .line 2099
    :goto_a
    return-void

    .line 2095
    :cond_b
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1602(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 2096
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$5302(Z)Z

    .line 2097
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 2098
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$5400()V

    goto :goto_a
.end method
