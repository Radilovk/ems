.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Film"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V
    .registers 2

    .prologue
    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 838
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 842
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    .line 843
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 844
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 845
    :cond_20
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->showFilm(Z)V

    .line 847
    :cond_25
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .prologue
    .line 851
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 852
    return-void
.end method
