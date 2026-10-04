.class public final Lcom/isaigu/gymapp/ai/OutputOwner;
.super Ljava/lang/Object;
.source "OutputOwner.java"


# static fields
.field public static final AI:Ljava/lang/String; = "ai"

.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final MAP:Ljava/lang/String; = "map"

.field public static final MUSIC:Ljava/lang/String; = "music"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conflict(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/ai/OutputOwner;->holder()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 65
    :cond_c
    const/4 v0, 0x0

    .line 82
    :goto_d
    return-object v0

    .line 69
    :cond_e
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 70
    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0437\u0430\u0442\u0432\u043e\u0440\u0438 \u0410\u0432\u0442\u043e."

    .line 71
    const-string v0, "Close Auto first."

    .line 82
    :goto_1a
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 72
    :cond_1f
    const-string v1, "ai"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 73
    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0437\u0430\u0442\u0432\u043e\u0440\u0438 AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430."

    .line 74
    const-string v0, "Close the AI session first."

    goto :goto_1a

    .line 75
    :cond_2c
    const-string v1, "map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 76
    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0441\u043f\u0440\u0438 \u043a\u0430\u0440\u0442\u0430\u0442\u0430 \u043e\u0442 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438."

    .line 77
    const-string v0, "Stop the Workouts map first."

    goto :goto_1a

    .line 79
    :cond_39
    const-string v1, "\u041f\u044a\u0440\u0432\u043e \u0441\u043f\u0440\u0438 \u043c\u0443\u0437\u0438\u043a\u0430\u043b\u043d\u0438\u044f \u0441\u0438\u043d\u0445\u0440\u043e\u043d: \u0442\u043e\u0439 \u0434\u044a\u0440\u0436\u0438 \u0441\u0438\u043b\u0430\u0442\u0430."

    .line 80
    const-string v0, "Stop music sync first: it holds the strength."

    goto :goto_1a
.end method

.method public static engineDrives()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_10

    move-result v2

    if-eqz v2, :cond_11

    :cond_e
    move v0, v1

    .line 57
    :cond_f
    :goto_f
    return v0

    .line 52
    :catch_10
    move-exception v2

    .line 55
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_1f

    move-result v2

    if-eqz v2, :cond_f

    :cond_1d
    move v0, v1

    goto :goto_f

    .line 56
    :catch_1f
    move-exception v1

    goto :goto_f
.end method

.method public static holder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->ownsOutput()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 24
    :cond_c
    const-string v0, "auto"

    .line 40
    :goto_e
    return-object v0

    .line 26
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->ownsOutput()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 27
    :cond_1d
    const-string v0, "ai"

    goto :goto_e

    .line 29
    :cond_20
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 30
    const-string v0, "map"
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_e

    .line 32
    :catch_29
    move-exception v0

    .line 35
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->isSyncActive()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 36
    :cond_36
    const-string v0, "music"
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_38} :catch_39

    goto :goto_e

    .line 38
    :catch_39
    move-exception v0

    .line 40
    :cond_3a
    const/4 v0, 0x0

    goto :goto_e
.end method
