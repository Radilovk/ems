.class public final Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;
.super Ljava/lang/Object;
.source "VrHapticRouter.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/vr/VrHapticSink;


# static fields
.field static final PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrHaptic(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)V
    .registers 12

    .prologue
    .line 13
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

    .line 14
    return-void
.end method

.method public onVrLink(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 23
    if-nez p1, :cond_8

    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->stop(I)V

    .line 26
    :cond_8
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->postLink(ZLjava/lang/String;)V

    .line 27
    return-void
.end method

.method public onVrStop(IIJ)V
    .registers 6

    .prologue
    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHapticRouter;->PULSES:Lcom/isaigu/gymapp/wearable/vr/VrPulses;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->stop(I)V

    .line 19
    return-void
.end method
