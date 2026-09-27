.class final Lcom/isaigu/gymapp/wearable/BandWorkout;
.super Ljava/lang/Object;
.source "BandWorkout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandWorkout$Send;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandWorkout;->H:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static autoSport(Landroid/content/Context;J)I
    .registers 8

    .prologue
    .line 38
    const-string v0, "tone"

    .line 40
    :try_start_2
    const-string v1, "xems_user_profiles"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 41
    array-length v2, v1

    if-lez v2, :cond_38

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    .line 42
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_38} :catch_61

    .line 46
    :cond_38
    :goto_38
    const-string v1, "fat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "cellulite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 47
    :cond_48
    const/16 v0, 0x10

    .line 52
    :goto_4a
    return v0

    .line 49
    :cond_4b
    const-string v1, "drain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "massage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 50
    :cond_5b
    const/16 v0, 0x8

    goto :goto_4a

    .line 52
    :cond_5e
    const/16 v0, 0x134

    goto :goto_4a

    .line 44
    :catch_61
    move-exception v1

    goto :goto_38
.end method

.method static isOwner(Landroid/content/Context;J)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 24
    if-eqz p0, :cond_21

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandWorkout;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "own"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method static onEnd(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 4

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    if-nez v0, :cond_5

    .line 90
    :goto_4
    return-void

    .line 89
    :cond_5
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;-><init>(II)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;->run()V

    goto :goto_4
.end method

.method static onStart(Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 5

    .prologue
    .line 60
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->isOwner(Landroid/content/Context;J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    .line 62
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->leader:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandOwner:Z

    if-nez v1, :cond_15

    .line 75
    :cond_14
    :goto_14
    return-void

    .line 65
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWorkout;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 66
    const-string v0, "band_workout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 band not connected, no native workout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 69
    :cond_3c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->sport(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    .line 70
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandWorkout;->open(I)Z

    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandRunning:Z

    .line 73
    const-string v1, "band_workout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open sport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandWorkout;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;-><init>(II)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14
.end method

.method static onState(Lcom/isaigu/gymapp/wearable/SessionRec;Z)V
    .registers 5

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSent:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandRunning:Z

    if-ne p1, v0, :cond_9

    .line 83
    :cond_8
    :goto_8
    return-void

    .line 81
    :cond_9
    iput-boolean p1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandRunning:Z

    .line 82
    new-instance v1, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->bandSport:I

    if-eqz p1, :cond_19

    const/4 v0, 0x2

    :goto_12
    invoke-direct {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;-><init>(II)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/BandWorkout$Send;->run()V

    goto :goto_8

    :cond_19
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 56
    const-string v0, "xems_user_profiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static sport(Landroid/content/Context;J)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 29
    if-eqz p0, :cond_1e

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandWorkout;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "misport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    :cond_1e
    if-lez v0, :cond_21

    :goto_20
    return v0

    :cond_21
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/BandWorkout;->autoSport(Landroid/content/Context;J)I

    move-result v0

    goto :goto_20
.end method
