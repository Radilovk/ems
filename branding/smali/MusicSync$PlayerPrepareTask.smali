.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;
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
    name = "PlayerPrepareTask"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 3

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;->activity:Landroid/app/Activity;

    .line 484
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;->uri:Landroid/net/Uri;

    .line 485
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)[I

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 492
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;

    iget-object v3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareTask;->uri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareSuccess;-><init>(Landroid/app/Activity;Landroid/net/Uri;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 496
    goto :goto_2c

    .line 493
    :catchall_1c
    move-exception v0

    .line 494
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 495
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;

    invoke-direct {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    :goto_2c
    return-void
.end method
