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

    .prologue
    const/4 v1, 0x4

    .line 13
    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->ACK_FRAME:[B

    .line 14
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_START_ACK:[B

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming;->CHUNK_END_ACK:[B

    return-void

    .line 13
    nop

    :array_18
    .array-data 1
        0x0t
        0x0t
        0x3t
        0x0t
    .end array-data

    .line 14
    :array_1e
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 15
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

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildEncFrame([BI)[B
    .registers 6

    .prologue
    const/4 v1, 0x2

    .line 57
    array-length v0, p0

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    .line 58
    aput-byte v1, v0, v1

    .line 59
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 60
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    int-to-short v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x6

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-object v0
.end method

.method static buildPlainFrame([B)[B
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 49
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 50
    aput-byte v2, v0, v2

    .line 51
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 52
    const/4 v1, 0x0

    const/4 v2, 0x4

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-object v0
.end method

.method static parseFrame([B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 22
    if-eqz v3, :cond_27

    .line 23
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [B

    .line 24
    array-length v2, v0

    invoke-static {p0, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkData(I[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v0

    .line 45
    :goto_26
    return-object v0

    .line 27
    :cond_27
    aget-byte v3, p0, v6

    and-int/lit16 v3, v3, 0xff

    .line 28
    if-nez v3, :cond_40

    .line 29
    aget-byte v3, p0, v5

    if-ne v3, v0, :cond_3e

    .line 30
    :goto_31
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 31
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkStart(ZI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v0

    goto :goto_26

    :cond_3e
    move v0, v1

    .line 29
    goto :goto_31

    .line 33
    :cond_40
    if-ne v3, v0, :cond_4b

    .line 34
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->chunkAck(I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v0

    goto :goto_26

    .line 36
    :cond_4b
    if-ne v3, v6, :cond_61

    .line 37
    aget-byte v2, p0, v5

    if-ne v2, v0, :cond_5f

    .line 38
    :goto_51
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    new-array v2, v2, [B

    .line 39
    array-length v3, v2

    invoke-static {p0, v7, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->single(Z[B)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v0

    goto :goto_26

    :cond_5f
    move v0, v1

    .line 37
    goto :goto_51

    .line 42
    :cond_61
    if-ne v3, v5, :cond_6c

    .line 43
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->ack(I)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v0

    goto :goto_26

    .line 45
    :cond_6c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;->unknown()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming$Frame;

    move-result-object v0

    goto :goto_26
.end method
