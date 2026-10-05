.class final Lcom/isaigu/gymapp/ai/AutoBeep$Release;
.super Ljava/lang/Object;
.source "AutoBeep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoBeep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Release"
.end annotation


# instance fields
.field private final track:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AutoBeep$Release;->track:Landroid/media/AudioTrack;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoBeep$Release;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_d

    .line 105
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoBeep$Release;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_b

    .line 108
    :goto_a
    return-void

    .line 106
    :catch_b
    move-exception v0

    goto :goto_a

    .line 102
    :catch_d
    move-exception v0

    goto :goto_5
.end method
