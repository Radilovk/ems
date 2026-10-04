.class final Lcom/isaigu/gymapp/ai/AutoSession$Row;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Row"
.end annotation


# instance fields
.field block:Ljava/lang/String;

.field cal:I

.field input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

.field item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field lastStrength:I

.field name:Ljava/lang/String;

.field plan:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

.field raiseBudget:D

.field user:D

.field userId:J

.field writtenStrength:I

.field writtenZones:[I

.field final zoneOffset:[I

.field final zoneRatio:[I


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    .line 50
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 51
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    .line 53
    const/16 v0, 0x64

    # invokes: Lcom/isaigu/gymapp/ai/AutoSession;->full(II)[I
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoSession;->access$000(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneRatio:[I

    .line 54
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 55
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 57
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    return-void
.end method
