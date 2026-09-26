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

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;->gen:I

    .line 1239
    return-void
.end method


# virtual methods
.method public onPrepareFailed()V
    .registers 6

    .line 1269
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;->gen:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()I

    move-result v1

    if-eq v0, v1, :cond_9

    .line 1270
    return-void

    .line 1272
    :cond_9
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    move-result-object v0

    .line 1273
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1002(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 1274
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1102(Z)Z

    .line 1275
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1202(Z)Z

    .line 1276
    if-eqz v0, :cond_1d

    .line 1277
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->release()V

    .line 1279
    :cond_1d
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1300()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1280
    return-void

    .line 1282
    :cond_24
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1302(Z)Z

    .line 1283
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_59

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1284
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isCurrentTrack(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1285
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v0

    .line 1286
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v2

    .line 1287
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v3

    .line 1288
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1700()V

    .line 1289
    const/4 v4, 0x1

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1290
    new-instance v4, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-direct {v4}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;-><init>()V

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    invoke-static {v0, v2, v3, v4, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1800(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    .line 1291
    return-void

    .line 1293
    :cond_59
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1294
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1295
    return-void
.end method

.method public onPrepared()V
    .registers 8

    .line 1243
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchPrepareCallback;->gen:I

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchGen:I
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()I

    move-result v1

    if-ne v0, v1, :cond_5c

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_5c

    .line 1246
    :cond_f
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPrepared:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1102(Z)Z

    .line 1247
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPlayerPending:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1202(Z)Z

    .line 1248
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1300()Z

    move-result v2

    const-string v3, "prefetch"

    if-nez v2, :cond_25

    .line 1249
    const-string v0, "ready"

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    return-void

    .line 1252
    :cond_25
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_52

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->isCurrentTrack(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_52

    .line 1258
    :cond_36
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1400()Landroid/app/Activity;

    move-result-object v1

    .line 1259
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1500()Landroid/net/Uri;

    move-result-object v2

    .line 1260
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEnvelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1600()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    move-result-object v4

    .line 1261
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchEngine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    move-result-object v5

    .line 1262
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->detachPrefetchOwned()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1700()V

    .line 1263
    const-string v6, "handoff prepared"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->beginPlayback(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V
    invoke-static {v1, v2, v4, v5, v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1800(Landroid/app/Activity;Landroid/net/Uri;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;Z)V

    .line 1265
    return-void

    .line 1253
    :cond_52
    :goto_52
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->prefetchPromote:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1302(Z)Z

    .line 1254
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerPreparing:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$502(Z)Z

    .line 1255
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1256
    return-void

    .line 1244
    :cond_5c
    :goto_5c
    return-void
.end method
