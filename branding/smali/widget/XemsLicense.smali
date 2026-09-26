.class public final Lcom/isaigu/gymapp/widget/XemsLicense;
.super Ljava/lang/Object;
.source "XemsLicense.java"


# static fields
.field public static final AI:Ljava/lang/String; = "ai"

.field public static final ALL:[Ljava/lang/String;

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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 36
    const-string v0, "timer"

    const-string v1, "music"

    const-string v2, "pulse"

    const-string v3, "ai"

    const-string v4, "band"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->features:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ems:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowedEms()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ems:Ljava/util/Set;

    return-object v0
.end method

.method public static applyLocalCode(Ljava/lang/String;)Z
    .registers 7

    .line 226
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_f

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_f
    const-string v1, "0123"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 231
    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 232
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    const-string v4, "full"

    goto :goto_3e

    .line 234
    :cond_25
    const-string v2, "RENI123"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const-string v3, "arms_full"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 237
    const-string v4, "base+arms"

    .line 241
    :goto_3e
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 245
    const-string v0, "phase"

    const-string v1, "setup"

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    :cond_53
    nop

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key"

    invoke-interface {v5, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 249
    const-string v0, "source"

    const-string v1, "code"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 250
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mods"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 251
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "feats"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 252
    const-string v0, "plan"

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 253
    const-string v0, "lic"

    const-string v1, "local"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 254
    const-string v2, "exp"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 255
    const-string v0, "token"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 256
    const-string v0, "ems"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 257
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 259
    const/4 p0, 0x1

    return p0

    .line 239
    :cond_a4
    const/4 p0, 0x0

    return p0
.end method

.method public static applyToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEeFeVVxE3nb0wRB2xzPPyjq36QHwvJMPkkvGiLTuWGoabsgsySyW5Vim9RlaBzWvZ2wxMB3u5G+U+pkw5lzld1A=="

    invoke-static {p1, v2, v1, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/isaigu/gymapp/widget/XemsLicenseToken;

    move-result-object v1

    .line 266
    if-nez v1, :cond_13

    .line 267
    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    .line 269
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    const-string v2, "source"

    const-string v3, "server"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    const-string v2, "token"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->modules:Ljava/util/List;

    .line 272
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mods"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->features:Ljava/util/List;

    .line 273
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "feats"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->ems:Ljava/util/List;

    .line 274
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ems"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->plan:Ljava/lang/String;

    .line 275
    const-string v2, "plan"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->license:Ljava/lang/String;

    .line 276
    const-string v2, "lic"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, v1, Lcom/isaigu/gymapp/widget/XemsLicenseToken;->expiresS:J

    .line 277
    const-string v2, "exp"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "checked"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 279
    if-eqz p0, :cond_7a

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    :cond_7a
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 284
    const/4 p0, 0x0

    return-object p0
.end method

.method static context()Landroid/content/Context;
    .registers 1

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    return-object v0
.end method

.method static decide(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/widget/XemsLicense;->decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 335
    const-string v1, "code"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 336
    const-string v1, "server"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-wide/16 v3, 0x0

    cmp-long p0, p2, v3

    if-eqz p0, :cond_24

    const-wide/32 v3, 0x93a80

    add-long/2addr p2, v3

    cmp-long p0, p4, p2

    if-gtz p0, :cond_25

    :cond_24
    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    .line 337
    :goto_28
    if-eqz p0, :cond_4b

    if-eqz p1, :cond_4b

    .line 338
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    :goto_33
    if-ge v2, p1, :cond_4b

    aget-object p2, p0, v2

    .line 339
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_48

    .line 340
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 344
    :cond_4b
    return-object v0
.end method

.method public static deviceId()Ljava/lang/String;
    .registers 5

    .line 187
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    const-string v1, "device"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 190
    return-object v2

    .line 192
    :cond_13
    const/4 v2, 0x0

    .line 194
    :try_start_14
    sget-object v3, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_21

    .line 196
    goto :goto_22

    .line 195
    :catchall_21
    move-exception v3

    .line 197
    :goto_22
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 198
    :cond_32
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLicense;->sha256Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-object v2
.end method

.method public static deviceIdShown()Ljava/lang/String;
    .registers 4

    .line 207
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceId()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 210
    if-lez v2, :cond_1b

    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_1b

    .line 211
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 215
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expiresS()J
    .registers 4

    .line 162
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

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "phase"

    const-string v2, "locked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 118
    return-void
.end method

.method public static graceDaysLeft()I
    .registers 8

    .line 349
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->expiresS()J

    move-result-wide v0

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v4

    const-string v5, "server"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_31

    cmp-long v6, v2, v0

    if-gtz v6, :cond_22

    goto :goto_31

    .line 354
    :cond_22
    const-wide/32 v6, 0x93a80

    add-long/2addr v0, v6

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 352
    :cond_31
    :goto_31
    const/4 v0, -0x1

    return v0
.end method

.method public static has(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 126
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 127
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static has(Ljava/lang/String;)Z
    .registers 2

    .line 96
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .registers 2

    .line 101
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->features:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 83
    if-nez p0, :cond_3

    .line 84
    return-void

    .line 86
    :cond_3
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_11
    sput-object p0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    .line 89
    :cond_13
    sget-boolean p0, Lcom/isaigu/gymapp/widget/XemsLicense;->loaded:Z

    if-nez p0, :cond_1f

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 91
    sget-object p0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->refreshIfDue(Landroid/content/Context;)V

    .line 93
    :cond_1f
    return-void
.end method

.method public static isAdminKey()Z
    .registers 2

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0123"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public static isFull()Z
    .registers 5

    .line 136
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 137
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 138
    return v2

    .line 136
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 141
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public static isSetupMode()Z
    .registers 1

    .line 111
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    return v0
.end method

.method static join(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 369
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    goto :goto_9

    .line 373
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static key()Ljava/lang/String;
    .registers 3

    .line 158
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

    .line 179
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

    .line 302
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "checked"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    return-void
.end method

.method public static needsBand()Z
    .registers 1

    .line 132
    const-string v0, "pulse"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "ai"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static plan()Ljava/lang/String;
    .registers 3

    .line 149
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

    .line 358
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    const-string v1, "xems_license"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static reload()V
    .registers 14

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsLicense;->app:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 310
    return-void

    .line 312
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 314
    const-string v3, "source"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mods"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "exp"

    const-wide/16 v12, 0x0

    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    move-wide v9, v1

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/widget/XemsLicense;->decide(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/widget/XemsLicense;->unlocked:Ljava/util/Set;

    .line 315
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "feats"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/widget/XemsLicense;->decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/widget/XemsLicense;->features:Ljava/util/Set;

    .line 316
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ems"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static/range {v5 .. v10}, Lcom/isaigu/gymapp/widget/XemsLicense;->decideList(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/widget/XemsLicense;->ems:Ljava/util/Set;

    .line 317
    const-string v1, "phase"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "setup"

    if-nez v5, :cond_7c

    .line 321
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_70

    const-string v2, "locked"

    goto :goto_71

    :cond_70
    move-object v2, v6

    .line 322
    :goto_71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    :cond_7c
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->setup:Z

    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsLicense;->loaded:Z

    .line 326
    return-void
.end method

.method public static reset()V
    .registers 2

    .line 294
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    const-string v1, "key"

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

    .line 296
    const-string v1, "ems"

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

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reload()V

    .line 299
    return-void
.end method

.method public static revoke()V
    .registers 0

    .line 289
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->reset()V

    .line 290
    return-void
.end method

.method public static server()Ljava/lang/String;
    .registers 3

    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    goto :goto_15

    :cond_13
    const-string v0, "https://license.biocode-bg.com"

    :goto_15
    return-object v0
.end method

.method public static setServer(Ljava/lang/String;)V
    .registers 3

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p0, :cond_d

    const-string p0, ""

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_11
    const-string v1, "server"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    return-void
.end method

.method static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 388
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_33

    aget-byte v4, p0, v3

    .line 391
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 393
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    return-object p0

    .line 394
    :catch_38
    move-exception p0

    .line 395
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static source()Ljava/lang/String;
    .registers 3

    .line 145
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

    .line 175
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    sget-object v1, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    .line 379
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 380
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 383
    :cond_19
    return-object v0
.end method
