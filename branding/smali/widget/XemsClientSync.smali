.class public final Lcom/isaigu/gymapp/widget/XemsClientSync;
.super Ljava/lang/Object;
.source "XemsClientSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Dossiers;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final POKE_MS:J = 0x927c0L

.field static final PREFS:Ljava/lang/String; = "xems_client_sync"

.field static final SOON_MS:J = 0xea60L

.field private static app:Landroid/content/Context;

.field private static volatile busy:Z

.field private static gapMs:J

.field private static lastPoll:J

.field private static poked:Z

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 33
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    return v0
.end method

.method static synthetic access$400()J
    .registers 2

    .prologue
    .line 33
    sget-wide v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .registers 2

    .prologue
    .line 33
    sput-wide p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    return-wide p0
.end method

.method static csv(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 395
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[^a-z_]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_36

    const-string v0, ","

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 397
    :cond_36
    const-string v0, ""

    goto :goto_2b

    .line 400
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static digits9(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsClientMatch;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static empty(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 412
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainUser;
    .registers 3

    .prologue
    .line 404
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsClientMatch;->find(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v0

    return-object v0
.end method

.method static maybePoll(Z)V
    .registers 9

    .prologue
    .line 126
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_f

    .line 141
    :cond_e
    :goto_e
    return-void

    .line 129
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 134
    if-nez p0, :cond_25

    sget-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    if-eqz v1, :cond_e

    :cond_25
    sget-wide v4, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    .line 137
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 138
    sput-wide v2, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    .line 139
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    .line 140
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;-><init>(Ljava/lang/String;)V

    const-string v0, "xems-client-sync"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method static merge(Landroid/content/Context;Lorg/json/JSONObject;)I
    .registers 19

    .prologue
    .line 251
    if-nez p1, :cond_4

    .line 252
    const/4 v2, 0x0

    .line 377
    :goto_3
    return v2

    .line 254
    :cond_4
    const-string v2, "name"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 255
    const-string v2, "email"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 256
    const-string v2, "phone"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_47

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_49

    .line 258
    :cond_47
    const/4 v2, 0x0

    goto :goto_3

    .line 260
    :cond_49
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsClientSync;->find(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    .line 261
    if-nez v3, :cond_1c1

    const/4 v2, 0x1

    .line 262
    :goto_50
    const-string v4, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 263
    const-string v4, "xems_user_profiles"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 264
    if-nez v2, :cond_85

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v10, 0x0

    invoke-interface {v12, v4, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v4, v8, v10

    if-lez v4, :cond_1c4

    :cond_85
    const/4 v4, 0x1

    move v11, v4

    .line 265
    :goto_87
    if-eqz v2, :cond_92

    .line 266
    new-instance v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 267
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 268
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 273
    :cond_92
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3dd

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3dd

    .line 274
    iput-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 275
    const/4 v4, 0x1

    .line 277
    :goto_a3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b4

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 278
    iput-object v7, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 279
    const/4 v4, 0x1

    .line 281
    :cond_b4
    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 282
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 283
    const/4 v4, 0x1

    .line 285
    :cond_bf
    const-string v5, "sex"

    const-string v6, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e7

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v6, :cond_d5

    if-eqz v11, :cond_e7

    .line 287
    :cond_d5
    const-string v6, "F"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c8

    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    .line 288
    :goto_df
    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eq v6, v5, :cond_1cc

    const/4 v6, 0x1

    :goto_e4
    or-int/2addr v4, v6

    .line 289
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 291
    :cond_e7
    const-string v5, "by"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 292
    const/16 v5, 0x76c

    if-le v6, v5, :cond_11e

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v5, :cond_fa

    if-eqz v11, :cond_11e

    .line 293
    :cond_fa
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 294
    const/4 v5, -0x1

    .line 295
    iget-object v10, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v10, :cond_10d

    .line 296
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 297
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 299
    :cond_10d
    if-eq v5, v6, :cond_11e

    .line 300
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 301
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v7, v6, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 302
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 303
    const/4 v4, 0x1

    .line 306
    :cond_11e
    const-string v5, "h"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 307
    if-lez v5, :cond_136

    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v6, :cond_12f

    if-eqz v11, :cond_136

    :cond_12f
    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-eq v6, v5, :cond_136

    .line 308
    iput v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 309
    const/4 v4, 0x1

    .line 311
    :cond_136
    const-string v5, "w"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 312
    if-lez v5, :cond_150

    if-nez v2, :cond_150

    iget-wide v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/isaigu/gymapp/widget/XemsClientSync;->scaleSince(Landroid/content/Context;J)J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-ltz v6, :cond_150

    .line 313
    const/4 v5, 0x0

    .line 315
    :cond_150
    if-lez v5, :cond_3da

    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_15b

    if-eqz v11, :cond_3da

    :cond_15b
    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eq v6, v5, :cond_3da

    .line 316
    int-to-float v4, v5

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 317
    const/4 v4, 0x1

    move v7, v4

    .line 319
    :goto_168
    if-eqz v2, :cond_16e

    .line 320
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 323
    :cond_16e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 324
    array-length v4, v6

    if-lez v4, :cond_1cf

    const/4 v4, 0x0

    aget-object v4, v6, v4

    .line 325
    :goto_196
    array-length v5, v6

    const/4 v8, 0x1

    if-le v5, v8, :cond_1d2

    const/4 v5, 0x1

    aget-object v5, v6, v5

    .line 326
    :goto_19d
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 327
    array-length v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_1d5

    .line 328
    const/4 v8, 0x2

    aget-object v6, v6, v8

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    :goto_1b1
    if-ge v6, v9, :cond_1d5

    aget-object v10, v8, v6

    .line 329
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1be

    .line 330
    invoke-interface {v13, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1be
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b1

    .line 261
    :cond_1c1
    const/4 v2, 0x0

    goto/16 :goto_50

    .line 264
    :cond_1c4
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_87

    .line 287
    :cond_1c8
    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    goto/16 :goto_df

    .line 288
    :cond_1cc
    const/4 v6, 0x0

    goto/16 :goto_e4

    .line 324
    :cond_1cf
    const-string v4, ""

    goto :goto_196

    .line 325
    :cond_1d2
    const-string v5, ""

    goto :goto_19d

    .line 334
    :cond_1d5
    const-string v6, "goal"

    const-string v8, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1f5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1ed

    if-eqz v11, :cond_1f5

    :cond_1ed
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f5

    .line 337
    const/4 v7, 0x1

    move-object v4, v6

    .line 339
    :cond_1f5
    const-string v6, "fit"

    const-string v8, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_215

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_20d

    if-eqz v11, :cond_215

    :cond_20d
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_215

    .line 342
    const/4 v7, 0x1

    move-object v5, v6

    .line 344
    :cond_215
    const-string v6, "contra"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 345
    const/4 v6, 0x0

    move v8, v7

    :goto_21f
    if-eqz v9, :cond_233

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_233

    .line 346
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v8, v7

    .line 345
    add-int/lit8 v6, v6, 0x1

    goto :goto_21f

    .line 349
    :cond_233
    const-string v6, "focus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->csv(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v10

    .line 350
    const-string v6, "cond"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->csv(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "focus"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    invoke-interface {v12, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 352
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cond"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v14, ""

    invoke-interface {v12, v6, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    if-nez v11, :cond_289

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_299

    :cond_289
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_299

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_297

    if-eqz v11, :cond_299

    .line 355
    :cond_297
    const/4 v8, 0x1

    move-object v9, v10

    .line 357
    :cond_299
    if-nez v11, :cond_2a1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2b1

    :cond_2a1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2af

    if-eqz v11, :cond_2b1

    .line 359
    :cond_2af
    const/4 v8, 0x1

    move-object v6, v7

    .line 361
    :cond_2b1
    const-string v7, "note"

    const-string v10, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 362
    if-nez v8, :cond_2e5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "note"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v12, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e5

    .line 363
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 365
    :cond_2e5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    sget-object v14, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v15, v14

    const/4 v7, 0x0

    move v8, v7

    :goto_2ef
    if-ge v8, v15, :cond_313

    aget-object v16, v14, v8

    .line 367
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30c

    .line 368
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_310

    const-string v7, ","

    :goto_303
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_30c
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2ef

    .line 368
    :cond_310
    const-string v7, ""

    goto :goto_303

    .line 371
    :cond_313
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3cf

    .line 372
    :goto_319
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3d3

    .line 373
    :goto_31f
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "u"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "|"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "|"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "note"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "focus"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 374
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cond"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v14, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5, v13}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->summaryOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v9, v6, v10}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->extras(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 376
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 377
    if-eqz v2, :cond_3d7

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 371
    :cond_3cf
    const-string v4, "tone"

    goto/16 :goto_319

    .line 372
    :cond_3d3
    const-string v5, "mid"

    goto/16 :goto_31f

    .line 377
    :cond_3d7
    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_3da
    move v7, v4

    goto/16 :goto_168

    :cond_3dd
    move v4, v2

    goto/16 :goto_a3
.end method

.method public static now()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 88
    sput-wide v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    .line 89
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsClientSync;->request(J)V

    .line 90
    return-void
.end method

.method public static poke()V
    .registers 2

    .prologue
    .line 72
    const-wide/32 v0, 0x927c0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsClientSync;->request(J)V

    .line 73
    return-void
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 51
    const-string v0, "xems_client_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static request(J)V
    .registers 4

    .prologue
    .line 81
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    if-eqz v0, :cond_a

    sget-wide v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_a
    sput-wide p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->gapMs:J

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 83
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method static scaleSince(Landroid/content/Context;J)J
    .registers 12

    .prologue
    const-wide/16 v0, 0x0

    .line 383
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "xems_scale"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[]"

    .line 384
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4e

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 386
    :goto_37
    if-eqz v2, :cond_4d

    const-string v3, "w"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_4d

    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4c} :catch_50

    move-result-wide v0

    .line 388
    :cond_4d
    :goto_4d
    return-wide v0

    .line 385
    :cond_4e
    const/4 v2, 0x0

    goto :goto_37

    .line 387
    :catch_50
    move-exception v2

    goto :goto_4d
.end method

.method public static soon()V
    .registers 2

    .prologue
    .line 77
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsClientSync;->request(J)V

    .line 78
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 56
    if-nez p0, :cond_4

    .line 68
    :cond_3
    :goto_3
    return-void

    .line 59
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    .line 60
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->started:Z

    if-nez v0, :cond_3

    .line 63
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->started:Z

    .line 66
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 67
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method public static status(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x0

    .line 99
    if-nez p0, :cond_9

    .line 100
    const-string v0, ""

    .line 112
    :goto_8
    return-object v0

    .line 102
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    const-string v0, "okAt"

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 104
    cmp-long v0, v2, v6

    if-nez v0, :cond_20

    .line 105
    const-string v0, "\u043e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v1, "not synced yet"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 107
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 108
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_67

    const-string v0, "\u0442\u043e\u043a\u0443-\u0449\u043e"

    const-string v2, "just now"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_3c
    const-string v2, "total"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u043e\u0431\u0449\u043e"

    const-string v2, " profiles in total"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 109
    :cond_67
    cmp-long v0, v2, v8

    if-gez v0, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043c\u0438\u043d"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 110
    :cond_9c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v4, v2, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u0447"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c
.end method

.method public static studio(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "studio"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method
