.class final Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;
.super Ljava/lang/Object;
.source "XiaomiBandProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs concat([[B)[B
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 114
    move v0, v1

    move v2, v1

    .line 115
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_d

    .line 116
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 118
    :cond_d
    new-array v3, v2, [B

    move v0, v1

    move v2, v1

    .line 120
    :goto_11
    array-length v4, p0

    if-ge v0, v4, :cond_23

    .line 121
    aget-object v4, p0, v0

    aget-object v5, p0, v0

    array-length v5, v5

    invoke-static {v4, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/2addr v2, v4

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 124
    :cond_23
    return-object v3
.end method

.method private static fieldTag(II)[B
    .registers 3

    .prologue
    .line 128
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintEncode(I)[B

    move-result-object v0

    return-object v0
.end method

.method static protoFieldBytes(I[B)[B
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->fieldTag(II)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintEncode(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static protoFieldFloat(IF)[B
    .registers 6

    .prologue
    .line 63
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 65
    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->fieldTag(II)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static protoFieldMessage(I[B)[B
    .registers 3

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static protoFieldSint32(II)[B
    .registers 4

    .prologue
    .line 50
    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    .line 51
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldVarint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static protoFieldString(ILjava/lang/String;)[B
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static protoFieldVarint(II)[B
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [[B

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->fieldTag(II)[B

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintEncode(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static protoParse([B)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 75
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_77

    .line 76
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    move-result-object v0

    .line 77
    iget v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 78
    iget v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    ushr-int/lit8 v5, v3, 0x3

    .line 79
    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    and-int/lit8 v0, v0, 0x7

    .line 81
    if-nez v0, :cond_44

    .line 82
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    move-result-object v0

    .line 83
    iget v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 84
    iget v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    .line 103
    :goto_27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    if-nez v0, :cond_3f

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_3f
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 109
    goto :goto_7

    .line 85
    :cond_44
    const/4 v3, 0x2

    if-ne v0, v3, :cond_57

    .line 86
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    move-result-object v0

    .line 87
    iget v2, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 88
    iget v3, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    .line 89
    new-array v0, v3, [B

    .line 90
    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/2addr v2, v3

    move-object v3, v0

    .line 93
    goto :goto_27

    :cond_57
    const/4 v3, 0x5

    if-ne v0, v3, :cond_71

    .line 94
    const/4 v0, 0x4

    invoke-static {p0, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 96
    add-int/lit8 v2, v2, 0x4

    move-object v3, v0

    .line 97
    goto :goto_27

    :cond_71
    const/4 v3, 0x1

    if-ne v0, v3, :cond_77

    .line 98
    add-int/lit8 v0, v2, 0x8

    .line 99
    goto :goto_7

    .line 110
    :cond_77
    return-object v4
.end method

.method private static toBytes(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [B

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 134
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 136
    :cond_1e
    return-object v2
.end method

.method static varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 31
    move v0, v1

    move v2, v1

    .line 33
    :goto_3
    array-length v1, p0

    if-ge p1, v1, :cond_1f

    .line 34
    add-int/lit8 v3, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v4, v1, 0xff

    .line 35
    and-int/lit8 v1, v4, 0x7f

    shl-int/2addr v1, v0

    or-int/2addr v1, v2

    .line 36
    add-int/lit8 v0, v0, 0x7

    .line 37
    and-int/lit16 v2, v4, 0x80

    if-nez v2, :cond_1c

    .line 41
    :goto_16
    new-instance v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    invoke-direct {v0, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;-><init>(II)V

    return-object v0

    :cond_1c
    move v2, v1

    move p1, v3

    .line 40
    goto :goto_3

    :cond_1f
    move v1, v2

    move v3, p1

    goto :goto_16
.end method

.method static varintEncode(I)[B
    .registers 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :goto_5
    and-int/lit8 v1, p0, 0x7f

    .line 19
    ushr-int/lit8 p0, p0, 0x7

    .line 20
    if-eqz p0, :cond_16

    .line 21
    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 23
    :cond_16
    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method
