.class public final Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;
.super Ljava/lang/Object;
.source "VrZoneRouter.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/vr/VrZoneSink;


# static fields
.field private static final FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

.field static final MASTOGO_GAP_NS:J = 0xee6b280L

.field static volatile taken:I


# instance fields
.field private lastMastogoNs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static focusAt(J)I
    .registers 4

    .prologue
    .line 47
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    invoke-virtual {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->at(J)I

    move-result v0

    return v0
.end method

.method static reset()V
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->clear()V

    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    .line 53
    return-void
.end method


# virtual methods
.method public onVrZoneHit(Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 24
    iget v0, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->taken(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 43
    :cond_9
    :goto_9
    return-void

    .line 27
    :cond_a
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->maxLevel()I

    move-result v0

    .line 28
    if-lez v0, :cond_9

    .line 31
    sget v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->taken:I

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 33
    iget v1, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrZoneMap;->channels(I[I)I

    move-result v1

    .line 34
    if-eqz v1, :cond_48

    .line 35
    const-wide/32 v2, 0x7270e00

    iget v4, p1, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->durationMs:I

    int-to-long v4, v4

    const-wide/32 v10, 0xf4240

    mul-long/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 36
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->FOCUS:Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;

    add-long v10, v8, v4

    invoke-virtual {v2, v1, v10, v11}, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->add(IJ)V

    .line 37
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    const/4 v2, 0x3

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v0, v3

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    move v7, v6

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->pulse(IFJZZJ)V

    .line 39
    :cond_48
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastMastogoNs:J

    sub-long v0, v8, v0

    const-wide/32 v2, 0xee6b280

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 40
    iput-wide v8, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->lastMastogoNs:J

    .line 41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;->vrHit()V

    goto :goto_9
.end method
