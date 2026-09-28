.class public final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;
    }
.end annotation


# static fields
.field private static final DETAIL:Ljava/util/regex/Pattern;

.field private static final DIRS:[Ljava/lang/String;

.field private static final D_KEY:Ljava/util/regex/Pattern;

.field private static final D_MAC:Ljava/util/regex/Pattern;

.field private static final D_TOKEN:Ljava/util/regex/Pattern;

.field private static final KEY_PRIMARY:Ljava/util/regex/Pattern;

.field private static final KEY_TOKEN:Ljava/util/regex/Pattern;

.field private static final MAC_COLON:Ljava/util/regex/Pattern;

.field private static final MAC_KEYED:Ljava/util/regex/Pattern;

.field private static final MAX_FILE:J = 0x4000000L

.field private static final REQ:I = 0x5a9

.field private static final TAG:Ljava/lang/String; = "xems_mifit_log_pick"

.field private static pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const-string v0, "(?i)\"?(?:encryptKey|encrypt_key|authKey|auth_key)\"?\\s*[:=]\\s*\"?([0-9a-f]{32})(?![0-9a-f])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_PRIMARY:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "(?i)\"token\"\\s*[:=]\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_TOKEN:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "(?i)(?<![0-9a-f:])((?:[0-9a-f]{2}:){5}[0-9a-f]{2})(?![0-9a-f:])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_COLON:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "(?i)\"(?:mac|bleMac|deviceMac|macAddress)\"\\s*[:=]\\s*\"([0-9a-f]{12})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_KEYED:Ljava/util/regex/Pattern;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sdcard/Download/wearablelog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/storage/emulated/0/Download/wearablelog"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sdcard/Android/data/com.xiaomi.wearable/files/log"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sdcard/Android/data/com.mi.health/files/log"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sdcard/Android/data/com.xiaomi.wearable/files"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sdcard/Android/data/com.mi.health/files"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    .line 78
    const-string v0, "\"detail\"\\s*:\\s*\\{([^{}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DETAIL:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "(?i)\"encrypt_key\"\\s*:\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "(?i)\"token\"\\s*:\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_TOKEN:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "(?i)\"mac\"\\s*:\\s*\"((?:[0-9a-f]{2}:){5}[0-9a-f]{2})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    return-object v0
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    .registers 1

    .prologue
    .line 27
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    return-object p0
.end method

.method private static collect(Ljava/io/File;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    move-object v1, v0

    .line 152
    :goto_6
    if-eqz v1, :cond_b

    const/4 v0, 0x2

    if-le p2, v0, :cond_f

    .line 165
    :cond_b
    return-void

    .line 150
    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_6

    .line 155
    :cond_f
    const/4 v0, 0x0

    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 156
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 157
    aget-object v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->collect(Ljava/io/File;Ljava/util/List;I)V

    .line 155
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 159
    :cond_25
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_22

    .line 161
    :cond_49
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method private static colon(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 211
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    const/4 v0, 0x0

    :goto_c
    const/16 v3, 0xc

    if-ge v0, v3, :cond_1f

    .line 214
    if-lez v0, :cond_17

    .line 215
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    :cond_17
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 219
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pick(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 6

    .prologue
    .line 228
    :try_start_0
    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 230
    const-string v1, "xems_mifit_log_pick"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_1c

    .line 232
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 233
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 235
    :cond_1c
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;-><init>()V

    const-string v3, "xems_mifit_log_pick"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 236
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_32

    .line 240
    :goto_31
    return-void

    .line 237
    :catch_32
    move-exception v0

    .line 238
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.pick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public static scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 178
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 180
    :cond_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_f

    .line 184
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanDevices(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 185
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_PRIMARY:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 186
    :goto_26
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 187
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 188
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    goto :goto_26

    .line 190
    :cond_3c
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_48

    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    if-eqz v2, :cond_63

    .line 191
    :cond_48
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 192
    :goto_4e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 193
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 194
    iput-boolean v5, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    goto :goto_4e

    .line 197
    :cond_63
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_KEYED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 198
    :goto_69
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 199
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->colon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    goto :goto_69

    .line 201
    :cond_7a
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_f

    .line 202
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_COLON:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 203
    :goto_8e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 204
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    goto :goto_8e

    .line 208
    :cond_a1
    return-void
.end method

.method private static scanDevices(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 84
    const-string v0, "\"detail\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    .line 113
    :cond_9
    return-void

    .line 87
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DETAIL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 88
    :cond_10
    :goto_10
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_40

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_40
    :goto_40
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_10

    .line 101
    const-string v2, ""

    .line 102
    const-string v4, "\"name\":\""

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    .line 103
    if-ltz v4, :cond_8b

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v4

    const/16 v6, 0x320

    if-ge v5, v6, :cond_8b

    .line 104
    add-int/lit8 v4, v4, 0x8

    .line 105
    const/16 v5, 0x22

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 106
    if-le v5, v4, :cond_8b

    .line 107
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 110
    :cond_8b
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v4, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 91
    :cond_a2
    const-string v0, ""

    goto :goto_2a

    .line 94
    :cond_a5
    const-string v0, ""

    goto :goto_40

    .line 97
    :cond_a8
    const-string v1, ""

    goto :goto_56
.end method

.method public static scanLocal()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 121
    new-instance v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;-><init>()V

    .line 122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 123
    :goto_d
    sget-object v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_21

    .line 124
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->collect(Ljava/io/File;Ljava/util/List;I)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 126
    :cond_21
    new-array v0, v1, [Ljava/io/File;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 127
    new-instance v4, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;

    invoke-direct {v4, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$1;)V

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 128
    array-length v4, v0

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 129
    :goto_38
    if-ge v1, v4, :cond_5f

    .line 131
    :try_start_3a
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x4000000

    cmp-long v5, v6, v8

    if-lez v5, :cond_4a

    .line 129
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 134
    :cond_4a
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v6, v0, v1

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_51} :catch_58

    .line 136
    :try_start_51
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5a

    .line 138
    :try_start_54
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_47

    .line 140
    :catch_58
    move-exception v5

    goto :goto_47

    .line 138
    :catchall_5a
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 139
    throw v6
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5f} :catch_58

    .line 143
    :cond_5f
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_67

    move-object v0, v2

    :goto_66
    return-object v0

    :cond_67
    move-object v0, v3

    goto :goto_66
.end method
