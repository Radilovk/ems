.class public final Lcom/isaigu/gymapp/widget/XemsClientSync;
.super Ljava/lang/Object;
.source "XemsClientSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsClientSync$Tick;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final POKE_MS:J = 0x1d4c0L

.field static final POLL_MS:J = 0x124f80L

.field static final PREFS:Ljava/lang/String; = "xems_client_sync"

.field static final TICK_MS:J = 0xea60L

.field private static app:Landroid/content/Context;

.field private static volatile busy:Z

.field private static lastPoll:J

.field private static poked:Z

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 34
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    return p0
.end method

.method static synthetic access$302(J)J
    .registers 2

    .prologue
    .line 34
    sput-wide p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    return-wide p0
.end method

.method static digits9(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 357
    if-nez p0, :cond_5

    .line 358
    const-string v0, ""

    .line 368
    :cond_4
    :goto_4
    return-object v0

    .line 360
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 362
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 363
    const/16 v3, 0x30

    if-lt v2, v3, :cond_20

    const/16 v3, 0x39

    if-gt v2, v3, :cond_20

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 367
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static empty(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 372
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
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 332
    if-nez v0, :cond_c

    move-object v0, v3

    .line 353
    :cond_b
    :goto_b
    return-object v0

    .line 335
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 336
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a

    move v1, v2

    .line 337
    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 338
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 339
    if-eqz v0, :cond_36

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v5, :cond_36

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 337
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 344
    :cond_3a
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x7

    if-lt v0, v5, :cond_62

    .line 346
    :goto_45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_62

    .line 347
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 348
    if-eqz v0, :cond_5f

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 346
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_62
    move-object v0, v3

    .line 353
    goto :goto_b
.end method

.method static maybePoll(Z)V
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_11

    .line 135
    :cond_10
    :goto_10
    return-void

    .line 120
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 126
    sget-wide v8, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x124f80

    cmp-long v3, v8, v10

    if-ltz v3, :cond_6a

    const/4 v3, 0x6

    if-lt v0, v3, :cond_6a

    const/16 v3, 0x17

    if-ge v0, v3, :cond_6a

    move v3, v1

    .line 127
    :goto_3e
    if-nez p0, :cond_44

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    if-eqz v0, :cond_6c

    :cond_44
    sget-wide v8, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x1d4c0

    cmp-long v0, v8, v10

    if-ltz v0, :cond_6c

    move v0, v1

    .line 128
    :goto_50
    if-nez v3, :cond_54

    if-eqz v0, :cond_10

    .line 131
    :cond_54
    sput-boolean v2, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 132
    sput-wide v6, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    .line 133
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;

    invoke-direct {v1, v4}, Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;-><init>(Ljava/lang/String;)V

    const-string v2, "xems-client-sync"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_10

    :cond_6a
    move v3, v2

    .line 126
    goto :goto_3e

    :cond_6c
    move v0, v2

    .line 127
    goto :goto_50
.end method

.method static merge(Landroid/content/Context;Lorg/json/JSONObject;)I
    .registers 15

    .prologue
    .line 219
    if-nez p1, :cond_4

    .line 220
    const/4 v0, 0x0

    .line 327
    :goto_3
    return v0

    .line 222
    :cond_4
    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 223
    const-string v0, "email"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 224
    const-string v0, "phone"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_41

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_43

    .line 226
    :cond_41
    const/4 v0, 0x0

    goto :goto_3

    .line 228
    :cond_43
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsClientSync;->find(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v1

    .line 229
    if-nez v1, :cond_1ba

    const/4 v0, 0x1

    .line 230
    :goto_4a
    const-string v2, "t"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 231
    const-string v2, "xems_user_profiles"

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 232
    if-nez v0, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "edit"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v10, 0x0

    invoke-interface {v8, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v6, v10

    if-lez v2, :cond_1bd

    :cond_7b
    const/4 v2, 0x1

    move v6, v2

    .line 233
    :goto_7d
    if-eqz v0, :cond_88

    .line 234
    new-instance v1, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 235
    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 236
    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 239
    :cond_88
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33d

    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_98

    if-eqz v6, :cond_33d

    :cond_98
    iget-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33d

    .line 240
    iput-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 241
    const/4 v2, 0x1

    .line 243
    :goto_a3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c6

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b3

    if-eqz v6, :cond_c6

    :cond_b3
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 244
    iput-object v5, v1, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 245
    const/4 v2, 0x1

    .line 247
    :cond_c6
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 248
    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 249
    const/4 v2, 0x1

    .line 251
    :cond_d1
    const-string v3, "sex"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f7

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v4, :cond_e5

    if-eqz v6, :cond_f7

    .line 253
    :cond_e5
    const-string v4, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    sget-object v3, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    .line 254
    :goto_ef
    iget-object v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eq v4, v3, :cond_1c5

    const/4 v4, 0x1

    :goto_f4
    or-int/2addr v2, v4

    .line 255
    iput-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 257
    :cond_f7
    const-string v3, "by"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 258
    const/16 v3, 0x76c

    if-le v4, v3, :cond_12c

    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v3, :cond_108

    if-eqz v6, :cond_12c

    .line 259
    :cond_108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 260
    const/4 v3, -0x1

    .line 261
    iget-object v7, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v7, :cond_11b

    .line 262
    iget-object v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 263
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 265
    :cond_11b
    if-eq v3, v4, :cond_12c

    .line 266
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 267
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v5, v4, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 268
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 269
    const/4 v2, 0x1

    .line 272
    :cond_12c
    const-string v3, "h"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 273
    if-lez v3, :cond_142

    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v4, :cond_13b

    if-eqz v6, :cond_142

    :cond_13b
    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-eq v4, v3, :cond_142

    .line 274
    iput v3, v1, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 275
    const/4 v2, 0x1

    .line 277
    :cond_142
    const-string v3, "w"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 278
    if-lez v3, :cond_33a

    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_154

    if-eqz v6, :cond_33a

    :cond_154
    iget v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-eq v4, v3, :cond_33a

    .line 279
    int-to-float v2, v3

    iput v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 280
    const/4 v2, 0x1

    move v5, v2

    .line 282
    :goto_161
    if-eqz v0, :cond_167

    .line 283
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 286
    :cond_167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\|"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 287
    array-length v2, v4

    if-lez v2, :cond_1c8

    const/4 v2, 0x0

    aget-object v2, v4, v2

    .line 288
    :goto_18f
    array-length v3, v4

    const/4 v7, 0x1

    if-le v3, v7, :cond_1cb

    const/4 v3, 0x1

    aget-object v3, v4, v3

    .line 289
    :goto_196
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 290
    array-length v9, v4

    const/4 v10, 0x2

    if-le v9, v10, :cond_1ce

    .line 291
    const/4 v9, 0x2

    aget-object v4, v4, v9

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v4, 0x0

    :goto_1aa
    if-ge v4, v10, :cond_1ce

    aget-object v11, v9, v4

    .line 292
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1b7

    .line 293
    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1b7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1aa

    .line 229
    :cond_1ba
    const/4 v0, 0x0

    goto/16 :goto_4a

    .line 232
    :cond_1bd
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_7d

    .line 253
    :cond_1c1
    sget-object v3, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    goto/16 :goto_ef

    .line 254
    :cond_1c5
    const/4 v4, 0x0

    goto/16 :goto_f4

    .line 287
    :cond_1c8
    const-string v2, ""

    goto :goto_18f

    .line 288
    :cond_1cb
    const-string v3, ""

    goto :goto_196

    .line 297
    :cond_1ce
    const-string v4, "goal"

    const-string v9, ""

    invoke-virtual {p1, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1ec

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1e4

    if-eqz v6, :cond_1ec

    :cond_1e4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1ec

    .line 300
    const/4 v5, 0x1

    move-object v2, v4

    .line 302
    :cond_1ec
    const-string v4, "fit"

    const-string v9, ""

    invoke-virtual {p1, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_20a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_202

    if-eqz v6, :cond_20a

    :cond_202
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20a

    .line 305
    const/4 v5, 0x1

    move-object v3, v4

    .line 307
    :cond_20a
    const-string v4, "contra"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 308
    const/4 v4, 0x0

    :goto_211
    if-eqz v6, :cond_225

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_225

    .line 309
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_211

    .line 311
    :cond_225
    const-string v4, "note"

    const-string v6, ""

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 312
    if-nez v5, :cond_257

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "note"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_257

    .line 313
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 315
    :cond_257
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    sget-object v10, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v11, v10

    const/4 v4, 0x0

    move v5, v4

    :goto_261
    if-ge v5, v11, :cond_281

    aget-object v12, v10, v5

    .line 317
    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27a

    .line 318
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_27e

    const-string v4, ","

    :goto_273
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_27a
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_261

    .line 318
    :cond_27e
    const-string v4, ""

    goto :goto_273

    .line 321
    :cond_281
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32c

    .line 322
    :goto_287
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_330

    .line 323
    :goto_28d
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v10, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "note"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3, v7}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->summaryOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_334

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u041e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0430: "

    const-string v5, "From the client: "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->remark:Ljava/lang/String;

    .line 326
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 327
    if-eqz v0, :cond_337

    const/4 v0, 0x1

    goto/16 :goto_3

    .line 321
    :cond_32c
    const-string v2, "tone"

    goto/16 :goto_287

    .line 322
    :cond_330
    const-string v3, "mid"

    goto/16 :goto_28d

    .line 325
    :cond_334
    const-string v2, ""

    goto :goto_319

    .line 327
    :cond_337
    const/4 v0, 0x2

    goto/16 :goto_3

    :cond_33a
    move v5, v2

    goto/16 :goto_161

    :cond_33d
    move v2, v0

    goto/16 :goto_a3
.end method

.method public static poke()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 50
    const-string v0, "xems_client_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 55
    if-nez p0, :cond_3

    .line 64
    :cond_2
    :goto_2
    return-void

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    .line 59
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->started:Z

    if-nez v0, :cond_2

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->started:Z

    .line 63
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick;-><init>()V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public static status(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x0

    .line 79
    if-nez p0, :cond_9

    .line 80
    const-string v0, ""

    .line 92
    :goto_8
    return-object v0

    .line 82
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    const-string v0, "okAt"

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 84
    cmp-long v0, v2, v6

    if-nez v0, :cond_20

    .line 85
    const-string v0, "\u043e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v1, "not synced yet"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 87
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 88
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_67

    const-string v0, "\u0442\u043e\u043a\u0443-\u0449\u043e"

    const-string v2, "just now"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_3c
    const-string v2, "total"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
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

    .line 89
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

    .line 90
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
    .line 74
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
