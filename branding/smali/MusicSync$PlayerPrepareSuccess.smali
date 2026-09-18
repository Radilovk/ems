.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerPrepareSuccess"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;)V
    .registers 4

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->activity:Landroid/app/Activity;

    .line 568
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->uri:Landroid/net/Uri;

    .line 569
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    .line 570
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 574
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;->levels:[I

    if-nez v0, :cond_9

    goto :goto_19

    .line 579
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;->levels:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;

    iget-wide v3, v3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;->referencePeakRms:D

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->finishStartPlayer(Landroid/app/Activity;Landroid/net/Uri;[ID)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1100(Landroid/app/Activity;Landroid/net/Uri;[ID)V

    .line 580
    return-void

    .line 575
    :cond_19
    :goto_19
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()V

    .line 576
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 577
    return-void
.end method
