.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SyncRunnable"
.end annotation


# instance fields
.field private final engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V
    .registers 2

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 214
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$SyncRunnable;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 219
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v1

    if-eqz v1, :cond_34

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_34

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->envelope:[I
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$200(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)[I

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_34

    .line 223
    :cond_15
    :try_start_15
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$100(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 224
    div-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->dispatchLevel(I)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_23

    .line 226
    goto :goto_24

    .line 225
    :catchall_23
    move-exception v1

    .line 227
    :goto_24
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->tracking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$000(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 228
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->access$300(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    :cond_33
    return-void

    .line 220
    :cond_34
    :goto_34
    return-void
.end method
