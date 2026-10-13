.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;
.super Ljava/lang/Object;
.source "XiaomiBandCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;
    }
.end annotation


# static fields
.field private static final INFO:[B

.field private static final LEN_BYTES:I = 0x3

.field private static final NONCE:I = 0xc

.field private static final TAG:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->INFO:[B

    return-void

    :array_a
    .array-data 1
        0x6dt
        0x69t
        0x77t
        0x65t
        0x61t
        0x72t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aes([B)Ljavax/crypto/Cipher;
    .registers 5

    .prologue
    .line 168
    :try_start_0
    const-string v0, "AES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 169
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_11
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_11} :catch_12

    .line 170
    return-object v0

    .line 171
    :catch_12
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static aesCcmDecrypt([B[BI[B)[B
    .registers 13

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 84
    if-eqz p3, :cond_7

    array-length v0, p3

    if-ge v0, v8, :cond_f

    .line 85
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CCM frame too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aes([B)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 88
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->frameNonce([BI)[B

    move-result-object v2

    .line 89
    array-length v3, p3

    add-int/lit8 v3, v3, -0x4

    invoke-static {p3, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->part([BII)[B

    move-result-object v3

    .line 90
    array-length v4, v3

    new-array v4, v4, [B

    .line 91
    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->ctr(Ljavax/crypto/Cipher;[B[B[B)V

    .line 92
    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->cbcMac(Ljavax/crypto/Cipher;[B[B)[B

    move-result-object v5

    .line 93
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->counterBlock([BI)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->block(Ljavax/crypto/Cipher;[B)[B

    move-result-object v6

    move v0, v1

    move v2, v1

    .line 95
    :goto_32
    if-ge v0, v8, :cond_43

    .line 96
    aget-byte v1, v5, v0

    aget-byte v7, v6, v0

    xor-int/2addr v1, v7

    array-length v7, v3

    add-int/2addr v7, v0

    aget-byte v7, p3, v7

    xor-int/2addr v1, v7

    or-int/2addr v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_32

    .line 98
    :cond_43
    if-eqz v2, :cond_4d

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CCM tag mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4d
    return-object v4
.end method

.method static aesCcmEncrypt([B[BI[B)[B
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aes([B)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 71
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->frameNonce([BI)[B

    move-result-object v2

    .line 72
    invoke-static {v1, v2, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->cbcMac(Ljavax/crypto/Cipher;[B[B)[B

    move-result-object v3

    .line 73
    array-length v4, p3

    add-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    .line 74
    invoke-static {v1, v2, p3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->ctr(Ljavax/crypto/Cipher;[B[B[B)V

    .line 75
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->counterBlock([BI)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->block(Ljavax/crypto/Cipher;[B)[B

    move-result-object v1

    .line 76
    :goto_1d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2d

    .line 77
    array-length v2, p3

    add-int/2addr v2, v0

    aget-byte v5, v3, v0

    aget-byte v6, v1, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 79
    :cond_2d
    return-object v4
.end method

.method private static block(Ljavax/crypto/Cipher;[B)[B
    .registers 4

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 179
    :catch_5
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static bytesEqual([B[B)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 105
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_a

    .line 112
    :cond_9
    :goto_9
    return v1

    :cond_a
    move v0, v1

    move v2, v1

    .line 109
    :goto_c
    array-length v3, p0

    if-ge v0, v3, :cond_18

    .line 110
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 112
    :cond_18
    if-nez v2, :cond_9

    const/4 v1, 0x1

    goto :goto_9
.end method

.method private static cbcMac(Ljavax/crypto/Cipher;[B[B)[B
    .registers 10

    .prologue
    const/16 v6, 0x10

    const/4 v1, 0x0

    .line 150
    new-array v2, v6, [B

    .line 151
    const/16 v0, 0xa

    aput-byte v0, v2, v1

    .line 152
    const/4 v0, 0x1

    const/16 v3, 0xc

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 153
    :goto_10
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1f

    .line 154
    rsub-int/lit8 v3, v0, 0xf

    array-length v4, p2

    mul-int/lit8 v5, v0, 0x8

    ushr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 156
    :cond_1f
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->block(Ljavax/crypto/Cipher;[B)[B

    move-result-object v2

    move v0, v1

    .line 157
    :goto_24
    array-length v3, p2

    if-ge v0, v3, :cond_43

    move v3, v1

    .line 158
    :goto_28
    if-ge v3, v6, :cond_3c

    add-int v4, v0, v3

    array-length v5, p2

    if-ge v4, v5, :cond_3c

    .line 159
    aget-byte v4, v2, v3

    add-int v5, v0, v3

    aget-byte v5, p2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 161
    :cond_3c
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->block(Ljavax/crypto/Cipher;[B)[B

    move-result-object v2

    .line 157
    add-int/lit8 v0, v0, 0x10

    goto :goto_24

    .line 163
    :cond_43
    return-object v2
.end method

.method static computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [[B

    aput-object p1, v0, v3

    aput-object p2, v0, v5

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->INFO:[B

    const/16 v2, 0x28

    invoke-static {v0, p0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hkdf([B[B[BI)[B

    move-result-object v0

    .line 59
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;-><init>()V

    .line 60
    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->part([BII)[B

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    .line 61
    invoke-static {v0, v4, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->part([BII)[B

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    .line 62
    const/16 v2, 0x20

    invoke-static {v0, v2, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->part([BII)[B

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    .line 63
    const/16 v2, 0x24

    invoke-static {v0, v2, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->part([BII)[B

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 64
    iput v3, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 65
    iput v5, v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 66
    return-object v1
.end method

.method private static counterBlock([BI)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 129
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 130
    const/4 v2, 0x2

    aput-byte v2, v1, v0

    .line 131
    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_e
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1d

    .line 133
    rsub-int/lit8 v2, v0, 0xf

    mul-int/lit8 v3, v0, 0x8

    ushr-int v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 135
    :cond_1d
    return-object v1
.end method

.method private static ctr(Ljavax/crypto/Cipher;[B[B[B)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 140
    const/4 v0, 0x1

    move v1, v2

    :goto_3
    array-length v3, p2

    if-ge v1, v3, :cond_2c

    .line 141
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->counterBlock([BI)[B

    move-result-object v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->block(Ljavax/crypto/Cipher;[B)[B

    move-result-object v4

    move v3, v2

    .line 142
    :goto_f
    const/16 v5, 0x10

    if-ge v3, v5, :cond_27

    add-int v5, v1, v3

    array-length v6, p2

    if-ge v5, v6, :cond_27

    .line 143
    add-int v5, v1, v3

    add-int v6, v1, v3

    aget-byte v6, p2, v6

    aget-byte v7, v4, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 140
    :cond_27
    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 146
    :cond_2c
    return-void
.end method

.method private static frameNonce([BI)[B
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 118
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 119
    const/4 v1, 0x4

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    const/16 v1, 0x8

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 121
    const/16 v1, 0x9

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    const/16 v1, 0xa

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    const/16 v1, 0xb

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    return-object v0
.end method

.method static hkdf([B[B[BI)[B
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v4

    .line 41
    new-array v5, p3, [B

    .line 42
    new-array v3, v2, [B

    .line 44
    const/4 v0, 0x1

    move v1, v2

    :goto_b
    if-ge v1, p3, :cond_35

    .line 45
    array-length v6, v3

    array-length v7, p2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [B

    .line 46
    array-length v7, v3

    invoke-static {v3, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    array-length v3, v3

    array-length v7, p2

    invoke-static {p2, v2, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    int-to-byte v7, v0

    aput-byte v7, v6, v3

    .line 49
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v3

    .line 50
    array-length v6, v3

    sub-int v7, p3, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 51
    invoke-static {v3, v2, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    add-int/2addr v1, v6

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 54
    :cond_35
    return-object v5
.end method

.method static hmacSha256([B[B)[B
    .registers 5

    .prologue
    .line 30
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 31
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 32
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_13
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    return-object v0

    .line 33
    :catch_15
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static part([BII)[B
    .registers 5

    .prologue
    .line 185
    new-array v0, p2, [B

    .line 186
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    return-object v0
.end method
