.class public final Lcom/isaigu/gymapp/widget/XemsClientSync;
.super Ljava/lang/Object;
.source "XemsClientSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Pull;,
        Lcom/isaigu/gymapp/widget/XemsClientSync$Merge;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final POKE_MS:J = 0xea60L

.field static final PREFS:Ljava/lang/String; = "xems_client_sync"

.field private static app:Landroid/content/Context;

.field private static volatile busy:Z

.field private static lastPoll:J

.field private static poked:Z

.field private static started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 34
    sput-boolean p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    return v0
.end method

.method static synthetic access$402(J)J
    .registers 2

    .prologue
    .line 34
    sput-wide p0, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    return-wide p0
.end method

.method static csv(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 343
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[^a-z_]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_36

    const-string v0, ","

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 345
    :cond_36
    const-string v0, ""

    goto :goto_2b

    .line 348
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static digits9(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 378
    if-nez p0, :cond_5

    .line 379
    const-string v0, ""

    .line 389
    :cond_4
    :goto_4
    return-object v0

    .line 381
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 384
    const/16 v3, 0x30

    if-lt v2, v3, :cond_20

    const/16 v3, 0x39

    if-gt v2, v3, :cond_20

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 388
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
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
    .line 393
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

    .line 352
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainUsers:Ljava/util/List;

    .line 353
    if-nez v0, :cond_c

    move-object v0, v3

    .line 374
    :cond_b
    :goto_b
    return-object v0

    .line 356
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3a

    move v1, v2

    .line 358
    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 359
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 360
    if-eqz v0, :cond_36

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v5, :cond_36

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 358
    :cond_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    .line 365
    :cond_3a
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x7

    if-lt v0, v5, :cond_62

    .line 367
    :goto_45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_62

    .line 368
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 369
    if-eqz v0, :cond_5f

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 367
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_62
    move-object v0, v3

    .line 374
    goto :goto_b
.end method

.method static maybePoll(Z)V
    .registers 9

    .prologue
    .line 114
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-nez v0, :cond_f

    .line 129
    :cond_e
    :goto_e
    return-void

    .line 117
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    if-nez p0, :cond_25

    sget-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    if-eqz v1, :cond_e

    :cond_25
    sget-wide v4, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    .line 125
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 126
    sput-wide v2, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    .line 127
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->busy:Z

    .line 128
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
    .line 216
    if-nez p1, :cond_4

    .line 217
    const/4 v2, 0x0

    .line 337
    :goto_3
    return v2

    .line 219
    :cond_4
    const-string v2, "name"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 220
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

    .line 221
    const-string v2, "phone"

    const-string v3, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 222
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

    .line 223
    :cond_47
    const/4 v2, 0x0

    goto :goto_3

    .line 225
    :cond_49
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsClientSync;->find(Ljava/lang/String;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainUser;

    move-result-object v3

    .line 226
    if-nez v3, :cond_1cc

    const/4 v2, 0x1

    .line 227
    :goto_50
    const-string v4, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 228
    const-string v4, "xems_user_profiles"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 229
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

    if-lez v4, :cond_1cf

    :cond_85
    const/4 v4, 0x1

    move v11, v4

    .line 230
    :goto_87
    if-eqz v2, :cond_92

    .line 231
    new-instance v3, Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/TrainUser;-><init>()V

    .line 232
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 233
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 236
    :cond_92
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3e8

    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a2

    if-eqz v11, :cond_3e8

    :cond_a2
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e8

    .line 237
    iput-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    .line 238
    const/4 v4, 0x1

    .line 240
    :goto_ad
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d0

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bd

    if-eqz v11, :cond_d0

    :cond_bd
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsClientSync;->digits9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d0

    .line 241
    iput-object v7, v3, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    .line 242
    const/4 v4, 0x1

    .line 244
    :cond_d0
    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->empty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 245
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 246
    const/4 v4, 0x1

    .line 248
    :cond_db
    const-string v5, "sex"

    const-string v6, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_103

    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eqz v6, :cond_f1

    if-eqz v11, :cond_103

    .line 250
    :cond_f1
    const-string v6, "F"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d3

    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    .line 251
    :goto_fb
    iget-object v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    if-eq v6, v5, :cond_1d7

    const/4 v6, 0x1

    :goto_100
    or-int/2addr v4, v6

    .line 252
    iput-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    .line 254
    :cond_103
    const-string v5, "by"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 255
    const/16 v5, 0x76c

    if-le v6, v5, :cond_13a

    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v5, :cond_116

    if-eqz v11, :cond_13a

    .line 256
    :cond_116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 257
    const/4 v5, -0x1

    .line 258
    iget-object v8, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    if-eqz v8, :cond_129

    .line 259
    iget-object v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 260
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 262
    :cond_129
    if-eq v5, v6, :cond_13a

    .line 263
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 264
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v7, v6, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 265
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->birtyday:Ljava/util/Date;

    .line 266
    const/4 v4, 0x1

    .line 269
    :cond_13a
    const-string v5, "h"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 270
    if-lez v5, :cond_152

    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v6, :cond_14b

    if-eqz v11, :cond_152

    :cond_14b
    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-eq v6, v5, :cond_152

    .line 271
    iput v5, v3, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    .line 272
    const/4 v4, 0x1

    .line 274
    :cond_152
    const-string v5, "w"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 275
    if-lez v5, :cond_3e5

    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_166

    if-eqz v11, :cond_3e5

    :cond_166
    iget v6, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-eq v6, v5, :cond_3e5

    .line 276
    int-to-float v4, v5

    iput v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->weight:F

    .line 277
    const/4 v4, 0x1

    move v7, v4

    .line 279
    :goto_173
    if-eqz v2, :cond_179

    .line 280
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 283
    :cond_179
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

    .line 284
    array-length v4, v6

    if-lez v4, :cond_1da

    const/4 v4, 0x0

    aget-object v4, v6, v4

    .line 285
    :goto_1a1
    array-length v5, v6

    const/4 v8, 0x1

    if-le v5, v8, :cond_1dd

    const/4 v5, 0x1

    aget-object v5, v6, v5

    .line 286
    :goto_1a8
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 287
    array-length v8, v6

    const/4 v9, 0x2

    if-le v8, v9, :cond_1e0

    .line 288
    const/4 v8, 0x2

    aget-object v6, v6, v8

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    :goto_1bc
    if-ge v6, v9, :cond_1e0

    aget-object v10, v8, v6

    .line 289
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1c9

    .line 290
    invoke-interface {v13, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1c9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1bc

    .line 226
    :cond_1cc
    const/4 v2, 0x0

    goto/16 :goto_50

    .line 229
    :cond_1cf
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_87

    .line 250
    :cond_1d3
    sget-object v5, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    goto/16 :goto_fb

    .line 251
    :cond_1d7
    const/4 v6, 0x0

    goto/16 :goto_100

    .line 284
    :cond_1da
    const-string v4, ""

    goto :goto_1a1

    .line 285
    :cond_1dd
    const-string v5, ""

    goto :goto_1a8

    .line 294
    :cond_1e0
    const-string v6, "goal"

    const-string v8, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_200

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1f8

    if-eqz v11, :cond_200

    :cond_1f8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_200

    .line 297
    const/4 v7, 0x1

    move-object v4, v6

    .line 299
    :cond_200
    const-string v6, "fit"

    const-string v8, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_220

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_218

    if-eqz v11, :cond_220

    :cond_218
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_220

    .line 302
    const/4 v7, 0x1

    move-object v5, v6

    .line 304
    :cond_220
    const-string v6, "contra"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 305
    const/4 v6, 0x0

    move v8, v7

    :goto_22a
    if-eqz v9, :cond_23e

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_23e

    .line 306
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v8, v7

    .line 305
    add-int/lit8 v6, v6, 0x1

    goto :goto_22a

    .line 309
    :cond_23e
    const-string v6, "focus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->csv(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v10

    .line 310
    const-string v6, "cond"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsClientSync;->csv(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    .line 311
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

    .line 312
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

    .line 313
    if-nez v11, :cond_294

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2a4

    :cond_294
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2a4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_2a2

    if-eqz v11, :cond_2a4

    .line 315
    :cond_2a2
    const/4 v8, 0x1

    move-object v9, v10

    .line 317
    :cond_2a4
    if-nez v11, :cond_2ac

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2bc

    :cond_2ac
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2bc

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2ba

    if-eqz v11, :cond_2bc

    .line 319
    :cond_2ba
    const/4 v8, 0x1

    move-object v6, v7

    .line 321
    :cond_2bc
    const-string v7, "note"

    const-string v10, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 322
    if-nez v8, :cond_2f0

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

    if-eqz v7, :cond_2f0

    .line 323
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 325
    :cond_2f0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    sget-object v14, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v15, v14

    const/4 v7, 0x0

    move v8, v7

    :goto_2fa
    if-ge v8, v15, :cond_31e

    aget-object v16, v14, v8

    .line 327
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_317

    .line 328
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_31b

    const-string v7, ","

    :goto_30e
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_317
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_2fa

    .line 328
    :cond_31b
    const-string v7, ""

    goto :goto_30e

    .line 331
    :cond_31e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3da

    .line 332
    :goto_324
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3de

    .line 333
    :goto_32a
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

    .line 334
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

    .line 335
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

    .line 336
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->saveUserQuiet(Lcom/isaigu/gymapp/bean/TrainUser;Z)V

    .line 337
    if-eqz v2, :cond_3e2

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 331
    :cond_3da
    const-string v4, "tone"

    goto/16 :goto_324

    .line 332
    :cond_3de
    const-string v5, "mid"

    goto/16 :goto_32a

    .line 337
    :cond_3e2
    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_3e5
    move v7, v4

    goto/16 :goto_173

    :cond_3e8
    move v4, v2

    goto/16 :goto_ad
.end method

.method public static now()V
    .registers 2

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J

    .line 77
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->poke()V

    .line 78
    return-void
.end method

.method public static poke()V
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->H:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 49
    const-string v0, "xems_client_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static start(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 54
    if-nez p0, :cond_4

    .line 66
    :cond_3
    :goto_3
    return-void

    .line 57
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->app:Landroid/content/Context;

    .line 58
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsClientSync;->started:Z

    if-nez v0, :cond_3

    .line 61
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->started:Z

    .line 64
    sput-boolean v1, Lcom/isaigu/gymapp/widget/XemsClientSync;->poked:Z

    .line 65
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

    .line 87
    if-nez p0, :cond_9

    .line 88
    const-string v0, ""

    .line 100
    :goto_8
    return-object v0

    .line 90
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    const-string v0, "okAt"

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 92
    cmp-long v0, v2, v6

    if-nez v0, :cond_20

    .line 93
    const-string v0, "\u043e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v1, "not synced yet"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 95
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 96
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_67

    const-string v0, "\u0442\u043e\u043a\u0443-\u0449\u043e"

    const-string v2, "just now"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_3c
    const-string v2, "total"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 100
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

    .line 97
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

    .line 98
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
    .line 82
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
