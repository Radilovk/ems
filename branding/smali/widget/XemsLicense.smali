.class public final Lcom/isaigu/gymapp/widget/XemsLicense;
.super Ljava/lang/Object;
.source "XemsLicense.java"


# static fields
.field public static final AI:Ljava/lang/String; = "ai"

.field public static final ALL:[Ljava/lang/String;

.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final BAND:Ljava/lang/String; = "band"

.field static final DEFAULT_SERVER:Ljava/lang/String; = "https://license.biocode-bg.com"

.field public static final FEAT_ARMS_FULL:Ljava/lang/String; = "arms_full"

.field static final GRACE_DAYS:I = 0x7

.field static final K_CHECKED:Ljava/lang/String; = "checked"

.field static final K_DEVICE:Ljava/lang/String; = "device"

.field static final K_EMS:Ljava/lang/String; = "ems"

.field static final K_EXP:Ljava/lang/String; = "exp"

.field static final K_FEATS:Ljava/lang/String; = "feats"

.field static final K_KEY:Ljava/lang/String; = "key"

.field static final K_LIC:Ljava/lang/String; = "lic"

.field static final K_MODS:Ljava/lang/String; = "mods"

.field static final K_PHASE:Ljava/lang/String; = "phase"

.field static final K_PLAN:Ljava/lang/String; = "plan"

.field static final K_SERVER:Ljava/lang/String; = "server"

.field static final K_SOURCE:Ljava/lang/String; = "source"

.field static final K_TOKEN:Ljava/lang/String; = "token"

.field static final LOCAL_CODE:Ljava/lang/String; = "0123"

.field static final LOCAL_CODE_ARMS:Ljava/lang/String; = "RENI123"

.field public static final MUSIC:Ljava/lang/String; = "music"

.field static final PREFS:Ljava/lang/String; = "xems_license"

.field public static final PULSE:Ljava/lang/String; = "pulse"

.field static final REFRESH_MS:J = 0x5265c00L

.field static final SERVER_PUBLIC_KEY:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEeFeVVxE3nb0wRB2xzPPyjq36QHwvJMPkkvGiLTuWGoabsgsySyW5Vim9RlaBzWvZ2wxMB3u5G+U+pkw5lzld1A=="

.field public static final TIMER:Ljava/lang/String; = "timer"

.field private static app:Landroid/content/Context;

.field private static volatile ems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile loaded:Z

.field private static volatile setup:Z

.field private static volatile unlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "timer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pulse"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ai"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "band"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->features:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ems:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowedEms()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ems:Ljava/util/Set;

    return-object v0
.end method

.method public static applyLocalCode(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 228
    if-nez p0, :cond_82

    const-string v0, ""

    .line 232
    :goto_6
    const-string v2, "0123"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 233
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const-string v1, "full"

    .line 243
    :goto_1b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 244
    const-string v6, "0123"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 247
    const-string v0, "phase"

    const-string v6, "setup"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    :cond_32
    const-string v0, "key"

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "source"

    const-string v6, "code"

    .line 251
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "mods"

    .line 252
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "feats"

    .line 253
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "plan"

    .line 254
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lic"

    const-string v2, "local"

    .line 255
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exp"

    const-wide/16 v2, 0x0

    .line 256
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    .line 257
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ems"

    .line 258
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    move v0, v4

    .line 261
    :goto_81
    return v0

    .line 228
    :cond_82
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 236
    :cond_8e
    const-string v2, "RENI123"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-array v2, v4, [Ljava/lang/String;

    const-string v5, "arms_full"

    aput-object v5, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 239
    const-string v1, "base+arms"

    goto/16 :goto_1b

    :cond_a9
    move v0, v1

    .line 241
    goto :goto_81
.end method

.method public static applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 266
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 267
    const-string v1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEeFeVVxE3nb0wRB2xzPPyjq36QHwvJMPkkvGiLTuWGoabsgsySyW5Vim9RlaBzWvZ2wxMB3u5G+U+pkw5lzld1A=="

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object v1

    .line 268
    if-nez v1, :cond_13

    .line 269
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 286
    :goto_12
    return-object v0

    .line 271
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "source"

    const-string v3, "server"

    .line 272
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "token"

    .line 273
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mods"

    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->modules:Ljava/util/List;

    .line 274
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "feats"

    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->features:Ljava/util/List;

    .line 275
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ems"

    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->ems:Ljava/util/List;

    .line 276
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "plan"

    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->plan:Ljava/lang/String;

    .line 277
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "lic"

    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->license:Ljava/lang/String;

    .line 278
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "exp"

    iget-wide v4, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->expiresS:J

    .line 279
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked"

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    if-eqz p0, :cond_7a

    .line 282
    const-string v1, "key"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    :cond_7a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 285
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 286
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static context()Landroid/content/Context;
    .registers 1

    .prologue
    .line 364
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    return-object v0
.end method

.method static decide(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/widget/XemsLicense;->decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 336
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 337
    const-string v1, "code"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "server"

    .line 338
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-eqz v1, :cond_24

    const-wide/32 v4, 0x93a80

    add-long/2addr v4, p2

    cmp-long v1, p4, v4

    if-gtz v1, :cond_48

    :cond_24
    const/4 v1, 0x1

    .line 339
    :goto_25
    if-eqz v1, :cond_4a

    if-eqz p1, :cond_4a

    .line 340
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_30
    if-ge v0, v3, :cond_4a

    aget-object v4, v1, v0

    .line 341
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_45

    .line 342
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_48
    move v1, v0

    .line 338
    goto :goto_25

    .line 346
    :cond_4a
    return-object v2
.end method

.method public static deviceId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 189
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    const-string v0, "device"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 204
    :goto_12
    return-object v0

    .line 194
    :cond_13
    const/4 v0, 0x0

    .line 196
    :try_start_14
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_72

    move-result-object v0

    .line 199
    :goto_20
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 200
    :cond_30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_12

    .line 197
    :catch_72
    move-exception v2

    goto :goto_20
.end method

.method public static deviceIdShown()Ljava/lang/String;
    .registers 4

    .prologue
    .line 209
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_25

    .line 212
    if-lez v0, :cond_1b

    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1b

    .line 213
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_1b
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 217
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expiresS()J
    .registers 4

    .prologue
    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "exp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static finishSetup()V
    .registers 3

    .prologue
    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "locked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 120
    return-void
.end method

.method public static graceDaysLeft()I
    .registers 8

    .prologue
    const-wide/16 v6, 0x0

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->expiresS()J

    move-result-wide v0

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 353
    const-string v4, "server"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    cmp-long v4, v0, v6

    if-eqz v4, :cond_21

    cmp-long v4, v2, v0

    if-gtz v4, :cond_23

    .line 354
    :cond_21
    const/4 v0, -0x1

    .line 356
    :goto_22
    return v0

    :cond_23
    const-wide/32 v4, 0x93a80

    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_22
.end method

.method public static has(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 128
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 129
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static has(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 98
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    if-nez v0, :cond_1e

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    const-string v1, "ai"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 103
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->features:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 85
    if-nez p0, :cond_3

    .line 95
    :cond_2
    :goto_2
    return-void

    .line 88
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_11
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    .line 91
    :cond_13
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->loaded:Z

    if-nez v0, :cond_2

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshIfDue(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public static isAdminKey()Z
    .registers 3

    .prologue
    .line 156
    const-string v0, "code"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "0123"

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static isFull()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 138
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_13

    aget-object v4, v2, v1

    .line 139
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 143
    :goto_f
    return v0

    .line 138
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 143
    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static isSetupMode()Z
    .registers 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    return v0
.end method

.method static join(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 371
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :cond_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 375
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static key()Ljava/lang/String;
    .registers 3

    .prologue
    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lastCheckMs()J
    .registers 4

    .prologue
    .line 181
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "checked"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static markChecked()V
    .registers 4

    .prologue
    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    return-void
.end method

.method public static needsBand()Z
    .registers 1

    .prologue
    .line 134
    const-string v0, "pulse"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "ai"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static plan()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "plan"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static prefs()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 360
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    const-string v1, "xems_license"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static reload()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x0

    .line 311
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 328
    :goto_6
    return-void

    .line 314
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 316
    const-string v0, "source"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mods"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exp"

    invoke-interface {v6, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLicense;->decide(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    .line 317
    const-string v0, "source"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "feats"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exp"

    invoke-interface {v6, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLicense;->decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->features:Ljava/util/Set;

    .line 318
    const-string v0, "source"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ems"

    const-string v2, ""

    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exp"

    invoke-interface {v6, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/widget/XemsLicense;->decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ems:Ljava/util/Set;

    .line 319
    const-string v0, "phase"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_92

    .line 323
    const-string v0, "source"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9f

    const-string v0, "locked"

    .line 324
    :goto_85
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "phase"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    :cond_92
    const-string v1, "setup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    .line 327
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->loaded:Z

    goto/16 :goto_6

    .line 323
    :cond_9f
    const-string v0, "setup"

    goto :goto_85
.end method

.method public static reset()V
    .registers 2

    .prologue
    .line 296
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key"

    .line 297
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "source"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mods"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "feats"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ems"

    .line 298
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "plan"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lic"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "checked"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 301
    return-void
.end method

.method public static revoke()V
    .registers 0

    .prologue
    .line 291
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reset()V

    .line 292
    return-void
.end method

.method public static server()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "https://license.biocode-bg.com"

    goto :goto_12
.end method

.method public static setServer(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 173
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "server"

    if-nez p0, :cond_16

    const-string v0, ""

    :goto_e
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    return-void

    .line 173
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 390
    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    array-length v3, v1

    :goto_17
    if-ge v0, v3, :cond_33

    aget-byte v4, v1, v0

    .line 393
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 395
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_38

    move-result-object v0

    .line 397
    :goto_37
    return-object v0

    .line 396
    :catch_38
    move-exception v0

    .line 397
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public static source()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "source"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static token()Ljava/lang/String;
    .registers 3

    .prologue
    .line 177
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static unlockedList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 381
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 382
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 385
    :cond_19
    return-object v1
.end method
