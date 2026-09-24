.class public final Lcom/isaigu/gymapp/ai/AiModel$Phase;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase"
.end annotation


# instance fields
.field public a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

.field public b:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

.field public blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

.field public durationS:I

.field public exerciseClass:Ljava/lang/String;

.field public id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

.field public phiEnd:D

.field public phiStart:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$BlockMode;->CONTINUOUS:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->blockMode:Lcom/isaigu/gymapp/ai/AiModel$BlockMode;

    .line 163
    const-string v0, "FULL"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->exerciseClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public phiAt(D)D
    .registers 12

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 167
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiEnd:D

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->phiStart:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
