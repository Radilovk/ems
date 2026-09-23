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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs concat([[B)[B
    .registers 7

    .line 108
    nop

    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    array-length v3, p0

    if-ge v1, v3, :cond_e

    .line 110
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 112
    :cond_e
    new-array v1, v2, [B

    .line 113
    nop

    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    array-length v4, p0

    if-ge v2, v4, :cond_25

    .line 115
    aget-object v4, p0, v2

    aget-object v5, p0, v2

    array-length v5, v5

    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 118
    :cond_25
    return-object v1
.end method

.method private static fieldTag(II)[B
    .registers 2

    .line 122
    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintEncode(I)[B

    move-result-object p0

    return-object p0
.end method

.method static protoFieldBytes(I[B)[B
    .registers 5

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->fieldTag(II)[B

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    array-length p0, p1

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintEncode(I)[B

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static protoFieldFloat(IF)[B
    .registers 4

    .line 57
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 59
    const/4 p1, 0x2

    new-array p1, p1, [[B

    const/4 v1, 0x5

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->fieldTag(II)[B

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static protoFieldMessage(I[B)[B
    .registers 2

    .line 53
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static protoFieldString(ILjava/lang/String;)[B
    .registers 2

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->protoFieldBytes(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static protoFieldVarint(II)[B
    .registers 4

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->fieldTag(II)[B

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintEncode(I)[B

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static protoParse([B)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_77

    .line 70
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    move-result-object v2

    .line 71
    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 72
    iget v4, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    ushr-int/lit8 v4, v4, 0x3

    .line 73
    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    and-int/lit8 v2, v2, 0x7

    .line 75
    if-nez v2, :cond_27

    .line 76
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    move-result-object v2

    .line 77
    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 78
    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    goto :goto_54

    :cond_27
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3b

    .line 80
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    move-result-object v2

    .line 81
    iget v3, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->pos:I

    .line 82
    iget v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;->value:I

    .line 83
    new-array v5, v2, [B

    .line 84
    invoke-static {p0, v3, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    add-int/2addr v3, v2

    .line 86
    nop

    .line 87
    move-object v2, v5

    goto :goto_54

    :cond_3b
    const/4 v5, 0x5

    if-ne v2, v5, :cond_71

    .line 88
    const/4 v2, 0x4

    invoke-static {p0, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 90
    add-int/lit8 v3, v3, 0x4

    .line 91
    nop

    .line 97
    :goto_54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 98
    if-nez v5, :cond_6c

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_6c
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    move v2, v3

    goto :goto_7

    .line 91
    :cond_71
    const/4 v4, 0x1

    if-ne v2, v4, :cond_77

    .line 92
    add-int/lit8 v2, v3, 0x8

    .line 93
    goto :goto_7

    .line 104
    :cond_77
    return-object v0
.end method

.method private static toBytes(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 127
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 128
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 130
    :cond_1c
    return-object v0
.end method

.method static varintDecode([BI)Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;
    .registers 6

    .line 31
    nop

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    :goto_3
    array-length v2, p0

    if-ge p1, v2, :cond_1a

    .line 34
    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 35
    and-int/lit8 v3, p1, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    .line 36
    add-int/lit8 v1, v1, 0x7

    .line 37
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_18

    .line 38
    move p1, v2

    goto :goto_1a

    .line 40
    :cond_18
    move p1, v2

    goto :goto_3

    .line 41
    :cond_1a
    :goto_1a
    new-instance p0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;

    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto$IntResult;-><init>(II)V

    return-object p0
.end method

.method static varintEncode(I)[B
    .registers 3

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    nop

    .line 18
    :goto_6
    and-int/lit8 v1, p0, 0x7f

    .line 19
    ushr-int/lit8 p0, p0, 0x7

    .line 20
    if-eqz p0, :cond_17

    .line 21
    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_6

    .line 23
    :cond_17
    int-to-byte p0, v1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    nop

    .line 27
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method
