.class public final Lcom/isaigu/gymapp/ai/AiVoiceGate;
.super Ljava/lang/Object;
.source "AiVoiceGate.java"


# static fields
.field private static final FILLER:[Ljava/lang/String;

.field private static final NOISE:[Ljava/lang/String;

.field static final PER_MINUTE:I = 0x8

.field static final REPEAT_MS:J = 0x3a98L

.field static final WINDOW_MS:J = 0xea60L

.field private static last:Ljava/lang/String;

.field private static lastAt:J

.field private static final sent:[J

.field private static sentIdx:I

.field static why:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 26
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u044a"

    aput-object v1, v0, v4

    const-string v1, "\u044a\u044a"

    aput-object v1, v0, v5

    const-string v1, "\u044a\u043c"

    aput-object v1, v0, v6

    const-string v1, "\u044a\u043c\u043c"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0445\u043c"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0445\u043c\u043c"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043c\u043c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043c\u043c\u043c"

    aput-object v2, v0, v1

    const-string v1, "\u0430\u0445\u0430"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0443"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0430\u043c\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u0435\u0439"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u0430\u0431\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "uh"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "um"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hm"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hmm"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ah"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "eh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->NOISE:[Ljava/lang/String;

    .line 28
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0434\u043e\u0431\u0440\u0435"

    aput-object v1, v0, v4

    const-string v1, "\u043e\u043a"

    aput-object v1, v0, v5

    const-string v1, "\u043e\u043a\u0435\u0439"

    aput-object v1, v0, v6

    const-string v1, "\u044f\u0441\u043d\u043e"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0431\u043b\u0430\u0433\u043e\u0434\u0430\u0440\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u043c\u0435\u0440\u0441\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0441\u0443\u043f\u0435\u0440"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0431\u0440\u0430\u0432\u043e"

    aput-object v2, v0, v1

    const-string v1, "\u0445\u0443\u0431\u0430\u0432\u043e"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "\u0447\u0443\u0434\u0435\u0441\u043d\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0434\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u043d\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0430\u0433\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0447\u0430\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0437\u0434\u0440\u0430\u0441\u0442\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u0437\u0434\u0440\u0430\u0432\u0435\u0439"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u043c\u043e\u043b\u044f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u0442\u043e\u0447\u043d\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0442\u0430\u043a\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u0440\u0430\u0437\u0431\u0440\u0430\u0445"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u0442\u0440\u0435\u043d\u0435\u0440"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ok"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "okay"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "thanks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "thank"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "you"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "yes"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "good"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "fine"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "great"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "right"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->FILLER:[Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->last:Ljava/lang/String;

    .line 33
    const-wide/16 v0, -0x3a98

    sput-wide v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->lastAt:J

    .line 34
    new-array v0, v3, [J

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sent:[J

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->why:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static all([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    array-length v2, p0

    if-nez v2, :cond_6

    .line 122
    :cond_5
    :goto_5
    return v0

    .line 117
    :cond_6
    array-length v3, p0

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_5

    aget-object v4, p0, v2

    .line 118
    invoke-static {v4, p1}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move v0, v1

    .line 119
    goto :goto_5

    .line 117
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private static allFiller([Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    array-length v2, p0

    if-nez v2, :cond_6

    .line 134
    :cond_5
    :goto_5
    return v0

    .line 129
    :cond_6
    array-length v3, p0

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_5

    aget-object v4, p0, v2

    .line 130
    sget-object v5, Lcom/isaigu/gymapp/ai/AiVoiceGate;->FILLER:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    sget-object v5, Lcom/isaigu/gymapp/ai/AiVoiceGate;->NOISE:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    move v0, v1

    .line 131
    goto :goto_5

    .line 129
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method private static in(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 138
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 139
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 140
    const/4 v0, 0x1

    .line 143
    :cond_e
    return v0

    .line 138
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static no(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 84
    sput-object p0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->why:Ljava/lang/String;

    .line 86
    :try_start_2
    const-string v0, "ai-gate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_26

    .line 90
    :goto_24
    const/4 v0, 0x0

    return v0

    .line 87
    :catch_26
    move-exception v0

    goto :goto_24
.end method

.method static norm(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 94
    if-nez p0, :cond_7

    .line 95
    const-string v0, ""

    .line 110
    :goto_6
    return-object v0

    .line 97
    :cond_7
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x45d

    const/16 v4, 0x438

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v3

    .line 100
    :goto_20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_40

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 102
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v1

    .line 100
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 105
    :cond_37
    if-nez v2, :cond_34

    .line 106
    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 107
    goto :goto_34

    .line 110
    :cond_40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static declared-synchronized pass(Ljava/lang/String;ZZZ)Z
    .registers 11

    .prologue
    .line 41
    const-class v6, Lcom/isaigu/gymapp/ai/AiVoiceGate;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->pass(Ljava/lang/String;ZZZJ)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v6

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method static declared-synchronized pass(Ljava/lang/String;ZZZJ)Z
    .registers 14

    .prologue
    const/4 v5, 0x3

    .line 45
    const-class v1, Lcom/isaigu/gymapp/ai/AiVoiceGate;

    monitor-enter v1

    :try_start_4
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->norm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    :goto_11
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 48
    if-ge v3, v5, :cond_27

    if-eqz p2, :cond_2f

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->allFiller([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_27
    sget-object v3, Lcom/isaigu/gymapp/ai/AiVoiceGate;->NOISE:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->all([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 49
    :cond_2f
    const-string v0, "noise"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->no(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_aa

    move-result v0

    .line 69
    :goto_35
    monitor-exit v1

    return v0

    .line 46
    :cond_37
    :try_start_37
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 51
    :cond_3e
    if-nez p2, :cond_4d

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->allFiller([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 52
    const-string v0, "filler"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->no(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_35

    .line 54
    :cond_4d
    if-eqz p1, :cond_5d

    if-nez p2, :cond_5d

    if-nez p3, :cond_5d

    array-length v0, v0

    if-ge v0, v5, :cond_5d

    .line 55
    const-string v0, "stray"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->no(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_35

    .line 57
    :cond_5d
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->last:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiVoiceGate;->lastAt:J

    sub-long v4, p4, v4

    const-wide/16 v6, 0x3a98

    cmp-long v0, v4, v6

    if-gez v0, :cond_76

    .line 58
    const-string v0, "repeat"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->no(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_35

    .line 60
    :cond_76
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sent:[J

    sget v3, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sentIdx:I

    aget-wide v4, v0, v3

    .line 61
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_92

    sub-long v4, p4, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-gez v0, :cond_92

    .line 62
    const-string v0, "rate"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AiVoiceGate;->no(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_35

    .line 64
    :cond_92
    sget-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sent:[J

    sget v3, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sentIdx:I

    aput-wide p4, v0, v3

    .line 65
    sget v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sentIdx:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    sput v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sentIdx:I

    .line 66
    sput-object v2, Lcom/isaigu/gymapp/ai/AiVoiceGate;->last:Ljava/lang/String;

    .line 67
    sput-wide p4, Lcom/isaigu/gymapp/ai/AiVoiceGate;->lastAt:J

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->why:Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_37 .. :try_end_a8} :catchall_aa

    .line 69
    const/4 v0, 0x1

    goto :goto_35

    .line 45
    :catchall_aa
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized reset()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 74
    const-class v1, Lcom/isaigu/gymapp/ai/AiVoiceGate;

    monitor-enter v1

    :try_start_4
    const-string v2, ""

    sput-object v2, Lcom/isaigu/gymapp/ai/AiVoiceGate;->last:Ljava/lang/String;

    .line 75
    const-wide/16 v2, -0x3a98

    sput-wide v2, Lcom/isaigu/gymapp/ai/AiVoiceGate;->lastAt:J

    .line 76
    :goto_c
    const/16 v2, 0x8

    if-ge v0, v2, :cond_19

    .line 77
    sget-object v2, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sent:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 79
    :cond_19
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->sentIdx:I

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiVoiceGate;->why:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    .line 81
    monitor-exit v1

    return-void

    .line 74
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
