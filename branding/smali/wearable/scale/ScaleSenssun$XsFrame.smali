.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;
.super Ljava/lang/Object;
.source "ScaleSenssun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XsFrame"
.end annotation


# static fields
.field public static final LIVE:I = 0x1

.field public static final OTHER:I = 0x0

.field public static final RESULT:I = 0x2


# instance fields
.field public ackWanted:Z

.field public error:I

.field public finished:Z

.field public func:I

.field public kg:D

.field public kind:I

.field sn:I

.field public stable:Z

.field public time:J

.field public final z100:[D

.field public final z20:[D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->kg:D

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->nan5()[D

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    .line 332
    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->nan5()[D

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    return-void
.end method


# virtual methods
.method public hasImpedance()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 340
    move v1, v0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_10

    .line 341
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z20:[D

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_11

    .line 342
    const/4 v0, 0x0

    .line 345
    :cond_10
    return v0

    .line 340
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public single()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 350
    move v1, v0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_13

    .line 351
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$XsFrame;->z100:[D

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10

    .line 355
    :goto_f
    return v0

    .line 350
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 355
    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method
