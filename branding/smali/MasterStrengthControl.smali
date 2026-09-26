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
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static seekBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static adjustCeiling(I)I
    .registers 2

    .line 85
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    add-int/2addr v0, p0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setCeiling(I)V

    .line 86
    sget p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    return p0
.end method

.method public static bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 30
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    .line 31
    if-eqz p1, :cond_13

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_13
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    .line 32
    if-eqz p2, :cond_19

    .line 33
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 35
    :cond_19
    return-void
.end method

.method public static captureCeilingFromSlider()I
    .registers 3

    .line 51
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 52
    const/16 v1, 0x64

    if-nez v0, :cond_9

    .line 53
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 54
    return v1

    .line 57
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 58
    if-nez v0, :cond_12

    .line 59
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 60
    return v1

    .line 62
    :cond_12
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1b

    .line 64
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 65
    return v1

    .line 67
    :cond_1b
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 68
    const/4 v2, 0x1

    if-ge v0, v2, :cond_25

    const/4 v0, 0x1

    :cond_25
    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    .line 69
    return v0

    .line 70
    :catchall_28
    move-exception v0

    .line 71
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 72
    return v1
.end method

.method private static clamp(I)I
    .registers 2

    .line 337
    if-gez p0, :cond_4

    .line 338
    const/4 p0, 0x0

    return p0

    .line 340
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 341
    return v0

    .line 343
    :cond_9
    return p0
.end method

.method public static ensureMaMode()V
    .registers 1

    .line 256
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 257
    return-void
.end method

.method public static ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .line 260
    if-nez p0, :cond_3

    .line 261
    return-void

    .line 264
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_14

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_14

    .line 268
    return-void

    .line 270
    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    .line 275
    goto :goto_24

    .line 274
    :catchall_23
    move-exception p0

    .line 276
    :goto_24
    return-void
.end method

.method public static getCeiling()I
    .registers 1

    .line 42
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    return v0
.end method

.method public static getFloorPercent()I
    .registers 1

    .line 98
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    return v0
.end method

.method public static getFloorStrength()I
    .registers 2

    .line 107
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    sget v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getLastApplied()I
    .registers 1

    .line 46
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method public static getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .line 252
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method public static getTargetHz()I
    .registers 1

    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public static getTargetPulseWidth()I
    .registers 1

    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    return v0
.end method

.method public static isSyncActive()Z
    .registers 1

    .line 94
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    return v0
.end method

.method public static refreshSyncLabel()V
    .registers 3

    .line 327
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v0, :cond_5

    .line 328
    return-void

    .line 330
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 331
    :goto_11
    if-eqz v0, :cond_35

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getLastApplied()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_35
    return-void
.end method

.method public static releaseMaModeForActivePause()V
    .registers 3

    .line 280
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 281
    if-nez v0, :cond_5

    .line 282
    return-void

    .line 285
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v2, :cond_19

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_19

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    .line 292
    :cond_19
    goto :goto_1b

    .line 291
    :catchall_1a
    move-exception v0

    .line 293
    :goto_1b
    return-void
.end method

.method public static resetApplied()V
    .registers 1

    .line 296
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 297
    return-void
.end method

.method public static scaleFromSound(I)I
    .registers 3

    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    .line 116
    if-nez p0, :cond_8

    .line 117
    const/4 p0, 0x0

    return p0

    .line 119
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getFloorStrength()I

    move-result v0

    .line 120
    sget v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    sub-int/2addr v1, v0

    mul-int v1, v1, p0

    int-to-float p0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    return p0
.end method

.method public static sendImpulseLevel(I)V
    .registers 4

    .line 303
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    .line 304
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 305
    if-eqz v0, :cond_36

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_36

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_36

    .line 308
    :cond_19
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 309
    if-nez v1, :cond_20

    .line 310
    return-void

    .line 312
    :cond_20
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 313
    if-nez v1, :cond_27

    .line 314
    return-void

    .line 316
    :cond_27
    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 318
    :try_start_29
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 319
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 321
    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 322
    nop

    .line 323
    return-void

    .line 321
    :catchall_32
    move-exception p0

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 322
    throw p0

    .line 306
    :cond_36
    :goto_36
    return-void
.end method

.method public static setCeiling(I)V
    .registers 2

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 78
    const/4 v0, 0x1

    if-ge p0, v0, :cond_b

    .line 79
    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 81
    :cond_b
    return-void
.end method

.method public static setFloorPercent(I)V
    .registers 2

    .line 102
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    .line 103
    return-void
.end method

.method public static setMasterStrength(I)V
    .registers 2

    .line 128
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 129
    return-void
.end method

.method public static setMasterStrength(IZ)V
    .registers 3

    .line 133
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZ)V

    .line 134
    return-void
.end method

.method public static setMasterStrength(IZZ)V
    .registers 4

    .line 141
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZI)V

    .line 142
    return-void
.end method

.method public static setMasterStrength(IZZI)V
    .registers 5

    .line 149
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZII)V

    .line 150
    return-void
.end method

.method public static setMasterStrength(IZZII)V
    .registers 11

    .line 154
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    .line 155
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 156
    if-nez v0, :cond_9

    .line 157
    return-void

    .line 159
    :cond_9
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 160
    if-nez v1, :cond_10

    .line 161
    return-void

    .line 163
    :cond_10
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 164
    if-nez v1, :cond_17

    .line 165
    return-void

    .line 167
    :cond_17
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p3, :cond_21

    iget v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-eq p3, v4, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    .line 168
    :goto_22
    if-lez p4, :cond_29

    iget v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-eq p4, v5, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    .line 169
    :goto_2a
    sget v3, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-ne p0, v3, :cond_33

    if-nez v4, :cond_33

    if-nez v2, :cond_33

    .line 170
    return-void

    .line 172
    :cond_33
    if-eqz v4, :cond_37

    .line 173
    iput p3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 175
    :cond_37
    if-eqz v2, :cond_3b

    .line 176
    iput p4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 179
    :cond_3b
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 180
    sput p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 182
    if-eqz p1, :cond_9b

    .line 183
    sget-object p1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    goto :goto_4e

    :cond_4d
    move-object p1, p3

    .line 184
    :goto_4e
    if-eqz p1, :cond_57

    .line 185
    mul-int/lit8 p4, p0, 0x4b

    div-int/lit8 p4, p4, 0x64

    invoke-virtual {p1, p4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 188
    :cond_57
    sget-object p1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    .line 189
    :cond_62
    if-eqz p3, :cond_9b

    .line 190
    sget-boolean p1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-eqz p1, :cond_87

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "% / "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9b

    .line 193
    :cond_87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " %"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_9b
    :goto_9b
    if-eqz p2, :cond_b0

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz p0, :cond_b0

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz p0, :cond_b0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result p0

    if-eqz p0, :cond_b0

    .line 199
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 201
    :cond_b0
    return-void
.end method

.method public static setSyncActive(Z)V
    .registers 1

    .line 90
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    .line 91
    return-void
.end method

.method public static setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 38
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 39
    return-void
.end method

.method public static setTargetHz(IIZ)V
    .registers 6

    .line 226
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_35

    if-lez p0, :cond_e

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ne v2, p0, :cond_15

    :cond_e
    if-lez p1, :cond_35

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-ne v2, p1, :cond_15

    goto :goto_35

    .line 231
    :cond_15
    if-lez p0, :cond_19

    .line 232
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 234
    :cond_19
    if-lez p1, :cond_1d

    .line 235
    iput p1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 237
    :cond_1d
    if-eqz p2, :cond_34

    if-eqz v0, :cond_34

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz p0, :cond_34

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz p0, :cond_34

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz p0, :cond_34

    .line 238
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 240
    :cond_34
    return-void

    .line 229
    :cond_35
    :goto_35
    return-void
.end method

.method private static shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 4

    .line 204
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 205
    return v1

    .line 207
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTrainingGateOpen()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 208
    return v2

    .line 210
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    return v1
.end method

.method private static targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 2

    .line 243
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 244
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 245
    return-object v1

    .line 247
    :cond_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    :cond_10
    return-object v1
.end method
