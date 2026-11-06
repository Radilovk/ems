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
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 973
    return-void
.end method

.method static level(Lcom/isaigu/gymapp/wearable/face/FaceProgram;Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;)F
    .registers 6

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_16

    .line 1028
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-nez v0, :cond_10

    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    :cond_10
    const v0, 0x3f4ccccd    # 0.8f

    .line 1030
    :goto_13
    return v0

    .line 1028
    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 1030
    :cond_16
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    goto :goto_13
.end method

.method static steady()Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 2

    .prologue
    .line 1034
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 1035
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    .line 1036
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    .line 1037
    return-object v0
.end method


# virtual methods
.method public fill(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;J)V
    .registers 16

    .prologue
    const/4 v3, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 977
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v6

    .line 978
    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    iput v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    .line 979
    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    .line 980
    iput-boolean v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    .line 981
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v7, :cond_7e

    move v0, v7

    :goto_1c
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->nogo:Z

    .line 982
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v7, :cond_80

    move v0, v7

    :goto_25
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->placing:Z

    .line 983
    iput-boolean v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    .line 984
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v7, v0, v8

    .line 985
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v7, v0, v7

    .line 986
    iget v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-ne v0, v10, :cond_82

    move v0, v7

    :goto_36
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->drain:Z

    .line 987
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    .line 988
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_84

    move v0, v7

    :goto_47
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pairs2:Z

    .line 989
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v3, :cond_55

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-ne v0, v10, :cond_86

    :cond_55
    move v0, v7

    :goto_56
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    .line 990
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a4

    .line 992
    :cond_65
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_88

    invoke-static {}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->steady()Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 993
    :goto_6d
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9d

    move v0, v9

    .line 994
    :goto_75
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v0, v1, v8

    .line 995
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v0, v1, v7

    .line 1023
    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    move v0, v8

    .line 981
    goto :goto_1c

    :cond_80
    move v0, v8

    .line 982
    goto :goto_25

    :cond_82
    move v0, v8

    .line 986
    goto :goto_36

    :cond_84
    move v0, v8

    .line 988
    goto :goto_47

    :cond_86
    move v0, v8

    .line 989
    goto :goto_56

    .line 992
    :cond_88
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget v2, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    iget v3, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    const/16 v4, 0x1f4

    const/16 v5, 0x1f4

    iget v6, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    goto :goto_6d

    .line 993
    :cond_9d
    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    goto :goto_75

    .line 998
    :cond_a4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v0, v7, :cond_7d

    .line 1001
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 1002
    :goto_bc
    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    if-lez v1, :cond_c4

    .line 1003
    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    iput v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    .line 1005
    :cond_c4
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v2

    .line 1006
    iget v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-eqz v1, :cond_d4

    iget v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->target:I

    if-ne v1, v3, :cond_131

    :cond_d4
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v1

    if-ne v1, v7, :cond_131

    .line 1007
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v8, v1, v8

    .line 1008
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v8, v1, v7

    .line 1009
    :goto_e6
    if-ge v8, v2, :cond_7d

    .line 1010
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->sideOf(I)I

    move-result v3

    .line 1011
    if-ltz v3, :cond_124

    .line 1013
    iget v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    if-ne v1, v10, :cond_12d

    if-ne v8, v7, :cond_12d

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v1

    if-eqz v1, :cond_12d

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    const-wide/16 v4, 0x5dc

    sub-long v4, p2, v4

    invoke-interface {v1, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v1

    .line 1014
    :goto_10e
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aput-boolean v7, v4, v3

    .line 1015
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v5, v5, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v5, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v5

    if-lez v5, :cond_12f

    invoke-static {v6, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->level(Lcom/isaigu/gymapp/wearable/face/FaceProgram;Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;)F

    move-result v1

    :goto_122
    aput v1, v4, v3

    .line 1009
    :cond_124
    add-int/lit8 v8, v8, 0x1

    goto :goto_e6

    .line 1001
    :cond_127
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_bc

    :cond_12d
    move-object v1, v0

    .line 1013
    goto :goto_10e

    :cond_12f
    move v1, v9

    .line 1015
    goto :goto_122

    .line 1020
    :cond_131
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v8}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->strength(I)I

    move-result v1

    if-lez v1, :cond_13f

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->level(Lcom/isaigu/gymapp/wearable/face/FaceProgram;Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;)F

    move-result v9

    .line 1021
    :cond_13f
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v9, v0, v8

    .line 1022
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aput v9, v0, v7

    goto/16 :goto_7d
.end method
