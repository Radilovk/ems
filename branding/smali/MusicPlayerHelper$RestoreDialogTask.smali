.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RestoreDialogTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->activity:Landroid/app/Activity;

    .line 507
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 512
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->activity:Landroid/app/Activity;

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->canShowOn(Landroid/app/Activity;)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-nez v0, :cond_13

    goto :goto_19

    .line 515
    :cond_13
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->activity:Landroid/app/Activity;

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->openDialog(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 516
    return-void

    .line 513
    :cond_19
    :goto_19
    return-void
.end method
