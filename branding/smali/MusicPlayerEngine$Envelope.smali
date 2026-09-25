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


# direct methods
.method constructor <init>([F[F[FID)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->loudRms:[F

    .line 57
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->rhythm:[F

    .line 58
    iput-object p3, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->tone:[F

    .line 59
    iput p4, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->length:I

    .line 60
    iput-wide p5, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;->peakRms:D

    .line 61
    return-void
.end method
