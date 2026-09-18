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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 61
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 62
    return-void

    .line 64
    :cond_5
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->pendingApplied:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000()I

    move-result v0

    .line 65
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 66
    return-void

    .line 68
    :cond_10
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastPushedApplied:I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$102(I)I

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->lastBleMs:J
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$202(J)J

    .line 70
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 71
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->maybeUpdateUi()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400()V

    .line 72
    return-void
.end method
