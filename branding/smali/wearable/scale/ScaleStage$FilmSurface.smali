.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilmSurface"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V
    .registers 2

    .prologue
    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 841
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .prologue
    .line 845
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->openFilm(Landroid/graphics/SurfaceTexture;)V

    .line 846
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .prologue
    .line 857
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->release()V

    .line 858
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .prologue
    .line 850
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    .line 851
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->fit(II)V

    .line 853
    :cond_1b
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .prologue
    .line 863
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$FilmSurface;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->frame()V

    .line 864
    return-void
.end method
