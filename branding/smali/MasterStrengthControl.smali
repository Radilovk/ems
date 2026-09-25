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

    .line 318
    if-gez p0, :cond_1

    .line 319
    const/4 p0, 0x0

    .line 324
    :cond_0
    :goto_0
    return p0

    .line 321
    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    .line 322
    goto :goto_0
.end method

.method public static ensureMaMode()V
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 238
    return-void
.end method

.method public static ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .locals 2

    .prologue
    .line 241
    if-nez p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_0

    .line 251
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
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
    .line 233
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method public static getTargetHz()I
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

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
    .line 308
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 312
    :goto_1
    if-eqz v0, :cond_0

    .line 313
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

    .line 311
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static releaseMaModeForActivePause()V
    .locals 3

    .prologue
    .line 261
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 262
    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v1, :cond_0

    .line 270
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resetApplied()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 278
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
    .line 284
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 285
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 286
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_0

    .line 297
    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 299
    :try_start_0
    iput v0, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 300
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 303
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
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v2

    .line 150
    sget-object v3, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 151
    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v4

    .line 159
    if-eqz v4, :cond_0

    .line 162
    if-lez p3, :cond_6

    iget v0, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-eq p3, v0, :cond_6

    const/4 v0, 0x1

    .line 163
    :goto_1
    sget v5, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-ne v2, v5, :cond_2

    if-eqz v0, :cond_0

    .line 166
    :cond_2
    if-eqz v0, :cond_3

    .line 167
    iput p3, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 170
    :cond_3
    iput v2, v4, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 171
    sput v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 173
    if-eqz p1, :cond_5

    .line 174
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    .line 175
    :goto_2
    if-eqz v0, :cond_4

    .line 176
    mul-int/lit8 v4, v2, 0x4b

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v0, v4}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 179
    :cond_4
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    :goto_3
    if-eqz v0, :cond_5

    .line 181
    sget-boolean v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-eqz v1, :cond_9

    .line 182
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

    .line 189
    :cond_5
    :goto_4
    if-eqz p2, :cond_0

    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    goto/16 :goto_0

    .line 162
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move-object v0, v1

    .line 174
    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 179
    goto :goto_3

    .line 184
    :cond_9
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

    goto :goto_4
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

.method public static setTargetHz(IZ)V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetBean()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    if-lez p0, :cond_0

    iget v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    if-ne v2, p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 218
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    goto :goto_0
.end method

.method private static shouldSendBle(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    sget-boolean v2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->syncActive:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isTrainingGateOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
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

    .line 224
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 225
    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_0
.end method
