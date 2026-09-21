.class Lcom/isaigu/gymapp/train/utils/MusicSync$1;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 70
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_28

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_28

    .line 73
    :cond_b
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100()I

    move-result v0

    .line 74
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 75
    return-void

    .line 77
    :cond_16
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$202(I)I

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$302(J)J

    .line 79
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 80
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400()V

    .line 81
    return-void

    .line 71
    :cond_28
    :goto_28
    return-void
.end method
