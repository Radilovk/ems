.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayer$JZAutoFullscreenListener;
.super Ljava/lang/Object;
.source "JZVideoPlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JZAutoFullscreenListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1227
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1211
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 1212
    .local v0, "x":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 1213
    .local v1, "y":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v2, v3, v4

    .line 1215
    .local v2, "z":F
    const/high16 v3, -0x3e900000    # -15.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/high16 v3, -0x3ee00000    # -10.0f

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_1

    :cond_0
    const/high16 v3, 0x41700000    # 15.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 1217
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1218
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerManager;->getCurrentJzvd()Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->autoFullscreen(F)V

    .line 1220
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->lastAutoFullscreenTime:J

    .line 1223
    :cond_3
    return-void
.end method
