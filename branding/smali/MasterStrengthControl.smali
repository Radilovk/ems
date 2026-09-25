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
    .locals 1

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
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static adjustCeiling(I)I
    .locals 1

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    .line 31
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    .line 32
    if-eqz p2, :cond_1

    .line 33
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 35
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 30
    goto :goto_0
.end method

.method public static captureCeilingFromSlider()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x64

    .line 51
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 52
    if-nez v1, :cond_0

    .line 53
    sput v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 54
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 72
    :goto_0
    return v0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 60
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 65
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    goto :goto_0

    .line 67
    :cond_2
    iget v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v1

    .line 68
    if-ge v1, v0, :cond_3

    :goto_1
    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 69
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 68
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sput v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 72
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    goto :goto_0
.end method

.method private static clamp(I)I
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 337
    if-gez p0, :cond_1

    .line 338
    const/4 p0, 0x0

    .line 343
    :cond_0
    :goto_0
    return p0

    .line 340
    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    .line 341
    goto :goto_0
.end method

.method public static ensureMaMode()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 257
    return-void
.end method

.method public static ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 2

    .prologue
    .line 260
    if-nez p0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_0

    .line 270
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getCeiling()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    return v0
.end method

.method public static getFloorPercent()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    return v0
.end method

.method public static getFloorStrength()I
    .locals 2

    .prologue
    .line 107
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    sget v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->floorPercent:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getLastApplied()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    goto :goto_0
.end method

.method public static getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method public static getTargetHz()I
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getTargetPulseWidth()I
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isSyncActive()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    return v0
.end method

.method public static refreshSyncLabel()V
    .locals 3

    .prologue
    .line 327
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    :goto_1
    if-eqz v0, :cond_0

    .line 332
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

    goto :goto_0

    .line 330
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static releaseMaModeForActivePause()V
    .locals 3

    .prologue
    .line 280
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 281
    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resetApplied()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 297
    return-void
.end method

.method public static scaleFromSound(I)I
    .locals 3

    .prologue
    .line 115
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 119
    :cond_0
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

    goto :goto_0
.end method

.method public static sendImpulseLevel(I)V
    .locals 4

    .prologue
    .line 303
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 304
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 305
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 309
    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_0

    .line 316
    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 318
    :try_start_0
    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 319
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 322
    throw v0
.end method

.method public static setCeiling(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 78
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    if-ge v0, v1, :cond_0

    .line 79
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 81
    :cond_0
    return-void
.end method

.method public static setFloorPercent(I)V
    .locals 2

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
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 129
    return-void
.end method

.method public static setMasterStrength(IZ)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZ)V

    .line 134
    return-void
.end method

.method public static setMasterStrength(IZZ)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZI)V

    .line 142
    return-void
.end method

.method public static setMasterStrength(IZZI)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZZII)V

    .line 150
    return-void
.end method

.method public static setMasterStrength(IZZII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v4

    .line 155
    sget-object v5, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 156
    if-nez v5, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v5}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 164
    if-eqz v6, :cond_0

    .line 167
    if-lez p3, :cond_7

    iget v3, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-eq p3, v3, :cond_7

    move v3, v0

    .line 168
    :goto_1
    if-lez p4, :cond_8

    iget v7, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-eq p4, v7, :cond_8

    .line 169
    :goto_2
    sget v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-ne v4, v1, :cond_2

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 172
    :cond_2
    if-eqz v3, :cond_3

    .line 173
    iput p3, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 175
    :cond_3
    if-eqz v0, :cond_4

    .line 176
    iput p4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 179
    :cond_4
    iput v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 180
    sput v4, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 182
    if-eqz p1, :cond_6

    .line 183
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 184
    :goto_3
    if-eqz v0, :cond_5

    .line 185
    mul-int/lit8 v1, v4, 0x4b

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 188
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    :goto_4
    if-eqz v0, :cond_6

    .line 190
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-eqz v1, :cond_b

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 198
    :cond_6
    :goto_5
    if-eqz p2, :cond_0

    iget-object v0, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_0

    invoke-static {v5}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v5}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    goto/16 :goto_0

    :cond_7
    move v3, v1

    .line 167
    goto :goto_1

    :cond_8
    move v0, v1

    .line 168
    goto :goto_2

    :cond_9
    move-object v0, v2

    .line 183
    goto :goto_3

    :cond_a
    move-object v0, v2

    .line 188
    goto :goto_4

    .line 193
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public static setSyncActive(Z)V
    .locals 0

    .prologue
    .line 90
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    .line 91
    return-void
.end method

.method public static setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 39
    return-void
.end method

.method public static setTargetHz(IIZ)V
    .locals 3

    .prologue
    .line 226
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 227
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_1

    if-lez p0, :cond_0

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ne v2, p0, :cond_2

    :cond_0
    if-lez p1, :cond_1

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    if-ne v2, p1, :cond_2

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    if-lez p0, :cond_3

    .line 232
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 234
    :cond_3
    if-lez p1, :cond_4

    .line 235
    iput p1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 237
    :cond_4
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    goto :goto_0
.end method

.method private static shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTrainingGateOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 243
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 244
    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_0
.end method
