.class final Lcom/isaigu/gymapp/ai/PulseAdvice$Log;
.super Ljava/lang/Object;
.source "PulseAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/PulseAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Log"
.end annotation


# instance fields
.field breakDays:D

.field count30:I

.field hours:D

.field hoursActive:D

.field last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

.field lastCut:Z

.field lastHard:Z

.field lastHrPct:I

.field lastPct:I

.field sessions:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hours:D

    .line 94
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    return-void
.end method


# virtual methods
.method adapting()Z
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method back()Z
    .registers 5

    .prologue
    .line 113
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_f

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->breakDays:D

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method progress()Z
    .registers 3

    .prologue
    .line 118
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_20

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->recovering()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->back()Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastCut:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHard:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method recovering()Z
    .registers 5

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
