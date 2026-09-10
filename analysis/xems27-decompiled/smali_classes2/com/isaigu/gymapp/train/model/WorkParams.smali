.class public Lcom/isaigu/gymapp/train/model/WorkParams;
.super Ljava/lang/Object;
.source "WorkParams.java"


# instance fields
.field private durationTime:Ljava/lang/Integer;

.field private frequency:Ljava/lang/Integer;

.field private inputRamp:Ljava/lang/Integer;

.field private massage:Ljava/lang/Integer;

.field private outputRamp:Ljava/lang/Integer;

.field private pauseTime:Ljava/lang/Integer;

.field private pulseWidth:Ljava/lang/Integer;

.field private trainingTime:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->trainingTime:Ljava/lang/Integer;

    .line 5
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->frequency:Ljava/lang/Integer;

    .line 6
    const/16 v1, 0x15e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pulseWidth:Ljava/lang/Integer;

    .line 7
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->durationTime:Ljava/lang/Integer;

    .line 8
    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pauseTime:Ljava/lang/Integer;

    .line 9
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->inputRamp:Ljava/lang/Integer;

    .line 10
    iput-object v1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->outputRamp:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->massage:Ljava/lang/Integer;

    return-void
.end method

.method private getRangeValue(Ljava/lang/Integer;II)Ljava/lang/Integer;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "maxValue"    # I
    .param p3, "minValue"    # I

    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyProperties(Lcom/isaigu/gymapp/train/model/WorkParams;)Lcom/isaigu/gymapp/train/model/WorkParams;
    .locals 1
    .param p1, "target"    # Lcom/isaigu/gymapp/train/model/WorkParams;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->trainingTime:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setTrainingTime(Ljava/lang/Integer;)V

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->frequency:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setFrequency(Ljava/lang/Integer;)V

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pulseWidth:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setPulseWidth(Ljava/lang/Integer;)V

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->durationTime:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setDurationTime(Ljava/lang/Integer;)V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pauseTime:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setPauseTime(Ljava/lang/Integer;)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->inputRamp:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setInputRamp(Ljava/lang/Integer;)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->outputRamp:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setOutputRamp(Ljava/lang/Integer;)V

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->massage:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/train/model/WorkParams;->setMassage(Ljava/lang/Integer;)V

    .line 92
    return-object p1
.end method

.method public getDurationTime()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->durationTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFrequency()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->frequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInputRamp()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->inputRamp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMassage()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->massage:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOutputRamp()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->outputRamp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPauseTime()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pauseTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPulseWidth()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pulseWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTrainingTime()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->trainingTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDurationTime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "durationTime"    # Ljava/lang/Integer;

    .line 43
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->durationTime:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public setFrequency(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "frequency"    # Ljava/lang/Integer;

    .line 27
    const/16 v0, 0x78

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/model/WorkParams;->getRangeValue(Ljava/lang/Integer;II)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->frequency:Ljava/lang/Integer;

    .line 28
    return-void
.end method

.method public setInputRamp(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "inputRamp"    # Ljava/lang/Integer;

    .line 59
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->inputRamp:Ljava/lang/Integer;

    .line 60
    return-void
.end method

.method public setMassage(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "massage"    # Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->massage:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setOutputRamp(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "outputRamp"    # Ljava/lang/Integer;

    .line 67
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->outputRamp:Ljava/lang/Integer;

    .line 68
    return-void
.end method

.method public setPauseTime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pauseTime"    # Ljava/lang/Integer;

    .line 51
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pauseTime:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setPulseWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pulseWidth"    # Ljava/lang/Integer;

    .line 35
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->pulseWidth:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.method public setTrainingTime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "trainingTime"    # Ljava/lang/Integer;

    .line 19
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/WorkParams;->trainingTime:Ljava/lang/Integer;

    .line 20
    return-void
.end method
