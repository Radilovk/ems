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
    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 864
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 868
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    .line 869
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 870
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    if-eqz v0, :cond_22

    .line 871
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    .line 872
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->showFilm(Z)V

    .line 874
    :cond_22
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .prologue
    .line 878
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 879
    return-void
.end method
