.class final Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;
.super Ljava/lang/Object;
.source "SoftRamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/model/SoftRamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slot"
.end annotation


# instance fields
.field beganAt:J

.field busySince:J

.field fresh:Z

.field gen:I

.field held:Z

.field known:Z

.field lastSent:I

.field lastTick:J

.field lenMs:J

.field on:Z

.field rampAt:J

.field rampMs:I

.field ramping:Z

.field rising:Z

.field stalled:Z

.field ticker:Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;

.field upAllowed:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    return-void
.end method
