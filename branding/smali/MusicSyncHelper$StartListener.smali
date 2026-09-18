.class final Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;
.super Ljava/lang/Object;
.source "MusicSyncHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StartListener"
.end annotation


# instance fields
.field private final dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)V
    .registers 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 208
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 214
    if-nez p1, :cond_f

    .line 215
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 216
    return-void

    .line 218
    :cond_f
    const/16 v0, 0x14

    .line 219
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$000()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 220
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$000()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0

    .line 222
    :cond_1f
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # invokes: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveTargetMac(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/lang/String;
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$100(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetMacAddress(Ljava/lang/String;)V

    .line 223
    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 226
    goto :goto_35

    .line 224
    :catchall_2e
    move-exception p1

    .line 225
    const p1, 0x7f0d010e

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 227
    :goto_35
    return-void
.end method
