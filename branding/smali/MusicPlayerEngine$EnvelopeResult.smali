.class public final Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;
.super Ljava/lang/Object;
.source "MusicPlayerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnvelopeResult"
.end annotation


# instance fields
.field public final levels:[I

.field public final referencePeakRms:D


# direct methods
.method constructor <init>([ID)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;->levels:[I

    .line 35
    iput-wide p2, p0, Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$EnvelopeResult;->referencePeakRms:D

    .line 36
    return-void
.end method
