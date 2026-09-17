.class public final Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;
.super Ljava/lang/Object;
.source "MasterStrengthControl.java"


# static fields
.field private static ceiling:I

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

.field private static targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0x64

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static bind(Lcom/isaigu/gymapp/widget/CircleSeekBar;Landroid/widget/TextView;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 27
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    .line 28
    if-eqz p1, :cond_13

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_13
    sput-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    .line 29
    if-eqz p2, :cond_19

    .line 30
    sput-object p2, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 32
    :cond_19
    return-void
.end method

.method public static captureCeilingFromSlider()I
    .registers 3

    .line 48
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 49
    const/16 v1, 0x64

    if-nez v0, :cond_9

    .line 50
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 51
    return v1

    .line 54
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 55
    if-nez v0, :cond_12

    .line 56
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 57
    return v1

    .line 59
    :cond_12
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1b

    .line 61
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 62
    return v1

    .line 64
    :cond_1b
    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result v0

    .line 65
    const/4 v2, 0x1

    if-ge v0, v2, :cond_25

    const/4 v0, 0x1

    :cond_25
    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_28

    .line 66
    return v0

    .line 67
    :catchall_28
    move-exception v0

    .line 68
    sput v1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 69
    return v1
.end method

.method private static clamp(I)I
    .registers 2

    .line 158
    if-gez p0, :cond_4

    .line 159
    const/4 p0, 0x0

    return p0

    .line 161
    :cond_4
    const/16 v0, 0x64

    if-le p0, v0, :cond_9

    .line 162
    return v0

    .line 164
    :cond_9
    return p0
.end method

.method public static ensureMaMode()V
    .registers 1

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 138
    return-void
.end method

.method public static ensureMaMode(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .line 141
    if-nez p0, :cond_3

    .line 142
    return-void

    .line 145
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setMaSelected(Z)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setHzSelected(Z)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseMaSelected(Z)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->setPauseHzSelected(Z)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_12

    .line 150
    goto :goto_13

    .line 149
    :catchall_12
    move-exception p0

    .line 151
    :goto_13
    return-void
.end method

.method public static getCeiling()I
    .registers 1

    .line 39
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    return v0
.end method

.method public static getLastApplied()I
    .registers 1

    .line 43
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return v0
.end method

.method public static getTarget()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 1

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    return-object v0
.end method

.method public static resetApplied()V
    .registers 1

    .line 154
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 155
    return-void
.end method

.method public static scaleFromSound(I)I
    .registers 2

    .line 82
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    return p0
.end method

.method public static setCeiling(I)V
    .registers 2

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 75
    const/4 v0, 0x1

    if-ge p0, v0, :cond_b

    .line 76
    sput v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->ceiling:I

    .line 78
    :cond_b
    return-void
.end method

.method public static setMasterStrength(I)V
    .registers 2

    .line 90
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->setMasterStrength(IZ)V

    .line 91
    return-void
.end method

.method public static setMasterStrength(IZ)V
    .registers 5

    .line 95
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->clamp(I)I

    move-result p0

    .line 96
    sget v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    if-ne p0, v0, :cond_9

    .line 97
    return-void

    .line 99
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 100
    if-nez v0, :cond_e

    .line 101
    return-void

    .line 103
    :cond_e
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 104
    if-nez v1, :cond_15

    .line 105
    return-void

    .line 107
    :cond_15
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    .line 108
    if-nez v1, :cond_1c

    .line 109
    return-void

    .line 112
    :cond_1c
    iput p0, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 113
    sput p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->lastApplied:I

    .line 115
    if-eqz p1, :cond_59

    .line 116
    sget-object p1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->seekBarRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/isaigu/gymapp/widget/CircleSeekBar;

    goto :goto_2f

    :cond_2e
    move-object p1, v1

    .line 117
    :goto_2f
    if-eqz p1, :cond_38

    .line 118
    mul-int/lit8 v2, p0, 0x4b

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {p1, v2}, Lcom/isaigu/gymapp/widget/CircleSeekBar;->setCurProcess(I)V

    .line 121
    :cond_38
    sget-object p1, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->maLabelRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    :cond_43
    if-eqz v1, :cond_59

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " %"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_59
    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz p0, :cond_66

    iget-object p0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz p0, :cond_66

    .line 128
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 130
    :cond_66
    return-void
.end method

.method public static setTarget(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 1

    .line 35
    sput-object p0, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->targetItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 36
    return-void
.end method
