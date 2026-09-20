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

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 909
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$900()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 910
    return-void

    .line 912
    :cond_7
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1502(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 913
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->overlayVisible:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2302(Z)Z

    .line 914
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 915
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->clearOverlayRefs()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2400()V

    .line 916
    return-void
.end method
