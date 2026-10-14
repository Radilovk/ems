.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;
.super Ljava/lang/Object;
.source "BluetensNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$ByName;
    }
.end annotation


# static fields
.field static final FILE:Ljava/lang/String; = "XNAT"

.field private static final JSON_MAX:I = 0x300000

.field public static final PKG:Ljava/lang/String; = "com.bluetens"

.field private static cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
            ">;"
        }
    .end annotation
.end field

.field private static cacheKey:Ljava/lang/String;

.field public static why:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->cacheKey:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->why:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apk(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.bluetens"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 60
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 62
    :goto_d
    return-object v0

    .line 61
    :catch_e
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static base(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 212
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 214
    if-lez v1, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method static bytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 198
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 201
    :goto_d
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1d

    .line 202
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_18

    goto :goto_d

    .line 206
    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 207
    throw v0

    .line 204
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_18

    move-result-object v0

    .line 206
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 204
    return-object v0
.end method

.method public static find(Ljava/util/List;Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;"
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    .line 171
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 176
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static folder(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 219
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    .line 221
    const-string v0, ""

    .line 224
    :goto_c
    return-object v0

    .line 223
    :cond_d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    .line 224
    const-string v1, "lok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_22
    const-string v0, ""

    goto :goto_c

    :cond_25
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->pretty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static installed(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 67
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->apk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static declared-synchronized load(Landroid/content/Context;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->apk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_14

    .line 74
    const-string v0, "none"

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->why:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_60

    .line 86
    :goto_12
    monitor-exit v2

    return-object v0

    .line 77
    :cond_14
    :try_start_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->cache:Ljava/util/List;

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 80
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->cache:Ljava/util/List;

    goto :goto_12

    .line 82
    :cond_4d
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->loadZip(Ljava/io/File;Z)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string v1, "empty"

    :goto_59
    sput-object v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->why:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->cache:Ljava/util/List;

    .line 85
    sput-object v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->cacheKey:Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_14 .. :try_end_5f} :catchall_60

    goto :goto_12

    .line 72
    :catchall_60
    move-exception v0

    monitor-exit v2

    throw v0

    .line 83
    :cond_63
    :try_start_63
    const-string v1, ""
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_60

    goto :goto_59
.end method

.method public static loadZip(Ljava/io/File;Z)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    const/4 v0, 0x0

    .line 94
    :try_start_6
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_121
    .catchall {:try_start_6 .. :try_end_b} :catchall_117

    .line 95
    :try_start_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 98
    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 99
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 100
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "assets/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 104
    const-string v7, ".lok"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 105
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_48} :catch_49
    .catchall {:try_start_b .. :try_end_48} :catchall_73

    goto :goto_19

    .line 131
    :catch_49
    move-exception v0

    move-object v0, v1

    .line 132
    :goto_4b
    :try_start_4b
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_11c

    .line 135
    if-eqz v0, :cond_53

    .line 136
    :try_start_50
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_111

    .line 141
    :cond_53
    :goto_53
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$ByName;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$ByName;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    return-object v2

    .line 106
    :cond_5c
    :try_start_5c
    const-string v7, ".json"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0x300000

    cmp-long v6, v6, v8

    if-gez v6, :cond_19

    .line 107
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_72} :catch_49
    .catchall {:try_start_5c .. :try_end_72} :catchall_73

    goto :goto_19

    .line 134
    :catchall_73
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    .line 135
    :goto_76
    if-eqz v3, :cond_7b

    .line 136
    :try_start_78
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_114

    .line 140
    :cond_7b
    :goto_7b
    throw v2

    .line 110
    :cond_7c
    :try_start_7c
    new-instance v5, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;

    invoke-direct {v5, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;-><init>(Z)V

    .line 111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_85
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_91} :catch_49
    .catchall {:try_start_7c .. :try_end_91} :catchall_73

    .line 113
    :try_start_91
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->bytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->read(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_a3} :catch_a4
    .catchall {:try_start_91 .. :try_end_a3} :catchall_73

    goto :goto_85

    .line 114
    :catch_a4
    move-exception v0

    goto :goto_85

    .line 117
    :cond_a6
    :try_start_a6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_aa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 118
    new-instance v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;-><init>()V

    .line 119
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    .line 120
    iget-object v6, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->base(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->base:Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_c9} :catch_49
    .catchall {:try_start_a6 .. :try_end_c9} :catchall_73

    .line 122
    :try_start_c9
    new-instance v6, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->bytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    const-string v7, "US-ASCII"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->parse(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->stats(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;)V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_db} :catch_124
    .catchall {:try_start_c9 .. :try_end_db} :catchall_73

    .line 126
    :try_start_db
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->base:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Names;->of(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 127
    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-eqz v0, :cond_f9

    const/4 v0, 0x0

    aget-object v0, v6, v0

    :goto_e9
    iput-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    aget-object v0, v6, v0

    if-eqz v0, :cond_100

    const/4 v0, 0x1

    aget-object v0, v6, v0

    :goto_f3
    iput-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    .line 129
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 127
    :cond_f9
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->base:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->pretty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e9

    .line 128
    :cond_100
    iget-object v0, v4, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->folder(Ljava/lang/String;)Ljava/lang/String;
    :try_end_105
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_105} :catch_49
    .catchall {:try_start_db .. :try_end_105} :catchall_73

    move-result-object v0

    goto :goto_f3

    .line 135
    :cond_107
    if-eqz v1, :cond_53

    .line 136
    :try_start_109
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_10c} :catch_10e

    goto/16 :goto_53

    .line 138
    :catch_10e
    move-exception v0

    goto/16 :goto_53

    :catch_111
    move-exception v0

    goto/16 :goto_53

    :catch_114
    move-exception v0

    goto/16 :goto_7b

    .line 134
    :catchall_117
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_76

    :catchall_11c
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_76

    .line 131
    :catch_121
    move-exception v1

    goto/16 :goto_4b

    .line 123
    :catch_124
    move-exception v0

    goto :goto_aa
.end method

.method static norm(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 251
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 252
    if-ltz v1, :cond_12

    .line 253
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_12
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".lok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 256
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_2b
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pretty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x20

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v3

    .line 231
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_37

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 233
    const/16 v6, 0x5f

    if-eq v4, v6, :cond_20

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_20

    const/16 v6, 0x2e

    if-ne v4, v6, :cond_21

    :cond_20
    move v4, v3

    .line 236
    :cond_21
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 237
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    :cond_30
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_a

    .line 242
    :cond_37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " +"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4e

    .line 246
    :goto_4d
    return-object p0

    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4d
.end method

.method public static read(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->apk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_9

    if-nez p1, :cond_a

    .line 157
    :cond_9
    :goto_9
    return-object v0

    .line 153
    :cond_a
    :try_start_a
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_23
    .catchall {:try_start_a .. :try_end_f} :catchall_2d

    .line 154
    :try_start_f
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->entry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_1b

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->bytes(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_3c
    .catchall {:try_start_f .. :try_end_1a} :catchall_38

    move-result-object v0

    .line 160
    :cond_1b
    if-eqz v1, :cond_9

    .line 161
    :try_start_1d
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_9

    .line 163
    :catch_21
    move-exception v1

    goto :goto_9

    .line 156
    :catch_23
    move-exception v1

    move-object v1, v0

    .line 160
    :goto_25
    if-eqz v1, :cond_9

    .line 161
    :try_start_27
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_9

    .line 163
    :catch_2b
    move-exception v1

    goto :goto_9

    .line 159
    :catchall_2d
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    .line 160
    :goto_30
    if-eqz v3, :cond_35

    .line 161
    :try_start_32
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36

    .line 165
    :cond_35
    :goto_35
    throw v2

    .line 163
    :catch_36
    move-exception v0

    goto :goto_35

    .line 159
    :catchall_38
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_30

    .line 156
    :catch_3c
    move-exception v2

    goto :goto_25
.end method

.method static stats(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;)V
    .registers 13

    .prologue
    const v5, 0x7fffffff

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->ms:D

    .line 182
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v5

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    .line 183
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 184
    const/4 v8, 0x1

    iget v9, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    int-to-float v9, v9

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 185
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 186
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 187
    iget v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_25

    .line 190
    :cond_4f
    if-ne v4, v5, :cond_58

    :goto_51
    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzLo:I

    .line 191
    iput v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->hzHi:I

    .line 192
    iput v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->usHi:I

    .line 193
    return-void

    :cond_58
    move v2, v4

    .line 190
    goto :goto_51
.end method
