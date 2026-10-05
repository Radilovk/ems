.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation


# instance fields
.field public ageFromFat:D

.field public ageFromHeart:D

.field public ageFromMuscle:D

.field public almi:D

.field public fatCls:I

.field public ffmi:D

.field public fmi:D

.field public legFatShare:D

.field public muscleCls:I

.field public physicalAge:D

.field public restHr:D

.field public smi:D

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->smi:D

    .line 393
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->almi:D

    .line 395
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->muscleCls:I

    .line 397
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fatCls:I

    .line 398
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    .line 399
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    .line 400
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromMuscle:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromFat:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ageFromHeart:D

    .line 402
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->restHr:D

    .line 404
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->legFatShare:D

    return-void
.end method


# virtual methods
.method public known()Z
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
