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
.field private static final MIWEAR_AUTH:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "miwear-auth"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->MIWEAR_AUTH:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesBlock([B[B)[B
    .registers 7

    .prologue
    .line 135
    :try_start_0
    const-string v0, "AES/CBC/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 136
    const/4 v1, 0x1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 138
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 139
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_24} :catch_26
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_24} :catch_2d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_24} :catch_34
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_24} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_24} :catch_42
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_24} :catch_49

    move-result-object v0

    return-object v0

    .line 140
    :catch_26
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 142
    :catch_2d
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 144
    :catch_34
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :catch_3b
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 148
    :catch_42
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    :catch_49
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static aesCcmCtr([B[B[BI)[B
    .registers 14

    .prologue
    const/16 v9, 0x10

    const/4 v1, 0x0

    .line 91
    const/4 v3, 0x2

    .line 92
    array-length v0, p2

    new-array v4, v0, [B

    move v0, v1

    .line 94
    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_4e

    .line 95
    div-int v2, v0, v9

    add-int/2addr v2, p3

    .line 96
    new-array v5, v9, [B

    .line 97
    aput-byte v3, v5, v1

    .line 98
    const/4 v6, 0x1

    const/16 v7, 0xc

    invoke-static {p1, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    const/16 v6, 0xd

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 100
    const/16 v6, 0xe

    shr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 101
    const/16 v6, 0xf

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 102
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesBlock([B[B)[B

    move-result-object v5

    move v2, v1

    .line 103
    :goto_36
    if-ge v2, v9, :cond_4c

    add-int v6, v0, v2

    array-length v7, p2

    if-ge v6, v7, :cond_4c

    .line 104
    add-int v6, v0, v2

    add-int v7, v0, v2

    aget-byte v7, p2, v7

    aget-byte v8, v5, v2

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 94
    :cond_4c
    add-int/2addr v0, v9

    goto :goto_8

    .line 107
    :cond_4e
    return-object v4
.end method

.method static aesCcmDecrypt([B[BI[B)[B
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->buildPacketNonce([BI)[B

    move-result-object v0

    .line 71
    const/4 v1, 0x4

    .line 72
    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {p3, v5, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v2

    .line 73
    array-length v3, p3

    sub-int/2addr v3, v1

    invoke-static {p3, v3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v3

    .line 74
    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object v2

    .line 75
    invoke-static {p0, v0, v3, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object v3

    .line 76
    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmMac([B[B[BI)[B

    move-result-object v0

    .line 77
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CCM tag mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2d
    return-object v2
.end method

.method static aesCcmEncrypt([B[BI[B)[B
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->buildPacketNonce([BI)[B

    move-result-object v0

    .line 62
    const/4 v1, 0x4

    .line 63
    invoke-static {p0, v0, p3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmMac([B[B[BI)[B

    move-result-object v1

    .line 64
    invoke-static {p0, v0, p3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object v2

    .line 65
    invoke-static {p0, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object v0

    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [[B

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static aesCcmMac([B[B[BI)[B
    .registers 13

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 111
    .line 112
    add-int/lit8 v0, p3, -0x2

    div-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 113
    new-array v2, v8, [B

    .line 114
    aput-byte v0, v2, v1

    .line 115
    const/4 v0, 0x1

    const/16 v3, 0xc

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    const/16 v0, 0xd

    array-length v3, p2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 117
    const/16 v0, 0xe

    array-length v3, p2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 118
    const/16 v0, 0xf

    array-length v3, p2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 119
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesBlock([B[B)[B

    move-result-object v2

    .line 120
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x10

    rem-int/lit8 v0, v0, 0x10

    .line 121
    array-length v3, p2

    add-int/2addr v0, v3

    new-array v4, v0, [B

    .line 122
    array-length v0, p2

    invoke-static {p2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 123
    :goto_46
    array-length v3, v4

    if-ge v0, v3, :cond_62

    .line 124
    new-array v5, v8, [B

    move v3, v1

    .line 125
    :goto_4c
    if-ge v3, v8, :cond_5b

    .line 126
    add-int v6, v0, v3

    aget-byte v6, v4, v6

    aget-byte v7, v2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 128
    :cond_5b
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesBlock([B[B)[B

    move-result-object v2

    .line 123
    add-int/lit8 v0, v0, 0x10

    goto :goto_46

    .line 130
    :cond_62
    invoke-static {v2, v1, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildPacketNonce([BI)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 84
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 85
    const/4 v1, 0x4

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 87
    return-object v0
.end method

.method static bytesEqual([B[B)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 162
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_a

    .line 170
    :cond_9
    :goto_9
    return v1

    :cond_a
    move v0, v1

    .line 165
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_17

    .line 166
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_9

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 170
    :cond_17
    const/4 v1, 0x1

    goto :goto_9
.end method

.method static computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;
    .registers 15

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x40

    const/16 v9, 0x10

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 36
    new-array v0, v11, [[B

    aput-object p1, v0, v1

    aput-object p2, v0, v4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 37
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v6

    .line 38
    new-array v7, v10, [B

    .line 39
    new-array v0, v1, [B

    move v2, v1

    move v3, v4

    move-object v5, v0

    .line 42
    :goto_1c
    if-ge v2, v10, :cond_49

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [[B

    aput-object v5, v0, v1

    sget-object v5, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->MIWEAR_AUTH:[B

    aput-object v5, v0, v4

    new-array v5, v4, [B

    int-to-byte v8, v3

    aput-byte v8, v5, v1

    aput-object v5, v0, v11

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    .line 44
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v5

    move v0, v1

    .line 45
    :goto_37
    array-length v8, v5

    if-ge v0, v8, :cond_45

    if-ge v2, v10, :cond_45

    .line 46
    aget-byte v8, v5, v0

    aput-byte v8, v7, v2

    .line 45
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 48
    :cond_45
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 49
    goto :goto_1c

    .line 50
    :cond_49
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;-><init>()V

    .line 51
    invoke-static {v7, v1, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    .line 52
    invoke-static {v7, v9, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    .line 53
    const/16 v2, 0x20

    const/4 v3, 0x4

    invoke-static {v7, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    .line 54
    const/16 v2, 0x24

    const/4 v3, 0x4

    invoke-static {v7, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v2

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 55
    iput v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 56
    iput v4, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 57
    return-object v0
.end method

.method static hmacSha256([B[B)[B
    .registers 5

    .prologue
    .line 25
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 26
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 27
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_15
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_13} :catch_1c

    move-result-object v0

    return-object v0

    .line 28
    :catch_15
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :catch_1c
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static slice([BII)[B
    .registers 5

    .prologue
    .line 156
    new-array v0, p2, [B

    .line 157
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return-object v0
.end method
