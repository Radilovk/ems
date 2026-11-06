.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/face/FaceView$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Scene"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 888
    return-void
.end method


# virtual methods
.method public fill(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;J)V
    .registers 16

    .prologue
    const/16 v4, 0x1f4

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 892
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v5

    .line 893
    iget v0, v5, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    iput v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    .line 894
    iget v0, v5, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    .line 895
    iput-boolean v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    .line 896
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v7, :cond_5f

    move v0, v7

    :goto_1d
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->nogo:Z

    .line 897
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v7, :cond_61

    move v0, v7

    :goto_26
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->placing:Z

    .line 898
    iput-boolean v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    .line 899
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v7, v0, v8

    .line 900
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v7, v0, v7

    .line 901
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v10, :cond_6a

    .line 903
    :cond_3e
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget v2, v5, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    iget v3, v5, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    iget v6, v5, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v1, v10, :cond_63

    move v0, v9

    .line 905
    :goto_56
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v0, v1, v8

    .line 906
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v0, v1, v7

    .line 932
    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v0, v8

    .line 896
    goto :goto_1d

    :cond_61
    move v0, v8

    .line 897
    goto :goto_26

    .line 904
    :cond_63
    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    goto :goto_56

    .line 909
    :cond_6a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v7, :cond_5e

    .line 912
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 913
    :goto_82
    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    if-lez v1, :cond_8a

    .line 914
    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    iput v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    .line 916
    :cond_8a
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    .line 917
    iget v1, v5, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-nez v1, :cond_d3

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v1

    if-ne v1, v7, :cond_d3

    .line 918
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v8, v1, v8

    .line 919
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v8, v1, v7

    .line 920
    :goto_a8
    if-ge v8, v2, :cond_5e

    .line 921
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->sideOf(I)I

    move-result v3

    .line 922
    if-ltz v3, :cond_c8

    .line 923
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v7, v1, v3

    .line 924
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v1

    if-lez v1, :cond_d1

    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    :goto_c6
    aput v1, v4, v3

    .line 920
    :cond_c8
    add-int/lit8 v8, v8, 0x1

    goto :goto_a8

    .line 912
    :cond_cb
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_82

    :cond_d1
    move v1, v9

    .line 924
    goto :goto_c6

    .line 929
    :cond_d3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v1

    if-lez v1, :cond_df

    iget v9, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    .line 930
    :cond_df
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v9, v0, v8

    .line 931
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v9, v0, v7

    goto/16 :goto_5e
.end method
