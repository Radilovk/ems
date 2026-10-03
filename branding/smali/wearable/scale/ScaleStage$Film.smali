.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 873
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "film error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->log(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 877
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmReady:Z

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "film ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->log(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 880
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    if-eqz v0, :cond_4a

    .line 881
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->filmOn:Z

    .line 882
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->showFilm(Z)V

    .line 884
    :cond_4a
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .prologue
    .line 888
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Film;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 889
    return-void
.end method
