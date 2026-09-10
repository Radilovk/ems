.class public Lcom/isaigu/gymapp/bean/TrainProgram;
.super Ljava/lang/Object;
.source "TrainProgram.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field public id:Ljava/lang/Long;

.field public massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field public muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field public name:Ljava/lang/String;

.field public programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

.field public useType:I

.field public userId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 26
    iput-object p1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    .line 27
    iput-object p2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 29
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 30
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 31
    new-instance v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    .line 32
    return-void
.end method

.method public static getTrainProgramTemplate1()Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 6

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "template1"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 56
    .local v0, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 57
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x4b0

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 58
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0xa

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 59
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 60
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x64

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 61
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 62
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 63
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 65
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x708

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 66
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v3, 0x5

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 67
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 68
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v4, 0x3c

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 69
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 70
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 71
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x32

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 73
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x384

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 74
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x8

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 75
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 76
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x50

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 77
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 78
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 79
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0xc8

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 81
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x258

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 82
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0xf

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 83
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 84
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 85
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 86
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 87
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x96

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 88
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 89
    return-object v0
.end method

.method public static getTrainProgramTemplate2()Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 6

    .line 93
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "template2"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 94
    .local v0, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 95
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x4b0

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 96
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0xf

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 97
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 98
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x64

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 99
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v4, 0xa

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 100
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 101
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 103
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x708

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 104
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x1e

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 105
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 106
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x50

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 107
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x28

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 108
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 109
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x32

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 111
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x5dc

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 112
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x8

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 113
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 114
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 115
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 116
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 117
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0xc8

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 119
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x384

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 120
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 121
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 122
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x3c

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 123
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 124
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 125
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x96

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 126
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 127
    return-object v0
.end method

.method public static getTrainProgramTemplate3()Lcom/isaigu/gymapp/bean/TrainProgram;
    .locals 6

    .line 131
    new-instance v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "template3"

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/bean/TrainProgram;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    .line 132
    .local v0, "trainProgram":Lcom/isaigu/gymapp/bean/TrainProgram;
    const/4 v1, 0x0

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 133
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x5dc

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 134
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0xa

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 135
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 136
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x5a

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 137
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 138
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 139
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0xc8

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 141
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0x4b0

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 142
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v3, 0xf

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 143
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 144
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v4, 0x78

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 145
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v4, 0x32

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 146
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 147
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v4, 0x12c

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 149
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x258

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 150
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 151
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 152
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v5, 0x64

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 153
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 154
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 155
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 157
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 158
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 159
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 160
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x3c

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 161
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 162
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 163
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x96

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 164
    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x8

    iput v2, v1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 165
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v1, 0x55

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 171
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v2, 0x15e

    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 172
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v3, 0x4

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 173
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v4, 0x4b0

    iput v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 175
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v5, 0x0

    iput v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    .line 176
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/16 v1, 0x32

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 186
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v1, 0x2

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v6, 0x5

    iput v6, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v5, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v4, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    iput v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->massageCycle:I

    .line 197
    return-void
.end method

.method public matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .locals 2

    .line 42
    iget v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v0

    .line 45
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v0

    .line 48
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;->reset()V

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;->reset()V

    .line 37
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;->reset()V

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/ProgramDataBean;->reset()V

    .line 39
    return-void
.end method
