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

    .line 19
    const-string v0, "miwear-auth"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->MIWEAR_AUTH:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesBlock([B[B)[B
    .registers 7

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

    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v3, 0x10

    new-array v4, v3, [B

    invoke-direct {p0, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 138
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 139
    const/4 p1, 0x0

    invoke-static {p0, p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p0
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_23} :catch_47
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_23} :catch_40
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_23} :catch_39
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_23} :catch_32
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_23} :catch_2b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_23} :catch_24

    return-object p0

    .line 150
    :catch_24
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 148
    :catch_2b
    move-exception p0

    .line 149
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 146
    :catch_32
    move-exception p0

    .line 147
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 144
    :catch_39
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 142
    :catch_40
    move-exception p0

    .line 143
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 140
    :catch_47
    move-exception p0

    .line 141
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static aesCcmCtr([B[B[BI)[B
    .registers 13

    .line 91
    nop

    .line 92
    array-length v0, p2

    new-array v0, v0, [B

    .line 93
    nop

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p2

    if-ge v2, v3, :cond_4d

    .line 95
    div-int/lit8 v3, v2, 0x10

    add-int/2addr v3, p3

    .line 96
    const/16 v4, 0x10

    new-array v5, v4, [B

    .line 97
    const/4 v6, 0x2

    aput-byte v6, v5, v1

    .line 98
    const/16 v6, 0xc

    const/4 v7, 0x1

    invoke-static {p1, v1, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    const/16 v6, 0xd

    shr-int/lit8 v7, v3, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 100
    const/16 v6, 0xe

    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 101
    const/16 v6, 0xf

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    .line 102
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesBlock([B[B)[B

    move-result-object v3

    .line 103
    const/4 v5, 0x0

    :goto_38
    if-ge v5, v4, :cond_4a

    add-int v6, v2, v5

    array-length v7, p2

    if-ge v6, v7, :cond_4a

    .line 104
    aget-byte v7, p2, v6

    aget-byte v8, v3, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 94
    :cond_4a
    add-int/lit8 v2, v2, 0x10

    goto :goto_7

    .line 107
    :cond_4d
    return-object v0
.end method

.method static aesCcmDecrypt([B[BI[B)[B
    .registers 7

    .line 70
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->buildPacketNonce([BI)[B

    move-result-object p1

    .line 71
    nop

    .line 72
    array-length p2, p3

    const/4 v0, 0x4

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    invoke-static {p3, v1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p2

    .line 73
    array-length v2, p3

    sub-int/2addr v2, v0

    invoke-static {p3, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p3

    .line 74
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object p2

    .line 75
    invoke-static {p0, p1, p3, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object p3

    .line 76
    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmMac([B[B[BI)[B

    move-result-object p0

    .line 77
    invoke-static {p3, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->bytesEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 80
    return-object p2

    .line 78
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CCM tag mismatch"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static aesCcmEncrypt([B[BI[B)[B
    .registers 6

    .line 61
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->buildPacketNonce([BI)[B

    move-result-object p1

    .line 62
    nop

    .line 63
    const/4 p2, 0x4

    invoke-static {p0, p1, p3, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmMac([B[B[BI)[B

    move-result-object p2

    .line 64
    const/4 v0, 0x1

    invoke-static {p0, p1, p3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object p3

    .line 65
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesCcmCtr([B[B[BI)[B

    move-result-object p0

    .line 66
    const/4 p1, 0x2

    new-array p1, p1, [[B

    aput-object p3, p1, v1

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static aesCcmMac([B[B[BI)[B
    .registers 12

    .line 111
    nop

    .line 112
    add-int/lit8 v0, p3, -0x2

    div-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x3

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 113
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 114
    const/4 v3, 0x0

    aput-byte v0, v2, v3

    .line 115
    const/4 v0, 0x1

    const/16 v4, 0xc

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length p1, p2

    shr-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 v0, 0xd

    aput-byte p1, v2, v0

    .line 117
    array-length p1, p2

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 v0, 0xe

    aput-byte p1, v2, v0

    .line 118
    array-length p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/16 v0, 0xf

    aput-byte p1, v2, v0

    .line 119
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesBlock([B[B)[B

    move-result-object p1

    .line 120
    array-length v0, p2

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x10

    rem-int/2addr v0, v1

    .line 121
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v0, v2, [B

    .line 122
    array-length v4, p2

    invoke-static {p2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    const/4 p2, 0x0

    :goto_44
    if-ge p2, v2, :cond_5f

    .line 124
    new-array v4, v1, [B

    .line 125
    const/4 v5, 0x0

    :goto_49
    if-ge v5, v1, :cond_58

    .line 126
    add-int v6, p2, v5

    aget-byte v6, v0, v6

    aget-byte v7, p1, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 128
    :cond_58
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->aesBlock([B[B)[B

    move-result-object p1

    .line 123
    add-int/lit8 p2, p2, 0x10

    goto :goto_44

    .line 130
    :cond_5f
    invoke-static {p1, v3, p3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static buildPacketNonce([BI)[B
    .registers 5

    .line 84
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 85
    array-length v1, p0

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 87
    return-object v0
.end method

.method static bytesEqual([B[B)Z
    .registers 6

    .line 162
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_a

    goto :goto_1a

    .line 165
    :cond_a
    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_18

    .line 166
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_15

    .line 167
    return v0

    .line 165
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 170
    :cond_18
    const/4 p0, 0x1

    return p0

    .line 163
    :cond_1a
    :goto_1a
    return v0
.end method

.method static computeSessionKeys([B[B[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;
    .registers 11

    .line 36
    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p2

    .line 37
    invoke-static {p2, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object p0

    .line 38
    const/16 p2, 0x40

    new-array v1, p2, [B

    .line 39
    new-array v3, v2, [B

    .line 40
    nop

    .line 41
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    :goto_1a
    if-ge v4, p2, :cond_46

    .line 43
    const/4 v6, 0x3

    new-array v6, v6, [[B

    aput-object v3, v6, v2

    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->MIWEAR_AUTH:[B

    aput-object v3, v6, p1

    new-array v3, p1, [B

    int-to-byte v7, v5

    aput-byte v7, v3, v2

    aput-object v3, v6, v0

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v3

    .line 44
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->hmacSha256([B[B)[B

    move-result-object v3

    .line 45
    const/4 v6, 0x0

    :goto_35
    array-length v7, v3

    if-ge v6, v7, :cond_43

    if-ge v4, p2, :cond_43

    .line 46
    aget-byte v7, v3, v6

    aput-byte v7, v1, v4

    .line 45
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 48
    :cond_43
    add-int/lit8 v5, v5, 0x1

    .line 49
    goto :goto_1a

    .line 50
    :cond_46
    new-instance p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;

    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;-><init>()V

    .line 51
    const/16 p2, 0x10

    invoke-static {v1, v2, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decKey:[B

    .line 52
    invoke-static {v1, p2, p2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p2

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encKey:[B

    .line 53
    const/16 p2, 0x20

    const/4 v0, 0x4

    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p2

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decNonce:[B

    .line 54
    const/16 p2, 0x24

    invoke-static {v1, p2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto;->slice([BII)[B

    move-result-object p2

    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encNonce:[B

    .line 55
    iput v2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->decIndex:I

    .line 56
    iput p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto$SessionKeys;->encIndex:I

    .line 57
    return-object p0
.end method

.method static hmacSha256([B[B)[B
    .registers 5

    .line 25
    const-string v0, "HmacSHA256"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 26
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 27
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_12} :catch_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_12} :catch_13

    return-object p0

    .line 30
    :catch_13
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 28
    :catch_1a
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static slice([BII)[B
    .registers 5

    .line 156
    new-array v0, p2, [B

    .line 157
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return-object v0
.end method
