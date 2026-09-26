.class public final Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
.super Ljava/lang/Object;
.source "MusicAutoTune.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicAutoTune;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final floor:I

.field public final hzBass:I

.field public final hzTreble:I

.field public final rhythmMix:I

.field public final sensitivity:I

.field public final smoothness:I


# direct methods
.method constructor <init>(IIIIII)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->sensitivity:I

    .line 41
    iput p2, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->rhythmMix:I

    .line 42
    iput p3, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->floor:I

    .line 43
    iput p4, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->smoothness:I

    .line 44
    iput p5, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzBass:I

    .line 45
    iput p6, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;->hzTreble:I

    .line 46
    return-void
.end method
