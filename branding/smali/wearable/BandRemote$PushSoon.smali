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
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->access$002(Z)Z

    .line 207
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandRemote;->push(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "BandRemote.pushSoon"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
