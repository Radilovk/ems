.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tilt"
.end annotation


# instance fields
.field first:Z

.field gx:F

.field gy:F

.field gz:F

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 3

    .prologue
    .line 2166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->first:Z

    .line 2167
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 2168
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 2186
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 2172
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->first:Z

    if-eqz v0, :cond_4f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2173
    :goto_9
    iput-boolean v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->first:Z

    .line 2174
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gx:F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gx:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gx:F

    .line 2175
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gy:F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gy:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gy:F

    .line 2176
    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gz:F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gz:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gz:F

    .line 2177
    iget v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gx:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gy:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gz:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gz:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2178
    cmpg-double v2, v0, v8

    if-gez v2, :cond_53

    .line 2182
    :goto_4e
    return-void

    .line 2172
    :cond_4f
    const v0, 0x3e19999a    # 0.15f

    goto :goto_9

    .line 2181
    :cond_53
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iget v3, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Tilt;->gz:F

    float-to-double v6, v3

    div-double v0, v6, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->onTilt(F)V

    goto :goto_4e
.end method
