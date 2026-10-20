.class public final Lcom/isaigu/gymapp/ai/PulseAdvice$Input;
.super Ljava/lang/Object;
.source "PulseAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/PulseAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field public age:I

.field public fatObese:Z

.field public fatPct:D

.field public female:Z

.field public fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public heightCm:I

.field public hoursSinceLast:D

.field public final log:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/PulseAdvice$Past;",
            ">;"
        }
    .end annotation
.end field

.field public measured:Z

.field public muscleLow:Z

.field public nowMs:J

.field public readiness:D

.field public sensitive:Z

.field public sessions:I

.field public weightKg:D


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    .line 35
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->weightKg:D

    .line 40
    iput v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sessions:I

    .line 42
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    .line 44
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->log:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bmi()D
    .registers 7

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->weightKg:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->heightCm:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1e

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->weightKg:D

    iget v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->heightCm:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    :goto_1d
    return-wide v0

    :cond_1e
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1d
.end method
