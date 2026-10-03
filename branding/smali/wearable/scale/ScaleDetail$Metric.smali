.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;
.super Ljava/lang/Object;
.source "ScaleDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metric"
.end annotation


# instance fields
.field public final bg:Ljava/lang/String;

.field public decimals:I

.field public dir:I

.field public final en:Ljava/lang/String;

.field public final group:I

.field public final key:Ljava/lang/String;

.field public norm:Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

.field public status:I

.field public subBg:Ljava/lang/String;

.field public subEn:Ljava/lang/String;

.field public unit:Ljava/lang/String;

.field public value:D

.field public whatBg:Ljava/lang/String;

.field public whatEn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->unit:Ljava/lang/String;

    .line 318
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->decimals:I

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subBg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->subEn:Ljava/lang/String;

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->status:I

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatBg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->whatEn:Ljava/lang/String;

    .line 328
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->key:Ljava/lang/String;

    .line 329
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->group:I

    .line 330
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->bg:Ljava/lang/String;

    .line 331
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->en:Ljava/lang/String;

    .line 332
    return-void
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .registers 5

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 335
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "\u2014"

    :goto_c
    return-object v0

    :cond_d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->decimals:I

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 336
    :cond_1c
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Metric;->value:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
