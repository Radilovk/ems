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

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 201
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 207
    if-nez p1, :cond_f

    .line 208
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 209
    return-void

    .line 211
    :cond_f
    const/16 v0, 0x14

    .line 212
    const/16 v1, 0x50

    .line 213
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$000()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 214
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$000()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0

    .line 216
    :cond_21
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$100()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 217
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$100()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v1

    .line 219
    :cond_2f
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    # invokes: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveTargetMac(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/lang/String;
    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$200(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setTargetMacAddress(Ljava/lang/String;)V

    .line 220
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    .line 223
    goto :goto_43

    .line 221
    :catchall_3c
    move-exception p1

    .line 222
    const p1, 0x7f0d010e

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 224
    :goto_43
    return-void
.end method
