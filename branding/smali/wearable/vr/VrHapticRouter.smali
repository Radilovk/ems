.class public final Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;
.super Ljava/lang/Object;
.source "VrHapticRouter.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;


# static fields
.field static final PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

.field static volatile dropped:I

.field static volatile passed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrHaptic(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)V
    .registers 12

    .prologue
    .line 17
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->passes(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 18
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->dropped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->dropped:I

    .line 23
    :goto_c
    return-void

    .line 21
    :cond_d
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->passed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->passed:I

    .line 22
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    iget v2, p1, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->hand:I

    iget v3, p1, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->amplitude:F

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->durationUs:J

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isMinDuration()Z

    move-result v6

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isAppend()Z

    move-result v7

    iget-wide v8, p1, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->eventTimeNs:J

    invoke-virtual/range {v1 .. v9}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->pulse(IFJZZJ)V

    goto :goto_c
.end method

.method public onVrLink(ZLjava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_d

    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->stop(I)V

    .line 38
    :goto_9
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->postLink(ZLjava/lang/String;)V

    .line 39
    return-void

    .line 35
    :cond_d
    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->passed:I

    .line 36
    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->dropped:I

    goto :goto_9
.end method

.method public onVrStop(IIJ)V
    .registers 6

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->stop(I)V

    .line 28
    return-void
.end method
