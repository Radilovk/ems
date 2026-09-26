.class public final Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;
.super Ljava/lang/Object;
.source "MusicAutoTune.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicAutoTune;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Curve"
.end annotation


# instance fields
.field private final windows:[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;


# direct methods
.method constructor <init>([Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->windows:[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    .line 55
    return-void
.end method


# virtual methods
.method public at(I)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->windows:[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    array-length v0, v0

    if-nez v0, :cond_c

    .line 63
    const-wide/16 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->neutral(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;
    invoke-static {v0, v1, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicAutoTune;->access$000(DD)Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    move-result-object p1

    return-object p1

    .line 65
    :cond_c
    div-int/lit16 p1, p1, 0xfa0

    .line 66
    if-gez p1, :cond_11

    .line 67
    const/4 p1, 0x0

    .line 69
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->windows:[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    array-length v1, v0

    if-lt p1, v1, :cond_19

    .line 70
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 72
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->windows:[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Curve;->windows:[Lcom/isaigu/gymapp/train/utils/MusicAutoTune$Snapshot;

    array-length v0, v0

    return v0
.end method
