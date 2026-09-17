.class Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;
.super Ljava/lang/Object;
.source "MusicSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_no_activity

    const/16 v2, 0x14

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getMinAmount()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    if-nez v1, :cond_read_min

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v2

    :cond_read_min
    const/16 v3, 0x50

    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->getMaxAmount()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    if-nez v1, :cond_read_max

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v3

    :cond_read_max
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_all

    return-void

    :catch_all
    const v0, 0x7f0d010e

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void

    :cond_no_activity
    const v0, 0x7f0d010b

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void
.end method
