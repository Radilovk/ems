.class final Lcom/isaigu/gymapp/wearable/ReportBridge;
.super Ljava/lang/Object;
.source "ReportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ReportBridge$Start;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Print;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final dialog:Landroid/app/Dialog;

.field private final focus:J

.field private final user:Lcom/isaigu/gymapp/bean/TrainUser;

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Lcom/isaigu/gymapp/bean/TrainUser;J)V
    .registers 6

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->dialog:Landroid/app/Dialog;

    .line 26
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 27
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    .line 28
    return-void
.end method

.method private avatar(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 284
    if-eqz p1, :cond_a

    :try_start_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 285
    :cond_a
    const-string v0, ""

    .line 307
    :goto_c
    return-object v0

    .line 287
    :cond_d
    new-instance v0, Ljava/io/File;

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x61a80

    cmp-long v1, v2, v4

    if-lez v1, :cond_30

    .line 289
    :cond_2d
    const-string v0, ""

    goto :goto_c

    .line 291
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 292
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3c} :catch_6b

    .line 294
    const/4 v0, 0x0

    .line 295
    :goto_3d
    :try_start_3d
    array-length v3, v1

    if-ge v0, v3, :cond_48

    .line 296
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_66

    move-result v3

    .line 297
    if-gtz v3, :cond_64

    .line 303
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 305
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

    .line 300
    :cond_64
    add-int/2addr v0, v3

    .line 301
    goto :goto_3d

    .line 303
    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 304
    throw v0
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_6b} :catch_6b

    .line 306
    :catch_6b
    move-exception v0

    .line 307
    const-string v0, ""

    goto :goto_c
.end method

.method static isDark()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 167
    :try_start_1
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_1a

    .line 168
    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    .line 169
    const/16 v2, 0x500

    if-ge v1, v2, :cond_18

    .line 171
    :goto_17
    return v0

    .line 169
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 170
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
    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 194
    :try_start_5
    const-string v0, "id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 196
    :goto_22
    const-string v2, "name"

    if-eqz v0, :cond_d9

    :goto_26
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_86

    .line 199
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_42

    .line 200
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_dd

    const-string v0, "F"

    :goto_3f
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    :cond_42
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_51

    .line 203
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    :cond_51
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_60

    .line 206
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 208
    :cond_60
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_73

    .line 209
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_73
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_86

    .line 212
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_86
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_95

    .line 216
    const-string v0, "height"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    :cond_95
    const-string v0, "owner"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/wearable/BandWorkout;->isOwner(Landroid/content/Context;J)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 219
    const-string v0, "misport"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->sport(Landroid/content/Context;JI)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v0

    .line 221
    if-lez v0, :cond_c1

    .line 222
    const-string v2, "restHr"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    :cond_c1
    const-string v0, "avatar"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->avatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_ce} :catch_e1

    .line 228
    :goto_ce
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_d3
    :try_start_d3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto/16 :goto_22

    .line 196
    :cond_d9
    const-string v0, ""

    goto/16 :goto_26

    .line 200
    :cond_dd
    const-string v0, "M"
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_df} :catch_e1

    goto/16 :goto_3f

    .line 225
    :catch_e1
    move-exception v0

    .line 226
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

    goto :goto_ce
.end method

.method public close()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->dialog:Landroid/app/Dialog;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->delete(Landroid/content/Context;J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 259
    :goto_9
    return-void

    .line 257
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public focus()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 187
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
    .line 182
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

.method public printPdf(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->web:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public putScores(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcom/isaigu/gymapp/wearable/SessionStore;->putScores(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 251
    :goto_9
    return-void

    .line 249
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public rotate()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_20

    .line 91
    :goto_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    if-eqz v0, :cond_22

    const-string v0, "portrait"

    :goto_1f
    return-object v0

    .line 89
    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    .line 92
    :cond_22
    const-string v0, "landscape"

    goto :goto_1f
.end method

.method public session(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->load(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 241
    :goto_a
    return-object v0

    .line 240
    :catch_b
    move-exception v0

    .line 241
    const-string v0, "null"

    goto :goto_a
.end method

.method public sessions()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->web:Landroid/webkit/WebView;

    .line 32
    return-void
.end method

.method public shareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 38
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "xems_share"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_17

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_17
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_38

    .line 44
    array-length v3, v2

    :goto_1e
    if-ge v0, v3, :cond_38

    aget-object v4, v2, v0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_35

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 44
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 50
    :cond_38
    const-string v0, "[\\\\/:*?\"<>|]"

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4a} :catch_eb

    .line 54
    const/4 v3, 0x0

    :try_start_4b
    invoke-static {p3, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_e6

    .line 56
    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 58
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    if-eqz p4, :cond_90

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_90

    .line 63
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_90
    if-eqz p5, :cond_9d

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9d

    .line 66
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_9d
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v4, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438"

    const-string v7, "Share"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    const-string v1, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_e5
    return-void

    .line 56
    :catchall_e6
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 57
    throw v0
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_eb} :catch_eb

    .line 71
    :catch_eb
    move-exception v0

    .line 72
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e5
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    const-string v4, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438"

    const-string v5, "Share"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public theme()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 177
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
