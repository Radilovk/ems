.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
.super Ljava/lang/Object;
.source "ScaleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reading"
.end annotation


# instance fields
.field public result:Z

.field public scaleFatPct:D

.field public scaleTime:J

.field public stable:Z

.field public stored:Z

.field public weightKg:D

.field public final z100:[D

.field public final z20:[D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 50
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->nan5()[D

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->nan5()[D

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    return-void
.end method

.method static nan5()[D
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
        0x7ff8000000000000L    # Double.NaN
    .end array-data
.end method


# virtual methods
.method public hasTrunk()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method
