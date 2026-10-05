.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Readiness"
.end annotation


# instance fields
.field public base:I

.field public dry:D

.field public factor:D

.field public sameTime:Z

.field public score:I

.field public final swell:[D

.field public water:Z

.field public weight:D

.field public worst:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->factor:D

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->swell:[D

    .line 67
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->dry:D

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->worst:I

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->sameTime:Z

    .line 75
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->weight:D

    return-void

    .line 65
    :array_20
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
    .end array-data
.end method


# virtual methods
.method public known()Z
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->base:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
