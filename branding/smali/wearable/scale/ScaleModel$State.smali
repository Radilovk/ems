.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;
.super Ljava/lang/Object;
.source "ScaleModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field public lean:D

.field public t:J

.field public var:D

.field public w:D


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->var:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->w:D

    return-void
.end method


# virtual methods
.method public on()Z
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;->lean:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
