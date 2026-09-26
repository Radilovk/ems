.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;
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
    name = "PrefetchTask"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final gen:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 4

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->context:Landroid/content/Context;

    .line 1186
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->uri:Landroid/net/Uri;

    .line 1187
    iput p3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->gen:I

    .line 1188
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1193
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->buildEnvelope(Landroid/content/Context;Landroid/net/Uri;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v0

    .line 1194
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 1195
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;

    iget v3, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->gen:I

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;-><init>(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 1199
    goto :goto_2c

    .line 1196
    :catchall_1a
    move-exception v0

    .line 1197
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->ensureHandler()V

    .line 1198
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;

    iget v2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchTask;->gen:I

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchFailed;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1200
    :goto_2c
    return-void
.end method
