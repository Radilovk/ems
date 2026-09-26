.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;
.super Ljava/lang/Object;
.source "XiaomiBandFraming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    }
.end annotation


# static fields
.field static final ACK_FRAME:[B

.field static final CHUNK_END_ACK:[B

.field static final CHUNK_START_ACK:[B

.field static final FRAME_ACK:I = 0x3

.field static final FRAME_CHUNKED_ACK:I = 0x1

.field static final FRAME_CHUNKED_START:I = 0x0

.field static final FRAME_SINGLE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    .line 14
    new-array v1, v0, [B

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    .line 15
    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    return-void

    nop

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x3t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_24
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildEncFrame([BI)[B
    .registers 6

    .line 57
    array-length v0, p0

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 58
    const/4 v2, 0x2

    aput-byte v2, v0, v2

    .line 59
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 60
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-short p1, p1

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 61
    array-length p1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-object v0
.end method

.method static buildPlainFrame([B)[B
    .registers 5

    .line 49
    array-length v0, p0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 50
    const/4 v2, 0x2

    aput-byte v2, v0, v2

    .line 51
    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 52
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-object v0
.end method

.method static parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 9

    .line 20
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 22
    const/4 v4, 0x2

    if-eqz v2, :cond_22

    .line 23
    array-length v0, p0

    sub-int/2addr v0, v4

    new-array v3, v0, [B

    .line 24
    invoke-static {p0, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkData(I[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p0

    return-object p0

    .line 27
    :cond_22
    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    .line 28
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v2, :cond_3a

    .line 29
    aget-byte p0, p0, v6

    if-ne p0, v7, :cond_30

    const/4 v1, 0x1

    .line 30
    :cond_30
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    and-int/2addr p0, v3

    .line 31
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkStart(ZI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p0

    return-object p0

    .line 33
    :cond_3a
    if-ne v2, v7, :cond_45

    .line 34
    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkAck(I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p0

    return-object p0

    .line 36
    :cond_45
    if-ne v2, v4, :cond_59

    .line 37
    aget-byte v0, p0, v6

    if-ne v0, v7, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v7, 0x0

    .line 38
    :goto_4d
    array-length v0, p0

    sub-int/2addr v0, v5

    new-array v2, v0, [B

    .line 39
    invoke-static {p0, v5, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-static {v7, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->single(Z[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p0

    return-object p0

    .line 42
    :cond_59
    if-ne v2, v6, :cond_64

    .line 43
    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->ack(I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p0

    return-object p0

    .line 45
    :cond_64
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->unknown()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object p0

    return-object p0
.end method
