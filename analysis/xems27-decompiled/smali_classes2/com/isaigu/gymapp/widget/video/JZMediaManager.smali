.class public Lcom/isaigu/gymapp/widget/video/JZMediaManager;
.super Ljava/lang/Object;
.source "JZMediaManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;
    }
.end annotation


# static fields
.field public static final HANDLER_PREPARE:I = 0x0

.field public static final HANDLER_RELEASE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "JiaoZiVideoPlayer"

.field public static jzMediaManager:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

.field public static savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public static surface:Landroid/view/Surface;

.field public static textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I

.field public jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

.field public mMediaHandler:Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;

.field public mMediaHandlerThread:Landroid/os/HandlerThread;

.field public mainThreadHandler:Landroid/os/Handler;

.field public positionInList:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->positionInList:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoWidth:I

    .line 29
    iput v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoHeight:I

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "JiaoZiVideoPlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;-><init>(Lcom/isaigu/gymapp/widget/video/JZMediaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mMediaHandler:Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mainThreadHandler:Landroid/os/Handler;

    .line 40
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaSystem;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    .line 42
    :cond_0
    return-void
.end method

.method public static getCurrentDataSource()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->currentDataSource:Ljava/lang/Object;

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentPosition()J
    .locals 2

    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 80
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDataSource()[Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->dataSourceObjects:[Ljava/lang/Object;

    return-object v0
.end method

.method public static getDuration()J
    .locals 2

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 87
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaManager:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaManager:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    .line 48
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaManager:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    return-object v0
.end method

.method public static isPlaying()Z
    .locals 1

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->isPlaying()Z

    move-result v0

    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static pause()V
    .locals 1

    .line 97
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->pause()V

    .line 100
    :cond_0
    return-void
.end method

.method public static seekTo(J)V
    .locals 1
    .param p0, "time"    # J

    .line 91
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->seekTo(J)V

    .line 94
    :cond_0
    return-void
.end method

.method public static setCurrentDataSource(Ljava/lang/Object;)V
    .locals 1
    .param p0, "currentDataSource"    # Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    iput-object p0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->currentDataSource:Ljava/lang/Object;

    .line 74
    :cond_0
    return-void
.end method

.method public static setDataSource([Ljava/lang/Object;)V
    .locals 1
    .param p0, "dataSourceObjects"    # [Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    iput-object p0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->dataSourceObjects:[Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method

.method public static start()V
    .locals 1

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->instance()Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->start()V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JiaoZiVideoPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 133
    sput-object p1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 134
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->prepare()V

    goto :goto_0

    .line 136
    :cond_0
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->textureView:Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/video/JZResizeTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 138
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 147
    sget-object v0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 143
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 153
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->releaseMediaPlayer()V

    .line 124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 125
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 126
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mMediaHandler:Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mMediaHandler:Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 117
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 118
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->mMediaHandler:Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method
