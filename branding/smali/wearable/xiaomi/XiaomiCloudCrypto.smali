.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;
.super Ljava/lang/Object;
.source "XiaomiCloudCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;
    }
.end annotation


# static fields
.field private static final B64:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 203
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b64decode(Ljava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 225
    const/16 v0, 0x80

    new-array v4, v0, [I

    move v0, v1

    .line 226
    :goto_6
    array-length v2, v4

    if-ge v0, v2, :cond_f

    .line 227
    const/4 v2, -0x1

    aput v2, v4, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v1

    .line 229
    :goto_10
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 230
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    aget-char v2, v2, v0

    aput v0, v4, v2

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 232
    :cond_1e
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 235
    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 237
    const/16 v6, 0x3d

    if-eq v1, v6, :cond_3c

    const/16 v6, 0x7f

    if-gt v1, v6, :cond_3c

    aget v6, v4, v1

    if-gez v6, :cond_40

    .line 235
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_26

    .line 240
    :cond_40
    shl-int/lit8 v3, v3, 0x6

    aget v1, v4, v1

    or-int/2addr v3, v1

    .line 241
    add-int/lit8 v2, v2, 0x6

    .line 242
    const/16 v1, 0x8

    if-lt v2, v1, :cond_3c

    .line 243
    add-int/lit8 v2, v2, -0x8

    .line 244
    shr-int v1, v3, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3c

    .line 247
    :cond_55
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static b64encode([B)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0x3d

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    const/4 v0, 0x0

    .line 208
    :goto_f
    add-int/lit8 v2, v0, 0x3

    array-length v3, p0

    if-gt v2, v3, :cond_5a

    .line 209
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 210
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v4, v2, 0x12

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v0, v0, 0x3

    .line 212
    goto :goto_f

    .line 213
    :cond_5a
    array-length v2, p0

    sub-int/2addr v2, v0

    .line 214
    const/4 v3, 0x1

    if-ne v2, v3, :cond_89

    .line 215
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 216
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    :cond_84
    :goto_84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_89
    const/4 v3, 0x2

    if-ne v2, v3, :cond_84

    .line 218
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    .line 219
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v3, v0, 0x12

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->B64:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84
.end method

.method static decryptResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 162
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->deriveRc4Key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->makeRc4(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->crypt([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8Wrap([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static deriveRc4Key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 92
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 93
    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    const-string v0, "SHA-256"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static digest(Ljava/lang/String;[B)[B
    .registers 4

    .prologue
    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 27
    :catch_9
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static encryptParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p4, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->deriveRc4Key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->sorted(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 140
    invoke-static {p0, p1, v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->sha1Sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "rc4_hash__"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->sorted(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 145
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->makeRc4(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;

    move-result-object v5

    .line 146
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 149
    const/4 v0, 0x0

    move v2, v0

    :goto_2c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_55

    .line 150
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->crypt([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2c

    .line 153
    :cond_55
    invoke-static {p0, p1, v6, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->sha1Sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 155
    const-string v2, "signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "_nonce"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v1
.end method

.method static generateNonce(J)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 100
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 101
    new-array v1, v6, [B

    .line 102
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 103
    invoke-static {v1, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 105
    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 106
    const/16 v2, 0x9

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 107
    const/16 v2, 0xa

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 108
    const/16 v2, 0xb

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 109
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 186
    if-lez v1, :cond_12

    .line 187
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 191
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeRc4(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;
    .registers 3

    .prologue
    .line 83
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;-><init>([B)V

    .line 84
    const/16 v1, 0x400

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto$RC4;->crypt([B)[B

    .line 85
    return-object v0
.end method

.method static md5Upper(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 41
    const-string v0, "MD5"

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const/4 v0, 0x0

    :goto_14
    array-length v3, v1

    if-ge v0, v3, :cond_33

    .line 44
    aget-byte v3, v1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 46
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static sha1Sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_16
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 119
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 123
    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_63

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 126
    :cond_63
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v0, "SHA-1"

    const-string v1, "&"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->utf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->digest(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudCrypto;->b64encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static signingPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 169
    if-ltz v0, :cond_c

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method private static sorted(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 176
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    const/4 v0, 0x0

    move v2, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_30

    .line 178
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 180
    :cond_30
    return-object v4
.end method

.method static utf8(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 34
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 35
    :catch_7
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static utf8Wrap([B)[C
    .registers 3

    .prologue
    .line 196
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    .line 197
    :catch_c
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
