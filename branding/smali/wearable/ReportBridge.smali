.class final Lcom/isaigu/gymapp/wearable/ReportBridge;
.super Ljava/lang/Object;
.source "ReportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final dialog:Landroid/app/Dialog;

.field private final focus:J

.field private final user:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Lcom/isaigu/gymapp/bean/TrainUser;J)V
    .registers 6

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->dialog:Landroid/app/Dialog;

    .line 25
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 26
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    .line 27
    return-void
.end method

.method private avatar(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 148
    if-eqz p1, :cond_a

    :try_start_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 149
    :cond_a
    const-string v0, ""

    .line 171
    :goto_c
    return-object v0

    .line 151
    :cond_d
    new-instance v0, Ljava/io/File;

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x61a80

    cmp-long v1, v2, v4

    if-lez v1, :cond_30

    .line 153
    :cond_2d
    const-string v0, ""

    goto :goto_c

    .line 155
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 156
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3c} :catch_6b

    .line 158
    const/4 v0, 0x0

    .line 159
    :goto_3d
    :try_start_3d
    array-length v3, v1

    if-ge v0, v3, :cond_48

    .line 160
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_66

    move-result v3

    .line 161
    if-gtz v3, :cond_64

    .line 167
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/jpeg;base64,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 164
    :cond_64
    add-int/2addr v0, v3

    .line 165
    goto :goto_3d

    .line 167
    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 168
    throw v0
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_6b} :catch_6b

    .line 170
    :catch_6b
    move-exception v0

    .line 171
    const-string v0, ""

    goto :goto_c
.end method

.method static isDark()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 31
    :try_start_1
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_1a

    .line 32
    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    .line 33
    const/16 v2, 0x500

    if-ge v1, v2, :cond_18

    .line 35
    :goto_17
    return v0

    .line 33
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 34
    :catch_1a
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public client()Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_5
    const-string v0, "id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d2

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 60
    :goto_22
    const-string v2, "name"

    if-eqz v0, :cond_d8

    :goto_26
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_86

    .line 63
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_42

    .line 64
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_dc

    const-string v0, "F"

    :goto_3f
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_42
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_51

    .line 67
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    :cond_51
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_60

    .line 70
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 72
    :cond_60
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_73

    .line 73
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_73
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_86

    .line 76
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_86
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_95

    .line 80
    const-string v0, "height"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    :cond_95
    const-string v0, "owner"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/wearable/BandWorkout;->isOwner(Landroid/content/Context;J)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 83
    const-string v0, "misport"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/wearable/BandWorkout;->sport(Landroid/content/Context;J)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v0

    .line 85
    if-lez v0, :cond_c0

    .line 86
    const-string v2, "restHr"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    :cond_c0
    const-string v0, "avatar"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->avatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_cd} :catch_e0

    .line 92
    :goto_cd
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_d2
    :try_start_d2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto/16 :goto_22

    .line 60
    :cond_d8
    const-string v0, ""

    goto/16 :goto_26

    .line 64
    :cond_dc
    const-string v0, "M"
    :try_end_de
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_de} :catch_e0

    goto/16 :goto_3f

    .line 89
    :catch_e0
    move-exception v0

    .line 90
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cd
.end method

.method public close()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->dialog:Landroid/app/Dialog;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->delete(Landroid/content/Context;J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 123
    :goto_9
    return-void

    .line 121
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public focus()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public lang()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 46
    const-string v0, "bg"

    const-string v1, "bg"

    const-string v2, "en"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "bg"

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "en"

    goto :goto_12
.end method

.method public putScores(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcom/isaigu/gymapp/wearable/SessionStore;->putScores(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 115
    :goto_9
    return-void

    .line 113
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public session(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->load(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 105
    :goto_a
    return-object v0

    .line 104
    :catch_b
    move-exception v0

    .line 105
    const-string v0, "null"

    goto :goto_a
.end method

.method public sessions()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public theme()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ReportBridge;->isDark()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dark"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "light"

    goto :goto_8
.end method
