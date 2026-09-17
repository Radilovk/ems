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

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    .line 173
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicSyncHelper$StartListener;->dialog:Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivityForDialog(Lcom/isaigu/gymapp/dialog/EditUserProgramDataDialog;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 179
    if-nez p1, :cond_f

    .line 180
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 181
    return-void

    .line 183
    :cond_f
    const/16 v0, 0x14

    .line 184
    const/16 v1, 0x50

    .line 185
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$000()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 186
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->minAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$000()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v0

    .line 188
    :cond_21
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$100()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 189
    # getter for: Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->maxAmount:Lcom/isaigu/gymapp/widget/AmountView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->access$100()Lcom/isaigu/gymapp/widget/AmountView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/AmountView;->getAmount()I

    move-result v1

    .line 191
    :cond_2f
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    .line 192
    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->start(Landroid/app/Activity;II)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    .line 195
    goto :goto_3d

    .line 193
    :catchall_36
    move-exception p1

    .line 194
    const p1, 0x7f0d010e

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 196
    :goto_3d
    return-void
.end method
