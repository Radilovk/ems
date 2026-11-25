.class final Lcom/isaigu/gymapp/ai/Earcon$Release;
.super Ljava/lang/Object;
.source "Earcon.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/Earcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Release"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .registers 3

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 99
    :goto_3
    return-void

    .line 97
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .registers 2

    .prologue
    .line 103
    return-void
.end method
