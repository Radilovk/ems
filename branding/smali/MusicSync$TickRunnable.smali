.class final Lcom/isaigu/gymapp/train/utils/MusicSync$TickRunnable;
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
    name = "TickRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 276
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-nez v0, :cond_5

    .line 277
    return-void

    .line 279
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->computeStrength()I

    move-result v0

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->applyStrength(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$000(I)V

    .line 280
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->scheduleTick()V

    .line 281
    return-void
.end method
