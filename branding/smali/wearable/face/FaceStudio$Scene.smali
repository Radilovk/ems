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
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1093
    return-void
.end method

.method static level(Lcom/isaigu/gymapp/wearable/face/FaceProgram;Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;)F
    .registers 6

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_16

    .line 1158
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-nez v0, :cond_10

    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    :cond_10
    const v0, 0x3f4ccccd    # 0.8f

    .line 1160
    :goto_13
    return v0

    .line 1158
    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 1160
    :cond_16
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    goto :goto_13
.end method

.method static steady()Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 2

    .prologue
    .line 1164
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 1165
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    .line 1166
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    .line 1167
    return-object v0
.end method


# virtual methods
.method public fill(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;J)V
    .registers 14

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->prog()Lcom/isaigu/gymapp/wearable/face/FaceProgram;

    move-result-object v9

    .line 1098
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->kind()I

    move-result v0

    if-nez v0, :cond_a0

    const/4 v0, 0x1

    .line 1099
    :goto_11
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->clear()V

    .line 1100
    iget v1, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    iput v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    .line 1101
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    .line 1102
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a3

    const/4 v1, 0x1

    :goto_23
    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->nogo:Z

    .line 1103
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a6

    const/4 v1, 0x1

    :goto_2d
    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->placing:Z

    .line 1104
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    .line 1105
    iget v1, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a8

    const/4 v1, 0x1

    :goto_38
    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->drain:Z

    .line 1106
    iget-boolean v1, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    .line 1107
    iput-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->small:Z

    .line 1108
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4e

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_aa

    :cond_4e
    const/4 v1, 0x1

    :goto_4f
    iput-boolean v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    .line 1110
    if-eqz v0, :cond_ac

    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->xemsSites()[I

    move-result-object v1

    move-object v8, v1

    .line 1111
    :goto_58
    if-eqz v0, :cond_b2

    array-length v1, v8

    .line 1112
    :goto_5b
    const/4 v2, 0x0

    :goto_5c
    array-length v3, v8

    if-ge v2, v3, :cond_c4

    .line 1113
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    aget v4, v8, v2

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 1114
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->label:[Ljava/lang/String;

    aget v5, v8, v2

    if-eqz v0, :cond_bb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "F"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v6, v8, v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_83
    aput-object v3, v4, v5

    .line 1115
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->dim:[Z

    aget v5, v8, v2

    if-nez v0, :cond_c2

    if-lt v2, v1, :cond_c2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_c2

    const/4 v3, 0x1

    :goto_9b
    aput-boolean v3, v4, v5

    .line 1112
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1098
    :cond_a0
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 1102
    :cond_a3
    const/4 v1, 0x0

    goto/16 :goto_23

    .line 1103
    :cond_a6
    const/4 v1, 0x0

    goto :goto_2d

    .line 1105
    :cond_a8
    const/4 v1, 0x0

    goto :goto_38

    .line 1108
    :cond_aa
    const/4 v1, 0x0

    goto :goto_4f

    .line 1110
    :cond_ac
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->bluetensSites()[I

    move-result-object v1

    move-object v8, v1

    goto :goto_58

    .line 1111
    :cond_b2
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v1

    goto :goto_5b

    .line 1114
    :cond_bb
    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_83

    .line 1115
    :cond_c2
    const/4 v3, 0x0

    goto :goto_9b

    .line 1117
    :cond_c4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_158

    .line 1119
    :cond_d1
    const/4 v0, 0x0

    move v7, v0

    :goto_d3
    array-length v0, v8

    if-ge v7, v0, :cond_15f

    .line 1121
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e8

    .line 1122
    const/4 v0, 0x0

    .line 1135
    :goto_de
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v8, v7

    aput v0, v1, v2

    .line 1119
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d3

    .line 1123
    :cond_e8
    iget-boolean v0, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v0, :cond_f0

    .line 1124
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_de

    .line 1125
    :cond_f0
    iget v0, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11a

    .line 1127
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v2, v0

    aget v0, v8, v7

    const/16 v1, 0x9

    if-ne v0, v1, :cond_118

    const/16 v0, 0xbb8

    :goto_103
    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 1128
    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0x1f4

    const/16 v5, 0x1f4

    iget v6, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    .line 1129
    goto :goto_de

    .line 1127
    :cond_118
    const/4 v0, 0x0

    goto :goto_103

    .line 1129
    :cond_11a
    iget v0, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13d

    .line 1131
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    int-to-long v2, v7

    const-wide/16 v4, 0x258

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    iget v6, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    goto :goto_de

    .line 1133
    :cond_13d
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget v2, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->onS:I

    iget v3, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->offS:I

    const/16 v4, 0x1f4

    const/16 v5, 0x1f4

    iget v6, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->hz:I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    goto :goto_de

    .line 1139
    :cond_158
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_160

    .line 1153
    :cond_15f
    return-void

    .line 1142
    :cond_160
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_1b2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    move-result-object v0

    .line 1143
    :goto_172
    iget v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    if-lez v1, :cond_17a

    .line 1144
    iget v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    .line 1146
    :cond_17a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->active()Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 1149
    const/4 v0, 0x0

    :goto_185
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->channels()I

    move-result v1

    if-ge v0, v1, :cond_15f

    .line 1150
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v1, v0, p2, p3}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->level(IJ)F

    move-result v1

    .line 1151
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Scene;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v3, v3, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v3, v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->siteOf(I)I

    move-result v3

    iget-boolean v4, v9, Lcom/isaigu/gymapp/wearable/face/FaceProgram;->sensory:Z

    if-eqz v4, :cond_1ad

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1b8

    const v1, 0x3f4ccccd    # 0.8f

    :cond_1ad
    :goto_1ad
    aput v1, v2, v3

    .line 1149
    add-int/lit8 v0, v0, 0x1

    goto :goto_185

    .line 1142
    :cond_1b2
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    goto :goto_172

    .line 1151
    :cond_1b8
    const/4 v1, 0x0

    goto :goto_1ad
.end method
