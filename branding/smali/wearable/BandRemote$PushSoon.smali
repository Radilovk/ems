.class final Lcom/isaigu/gymapp/wearable/BandRemote$PushSoon;
.super Ljava/lang/Object;
.source "BandRemote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/BandRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PushSoon"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 210
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/BandRemote;->pushQueued:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$002(Z)Z

    .line 212
    const/4 v0, 0x1

    :try_start_5
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->push(Z)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    .line 215
    goto :goto_f

    .line 213
    :catchall_9
    move-exception v0

    .line 214
    const-string v1, "BandRemote.pushSoon"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :goto_f
    return-void
.end method
