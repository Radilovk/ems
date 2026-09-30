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

.field userMin:D

.field writtenStrength:I

.field writtenZones:[I

.field final zoneOffset:[I


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->name:Ljava/lang/String;

    .line 50
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->user:D

    .line 52
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->userMin:D

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->zoneOffset:[I

    .line 54
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->lastStrength:I

    .line 55
    iput v1, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->writtenStrength:I

    .line 57
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoSession$Row;->raiseBudget:D

    return-void
.end method
