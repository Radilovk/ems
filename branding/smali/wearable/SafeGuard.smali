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

    .line 104
    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-nez v0, :cond_b

    :cond_9
    move v0, v1

    .line 114
    :cond_a
    :goto_a
    return v0

    .line 107
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 111
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v3, v2, :cond_2d

    .line 112
    add-int/lit8 v0, v0, -0x1

    .line 114
    :cond_2d
    const/16 v2, 0xa

    if-lt v0, v2, :cond_35

    const/16 v2, 0x6e

    if-le v0, v2, :cond_a

    :cond_35
    move v0, v1

    goto :goto_a
.end method

.method public static enforce(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 11

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

    .line 58
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
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v5

    .line 41
    if-eqz v5, :cond_2a

    .line 42
    invoke-static {v5, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    .line 44
    :cond_2a
    const/4 v6, 0x4

    new-array v6, v6, [Lcom/isaigu/gymapp/bean/ProgramDataBean;

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    aput-object v1, v6, v7

    .line 46
    array-length v1, v6

    :goto_42
    if-ge v0, v1, :cond_52

    aget-object v7, v6, v0

    .line 47
    if-eqz v7, :cond_4f

    if-eq v7, v5, :cond_4f

    .line 48
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v2, v8, v9}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    .line 46
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 51
    :cond_52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0413\u0440\u0430\u043d\u0438\u0446\u0430 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442: "

    const-string v2, "Safety limit: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 52
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/SafeGuard;->tip(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_88} :catch_89

    goto :goto_e

    .line 55
    :catch_89
    move-exception v0

    .line 56
    const-string v1, "SafeGuard.enforce"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e
.end method

.method static enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .registers 15

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 82
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

    .line 83
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

    const/4 v2, 0x7

    iget v5, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    aput v5, v4, v2

    .line 85
    invoke-static {v4, p1, p2, p3}, Lcom/isaigu/gymapp/ai/SafeLimits;->apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)[I

    move-result-object v2

    .line 86
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 99
    :goto_4a
    return v1

    :cond_4b
    move v0, v1

    .line 82
    goto :goto_18

    :cond_4d
    move v2, v1

    .line 83
    goto :goto_31

    .line 89
    :cond_4f
    const/4 v4, 0x6

    aget v4, v2, v4

    if-eq v4, v0, :cond_5e

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 92
    :cond_5e
    aget v0, v2, v1

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 93
    aget v0, v2, v3

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 94
    aget v0, v2, v8

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 95
    aget v0, v2, v9

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 96
    aget v0, v2, v10

    if-ne v0, v3, :cond_73

    move v1, v3

    :cond_73
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 97
    const/4 v0, 0x5

    aget v0, v2, v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    .line 98
    const/4 v0, 0x7

    aget v0, v2, v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    move v1, v3

    .line 99
    goto :goto_4a
.end method

.method public static enforce(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 62
    if-nez p1, :cond_4

    .line 76
    :goto_3
    return v0

    .line 66
    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    if-eqz p0, :cond_58

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    :goto_18
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/SafeGuard;->age(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v1

    invoke-static {p1, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SafeGuard;->enforce(Lcom/isaigu/gymapp/bean/ProgramDataBean;ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v1

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_56

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0413\u0440\u0430\u043d\u0438\u0446\u0430 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442: "

    const-string v6, "Safety limit: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
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

    .line 70
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/SafeGuard;->tip(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_56} :catch_5a

    :cond_56
    move v0, v1

    .line 73
    goto :goto_3

    .line 68
    :cond_58
    const/4 v1, 0x0

    goto :goto_18

    .line 74
    :catch_5a
    move-exception v1

    .line 75
    const-string v2, "SafeGuard.enforce(b)"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static tip(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 119
    sget-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->TIPPED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 120
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v4, 0x1f40

    cmp-long v0, v0, v4

    if-gez v0, :cond_1b

    .line 126
    :goto_1a
    return-void

    .line 123
    :cond_1b
    sget-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->TIPPED:Ljava/util/WeakHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "safety"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/isaigu/gymapp/wearable/SafeGuard;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/SafeGuard$Tip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a
.end method
