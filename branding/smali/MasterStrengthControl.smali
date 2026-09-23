.class public final Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;
.super Ljava/lang/Object;
.source "MasterStrengthControl.java"


# static fields
.field private static ceiling:I

.field private static floorPercent:I

.field private static lastApplied:I

.field private static maLabelRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static seekBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/isaigu/gymapp/widget/CircleSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private static syncActive:Z

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static adjustCeiling(I)I
    .registers 2

    .prologue
    .line 85
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    add-int/2addr v0, p0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setCeiling(I)V

    .line 86
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    return v0
.end method

.method public static bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_18

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_8
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    .line 31
    if-eqz p1, :cond_11

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_11
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    .line 32
    if-eqz p2, :cond_17

    .line 33
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 35
    :cond_17
    return-void

    :cond_18
    move-object v0, v1

    .line 30
    goto :goto_8
.end method

.method public static captureCeilingFromSlider()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x64

    .line 51
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 52
    if-nez v1, :cond_c

    .line 53
    sput v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 54
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 72
    :goto_b
    return v0

    .line 57
    :cond_c
    :try_start_c
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 58
    if-nez v1, :cond_19

    .line 59
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 60
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    goto :goto_b

    .line 62
    :cond_19
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 63
    if-nez v1, :cond_26

    .line 64
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 65
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    goto :goto_b

    .line 67
    :cond_26
    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v1

    .line 68
    if-ge v1, v0, :cond_33

    :goto_2e
    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 69
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_32} :catch_35

    goto :goto_b

    :cond_33
    move v0, v1

    .line 68
    goto :goto_2e

    .line 70
    :catch_35
    move-exception v0

    .line 71
    sput v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 72
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    goto :goto_b
.end method

.method private static clamp(I)I
    .registers 2

    .prologue
    const/16 v0, 0x64

    .line 278
    if-gez p0, :cond_6

    .line 279
    const/4 p0, 0x0

    .line 284
    :cond_5
    :goto_5
    return p0

    .line 281
    :cond_6
    if-le p0, v0, :cond_5

    move p0, v0

    .line 282
    goto :goto_5
.end method

.method public static ensureMaMode()V
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 198
    return-void
.end method

.method public static ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 201
    if-nez p0, :cond_3

    .line 217
    :cond_2
    :goto_2
    return-void

    .line 205
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_2

    .line 211
    :cond_13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_2

    .line 215
    :catch_24
    move-exception v0

    goto :goto_2
.end method

.method public static getCeiling()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    return v0
.end method

.method public static getFloorPercent()I
    .registers 1

    .prologue
    .line 98
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    return v0
.end method

.method public static getFloorStrength()I
    .registers 2

    .prologue
    .line 107
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    sget v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getLastApplied()I
    .registers 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    goto :goto_5
.end method

.method public static getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method public static isSyncActive()Z
    .registers 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    return v0
.end method

.method public static refreshSyncLabel()V
    .registers 3

    .prologue
    .line 268
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v0, :cond_5

    .line 275
    :cond_4
    :goto_4
    return-void

    .line 271
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    :goto_11
    if-eqz v0, :cond_4

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 271
    :cond_3a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static releaseMaModeForActivePause()V
    .registers 3

    .prologue
    .line 221
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 222
    if-nez v0, :cond_5

    .line 234
    :cond_4
    :goto_4
    return-void

    .line 226
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_4

    .line 230
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 232
    :catch_1a
    move-exception v0

    goto :goto_4
.end method

.method public static resetApplied()V
    .registers 1

    .prologue
    .line 237
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 238
    return-void
.end method

.method public static scaleFromSound(I)I
    .registers 4

    .prologue
    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_7
    return v0

    .line 119
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorStrength()I

    move-result v1

    .line 120
    sget v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    sub-int/2addr v2, v1

    mul-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    goto :goto_7
.end method

.method public static sendImpulseLevel(I)V
    .registers 5

    .prologue
    .line 244
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 245
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 246
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_18

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 264
    :cond_18
    :goto_18
    return-void

    .line 249
    :cond_19
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_18

    .line 253
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_18

    .line 257
    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 259
    :try_start_27
    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 260
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2f

    .line 262
    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_18

    :catchall_2f
    move-exception v0

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 263
    throw v0
.end method

.method public static setCeiling(I)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 78
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    if-ge v0, v1, :cond_d

    .line 79
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 81
    :cond_d
    return-void
.end method

.method public static setFloorPercent(I)V
    .registers 3

    .prologue
    .line 102
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    .line 103
    return-void
.end method

.method public static setMasterStrength(I)V
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 129
    return-void
.end method

.method public static setMasterStrength(IZ)V
    .registers 3

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZ)V

    .line 134
    return-void
.end method

.method public static setMasterStrength(IZZ)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v2

    .line 142
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-ne v2, v0, :cond_a

    .line 180
    :cond_9
    :goto_9
    return-void

    .line 145
    :cond_a
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 146
    if-eqz v3, :cond_9

    .line 149
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_9

    .line 158
    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 159
    sput v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 161
    if-eqz p1, :cond_69

    .line 162
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 163
    :goto_2c
    if-eqz v0, :cond_35

    .line 164
    mul-int/lit8 v4, v2, 0x4b

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 167
    :cond_35
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_81

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    :goto_41
    if-eqz v0, :cond_69

    .line 169
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-eqz v1, :cond_83

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_69
    :goto_69
    if-eqz p2, :cond_9

    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    goto :goto_9

    :cond_7f
    move-object v0, v1

    .line 162
    goto :goto_2c

    :cond_81
    move-object v0, v1

    .line 167
    goto :goto_41

    .line 172
    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_69
.end method

.method public static setSyncActive(Z)V
    .registers 1

    .prologue
    .line 90
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    .line 91
    return-void
.end method

.method public static setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 39
    return-void
.end method

.method private static shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 183
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v2, :cond_8

    move v0, v1

    .line 189
    :cond_7
    :goto_7
    return v0

    .line 186
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTrainingGateOpen()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 189
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_7

    :cond_18
    move v0, v1

    goto :goto_7
.end method
