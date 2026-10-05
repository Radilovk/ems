.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$PrepareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrefetchPrepareCallback"
.end annotation


# instance fields
.field private final gen:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;->gen:I

    .line 1241
    return-void
.end method


# virtual methods
.method public onPrepareFailed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1271
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;->gen:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()I

    move-result v1

    if-eq v0, v1, :cond_a

    .line 1297
    :cond_9
    :goto_9
    return-void

    .line 1274
    :cond_a
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    move-result-object v0

    .line 1275
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1002(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1276
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1102(Z)Z

    .line 1277
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1202(Z)Z

    .line 1278
    if-eqz v0, :cond_1d

    .line 1279
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 1281
    :cond_1d
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1284
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1302(Z)Z

    .line 1285
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_58

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1286
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isCurrentTrack(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1287
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v0

    .line 1288
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v1

    .line 1289
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v2

    .line 1290
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1700()V

    .line 1291
    const/4 v3, 0x1

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1292
    new-instance v3, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v3}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1800(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    goto :goto_9

    .line 1295
    :cond_58
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1296
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    goto :goto_9
.end method

.method public onPrepared()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1245
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;->gen:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_10

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1267
    :cond_10
    :goto_10
    return-void

    .line 1248
    :cond_11
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z
    invoke-static {v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1102(Z)Z

    .line 1249
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1202(Z)Z

    .line 1250
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1300()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1251
    const-string v0, "prefetch"

    const-string v1, "ready"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1254
    :cond_25
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_35

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isCurrentTrack(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1255
    :cond_35
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1302(Z)Z

    .line 1256
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1257
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_10

    .line 1260
    :cond_3f
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v0

    .line 1261
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v1

    .line 1262
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v2

    .line 1263
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    move-result-object v3

    .line 1264
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1700()V

    .line 1265
    const-string v4, "prefetch"

    const-string v5, "handoff prepared"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1800(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    goto :goto_10
.end method
