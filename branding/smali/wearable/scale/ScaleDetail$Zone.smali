.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;
.super Ljava/lang/Object;
.source "ScaleDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Zone"
.end annotation


# instance fields
.field public fatKg:D

.field public fatPct:D

.field public fatStatus:I

.field public musHi:D

.field public musKg:D

.field public musLo:D

.field public musPct:D

.field public musStatus:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatPct:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musKg:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musPct:D

    .line 227
    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->fatStatus:I

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Zone;->musStatus:I

    return-void
.end method
