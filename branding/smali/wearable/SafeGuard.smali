.class public final Lcom/isaigu/gymapp/wearable/SafeGuard;
.super Ljava/lang/Object;
.source "SafeGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final TIPPED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIP_GAP_MS:J = 0x1f40L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->MAIN:Landroid/os/Handler;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->TIPPED:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static age(Lcom/isaigu/gymapp/bean/TrainUser;)I
    .registers 7

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 145
    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 155
    :cond_a
    :goto_a
    return v0

    .line 148
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 152
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v3, v2, :cond_2d

    .line 153
    add-int/lit8 v0, v0, -0x1

    .line 155
    :cond_2d
    const/16 v2, 0xa

    if-lt v0, v2, :cond_35

    const/16 v2, 0x6e

    if-le v0, v2, :cond_a

    :cond_35
    move v0, v1

    goto :goto_a
.end method

.method public static clamp(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    if-nez p1, :cond_5

    .line 93
    :goto_4
    return v0

    .line 90
    :cond_5
    if-eqz p0, :cond_f

    :try_start_7
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_f

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    :cond_f
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->age(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    invoke-static {p1, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1c} :catch_1e

    move-result v0

    goto :goto_4

    .line 91
    :catch_1e
    move-exception v1

    .line 92
    const-string v2, "SafeGuard.clamp"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public static enforce(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    if-eqz p0, :cond_c

    :try_start_4
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 34
    :cond_c
    if-nez v1, :cond_f

    .line 59
    :cond_e
    :goto_e
    return-void

    .line 37
    :cond_f
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SafeGuard;->age(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v2

    .line 38
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v3

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 42
    if-eqz v6, :cond_2e

    .line 43
    invoke-static {v6, v2, v4, v5, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z

    .line 45
    :cond_2e
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v1, v7, v8

    .line 47
    array-length v1, v7

    :goto_46
    if-ge v0, v1, :cond_56

    aget-object v8, v7, v0

    .line 48
    if-eqz v8, :cond_53

    if-eq v8, v6, :cond_53

    .line 49
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v2, v9, v10, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z

    .line 47
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 52
    :cond_56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0413\u0440\u0430\u043d\u0438\u0446\u0430 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442: "

    const-string v2, "Safety limit: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->tip(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8c} :catch_8d

    goto :goto_e

    .line 56
    :catch_8d
    move-exception v0

    .line 57
    const-string v1, "SafeGuard.enforce"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e
.end method

.method static enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z
    .registers 16

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 109
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    if-lez v0, :cond_4b

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 110
    :goto_18
    const/16 v2, 0x8

    new-array v4, v2, [I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    aput v2, v4, v1

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    aput v2, v4, v3

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    aput v2, v4, v8

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    aput v2, v4, v9

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v2, :cond_4d

    move v2, v3

    :goto_31
    aput v2, v4, v10

    const/4 v2, 0x5

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    aput v5, v4, v2

    const/4 v2, 0x6

    aput v0, v4, v2

    const/4 v0, 0x7

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    aput v2, v4, v0

    .line 112
    invoke-static {v4, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/SafeLimits;->apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)[I

    move-result-object v0

    .line 113
    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 125
    :goto_4a
    return v1

    :cond_4b
    move v0, v1

    .line 109
    goto :goto_18

    :cond_4d
    move v2, v1

    .line 110
    goto :goto_31

    .line 118
    :cond_4f
    aget v2, v0, v1

    iput v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 119
    aget v2, v0, v3

    iput v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 120
    aget v2, v0, v8

    iput v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 121
    aget v2, v0, v9

    iput v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 122
    aget v2, v0, v10

    if-ne v2, v3, :cond_64

    move v1, v3

    :cond_64
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 123
    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 124
    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    move v1, v3

    .line 125
    goto :goto_4a
.end method

.method public static enforce(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p1, :cond_4

    .line 77
    :goto_3
    return v0

    .line 67
    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    if-eqz p0, :cond_5c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    :goto_18
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->age(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v1

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v4

    invoke-static {p1, v1, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Z)Z

    move-result v1

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5a

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0413\u0440\u0430\u043d\u0438\u0446\u0430 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442: "

    const-string v6, "Safety limit: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v5, " \u00b7 "

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/SafeGuard;->tip(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_5a} :catch_5e

    :cond_5a
    move v0, v1

    .line 74
    goto :goto_3

    .line 69
    :cond_5c
    const/4 v1, 0x0

    goto :goto_18

    .line 75
    :catch_5e
    move-exception v1

    .line 76
    const-string v2, "SafeGuard.enforce(b)"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static free2(Lcom/isaigu/gymapp/train/model/TrainItem;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 100
    if-eqz p0, :cond_12

    :try_start_3
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 101
    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_13

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 103
    :cond_12
    :goto_12
    return v0

    .line 102
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method public static pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static pause(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    .registers 8

    .prologue
    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_3
    return-object v0

    :cond_4
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iget-boolean v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    iget v3, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/SafeLimits;->pauseSend(IIZIIZ)[I

    move-result-object v0

    goto :goto_3
.end method

.method private static tip(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->TIPPED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 161
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1f40

    cmp-long v0, v0, v4

    if-gez v0, :cond_1b

    .line 167
    :goto_1a
    return-void

    .line 164
    :cond_1b
    sget-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->TIPPED:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "safety"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a
.end method
