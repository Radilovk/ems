.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;
.super Ljava/lang/Object;
.source "ScaleDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Row"
.end annotation


# instance fields
.field public final bg:Ljava/lang/String;

.field public final decimals:I

.field public final en:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final status:I

.field public textBg:Ljava/lang/String;

.field public textEn:Ljava/lang/String;

.field public final unit:Ljava/lang/String;

.field public final value:D


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;II)V
    .registers 9

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->key:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->bg:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->en:Ljava/lang/String;

    .line 67
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->value:D

    .line 68
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->unit:Ljava/lang/String;

    .line 69
    iput p7, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->decimals:I

    .line 70
    iput p8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->status:I

    .line 71
    return-void
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .registers 5

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->textBg:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->textBg:Ljava/lang/String;

    .line 77
    :goto_8
    return-object v0

    :cond_9
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "\u2014"

    goto :goto_8

    :cond_14
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->decimals:I

    if-nez v0, :cond_23

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->value:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 78
    :cond_23
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Row;->value:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
