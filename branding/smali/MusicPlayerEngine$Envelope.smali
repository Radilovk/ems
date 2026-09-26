.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Envelope"
.end annotation


# instance fields
.field final length:I

.field final loudRms:[F

.field final peakRms:D

.field final rhythm:[F

.field final tone:[F

.field final toneMedianDb:D

.field final toneSpanDb:D


# direct methods
.method constructor <init>([F[F[FIDDD)V
    .registers 11

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    .line 64
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    .line 65
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    .line 66
    iput p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    .line 67
    iput-wide p5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->peakRms:D

    .line 68
    iput-wide p7, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneSpanDb:D

    .line 69
    iput-wide p9, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->toneMedianDb:D

    .line 70
    return-void
.end method
