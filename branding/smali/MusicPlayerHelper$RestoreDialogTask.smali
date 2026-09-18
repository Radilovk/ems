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

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->activity:Landroid/app/Activity;

    .line 547
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 548
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 552
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 553
    return-void

    .line 555
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$RestoreDialogTask;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 556
    return-void
.end method
