.class public Lcom/isaigu/gymapp/widget/video/JZMediaSystem;
.super Lcom/isaigu/gymapp/widget/video/JZMediaInterface;
.source "JZMediaSystem.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$3;

    invoke-direct {v1, p0, p2}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$3;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$2;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 196
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$5;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$6;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->currentDataSource:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 180
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$4;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$4;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 230
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iput p2, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoWidth:I

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iput p3, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoHeight:I

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$7;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem$7;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaSystem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 8

    .line 31
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 32
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->dataSourceObjects:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->dataSourceObjects:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 40
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 41
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 44
    const-class v0, Landroid/media/MediaPlayer;

    .line 45
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/media/MediaPlayer;>;"
    const-string v2, "setDataSource"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/util/Map;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 46
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->dataSourceObjects:[Ljava/lang/Object;

    array-length v4, v4

    if-le v4, v3, :cond_1

    .line 47
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->currentDataSource:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->dataSourceObjects:[Ljava/lang/Object;

    aget-object v3, v6, v3

    aput-object v3, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->currentDataSource:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x0

    aput-object v5, v3, v1

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/media/MediaPlayer;>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2
    .param p1, "time"    # J

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
