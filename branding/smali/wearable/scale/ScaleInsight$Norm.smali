.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;
.super Ljava/lang/Object;
.source "ScaleInsight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Norm"
.end annotation


# instance fields
.field public final colors:[I

.field public decimals:I

.field public final edges:[D

.field public final names:[Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public unit:Ljava/lang/String;

.field public value:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const/4 v0, 0x6

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    .line 459
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->colors:[I

    .line 460
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->names:[Ljava/lang/String;

    .line 461
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->unit:Ljava/lang/String;

    .line 463
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->decimals:I

    .line 465
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sector()I
    .registers 7

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 469
    const/4 v0, -0x1

    .line 476
    :goto_9
    return v0

    .line 471
    :cond_a
    const/4 v0, 0x1

    :goto_b
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1e

    .line 472
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->value:D

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v4, v1, v0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1b

    .line 473
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 471
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 476
    :cond_1e
    const/4 v0, 0x4

    goto :goto_9
.end method
