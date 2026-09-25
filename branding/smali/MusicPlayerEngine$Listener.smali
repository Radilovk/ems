.class public interface abstract Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError()V
.end method

.method public abstract onPlaybackEnded()V
.end method

.method public abstract onTone(I)V
.end method

.method public abstract onWaveformLevel(I)V
.end method
