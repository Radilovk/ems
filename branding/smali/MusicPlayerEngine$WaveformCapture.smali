.class final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WaveformCapture"
.end annotation


# instance fields
.field private final engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;)V
    .registers 2

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    .line 436
    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4

    .line 445
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4

    .line 440
    iget-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$WaveformCapture;->engine:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;->onVisualizerWaveform([B)V

    .line 441
    return-void
.end method
