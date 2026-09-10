.class public Lcom/isaigu/gymapp/utils/XXTEATool;
.super Ljava/lang/Object;
.source "XXTEATool.java"


# static fields
.field private static DELTA:J

.field private static MIN_LENGTH:I

.field private static SPECIAL_CHAR:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    const-wide v0, 0x9e3779b9L

    sput-wide v0, Lcom/isaigu/gymapp/utils/XXTEATool;->DELTA:J

    .line 167
    const/16 v0, 0x20

    sput v0, Lcom/isaigu/gymapp/utils/XXTEATool;->MIN_LENGTH:I

    .line 168
    const/4 v0, 0x0

    sput-char v0, Lcom/isaigu/gymapp/utils/XXTEATool;->SPECIAL_CHAR:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 23
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/utils/XXTEATool;->MIN_LENGTH:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    nop

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/XXTEATool;->ToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/utils/XXTEATool;->MIN_LENGTH:I

    .line 28
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/utils/XXTEATool;->PadRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 29
    const-string v2, "UTF8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/XXTEATool;->ToLongArray([B)[J

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/XXTEATool;->TEADecrypt([J[J)[J

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/XXTEATool;->ToByteArray([J)[B

    move-result-object v0

    .line 30
    .local v0, "code":[B
    new-instance v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 24
    .end local v0    # "code":[B
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 15
    sget v0, Lcom/isaigu/gymapp/utils/XXTEATool;->MIN_LENGTH:I

    .line 16
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/utils/XXTEATool;->PadRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "UTF8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/XXTEATool;->ToLongArray([B)[J

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/utils/XXTEATool;->MIN_LENGTH:I

    .line 18
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/utils/XXTEATool;->PadRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/XXTEATool;->ToLongArray([B)[J

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/XXTEATool;->TEAEncrypt([J[J)[J

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/XXTEATool;->ToHexString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static PadLeft(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 160
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_0
    return-object p0
.end method

.method private static PadRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 153
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Lcom/isaigu/gymapp/utils/XXTEATool;->SPECIAL_CHAR:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_0
    return-object p0
.end method

.method private static TEADecrypt([J[J)[J
    .locals 35
    .param p0, "data"    # [J
    .param p1, "key"    # [J

    .line 58
    move-object/from16 v0, p0

    array-length v1, v0

    .line 59
    .local v1, "n":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 60
    return-object v0

    .line 63
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-wide v2, v0, v3

    .local v2, "z":J
    const/4 v4, 0x0

    aget-wide v5, v0, v4

    .local v5, "y":J
    const-wide/16 v7, 0x0

    .line 64
    .local v7, "sum":J
    const/16 v9, 0x34

    div-int/2addr v9, v1

    add-int/lit8 v9, v9, 0x6

    int-to-long v9, v9

    .line 65
    .local v9, "q":J
    sget-wide v11, Lcom/isaigu/gymapp/utils/XXTEATool;->DELTA:J

    mul-long v11, v11, v9

    .line 66
    .end local v7    # "sum":J
    .local v11, "sum":J
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v13, v11, v7

    if-eqz v13, :cond_2

    .line 67
    const/4 v13, 0x2

    shr-long v14, v11, v13

    const-wide/16 v16, 0x3

    and-long v14, v14, v16

    .line 68
    .local v14, "e":J
    add-int/lit8 v4, v1, -0x1

    move-wide/from16 v18, v14

    .end local v14    # "e":J
    .local v18, "e":J
    int-to-long v13, v4

    .local v13, "p":J
    :goto_1
    const/4 v4, 0x4

    const/4 v15, 0x3

    const/16 v20, 0x5

    cmp-long v21, v13, v7

    if-lez v21, :cond_1

    .line 69
    const-wide/16 v21, 0x1

    sub-long v7, v13, v21

    long-to-int v8, v7

    aget-wide v2, v0, v8

    .line 70
    long-to-int v7, v13

    aget-wide v25, v0, v7

    shr-long v27, v2, v20

    const/4 v8, 0x2

    shl-long v29, v5, v8

    xor-long v27, v27, v29

    shr-long v29, v5, v15

    shl-long v31, v2, v4

    xor-long v29, v29, v31

    add-long v27, v27, v29

    xor-long v29, v11, v5

    and-long v31, v13, v16

    move-wide/from16 v33, v9

    .end local v9    # "q":J
    .local v33, "q":J
    xor-long v8, v31, v18

    long-to-int v4, v8

    aget-wide v8, p1, v4

    xor-long/2addr v8, v2

    add-long v29, v29, v8

    xor-long v8, v27, v29

    sub-long v25, v25, v8

    aput-wide v25, v0, v7

    move-wide/from16 v5, v25

    .line 68
    sub-long v13, v13, v21

    move-wide/from16 v9, v33

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 73
    .end local v33    # "q":J
    .restart local v9    # "q":J
    :cond_1
    move-wide/from16 v33, v9

    .end local v9    # "q":J
    .restart local v33    # "q":J
    add-int/lit8 v7, v1, -0x1

    aget-wide v2, v0, v7

    .line 74
    const/4 v7, 0x0

    aget-wide v8, v0, v7

    shr-long v20, v2, v20

    const/4 v7, 0x2

    shl-long v22, v5, v7

    xor-long v20, v20, v22

    shr-long v22, v5, v15

    shl-long v24, v2, v4

    xor-long v22, v22, v24

    add-long v20, v20, v22

    xor-long v22, v11, v5

    and-long v15, v13, v16

    move-wide/from16 v24, v5

    .end local v5    # "y":J
    .local v24, "y":J
    xor-long v4, v15, v18

    long-to-int v5, v4

    aget-wide v4, p1, v5

    xor-long/2addr v4, v2

    add-long v22, v22, v4

    xor-long v4, v20, v22

    sub-long/2addr v8, v4

    const/4 v4, 0x0

    aput-wide v8, v0, v4

    move-wide v5, v8

    .line 76
    .end local v24    # "y":J
    .restart local v5    # "y":J
    sget-wide v7, Lcom/isaigu/gymapp/utils/XXTEATool;->DELTA:J

    sub-long/2addr v11, v7

    move-wide/from16 v9, v33

    goto/16 :goto_0

    .line 79
    .end local v13    # "p":J
    .end local v18    # "e":J
    .end local v33    # "q":J
    .restart local v9    # "q":J
    :cond_2
    return-object v0
.end method

.method private static TEAEncrypt([J[J)[J
    .locals 33
    .param p0, "data"    # [J
    .param p1, "key"    # [J

    .line 34
    move-object/from16 v0, p0

    array-length v1, v0

    .line 35
    .local v1, "n":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 36
    return-object v0

    .line 39
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-wide v2, v0, v3

    .local v2, "z":J
    const/4 v4, 0x0

    aget-wide v5, v0, v4

    .local v5, "y":J
    const-wide/16 v7, 0x0

    .line 40
    .local v7, "sum":J
    const/16 v9, 0x34

    div-int/2addr v9, v1

    add-int/lit8 v9, v9, 0x6

    int-to-long v9, v9

    .line 41
    .local v9, "q":J
    :goto_0
    const-wide/16 v11, 0x1

    sub-long v13, v9, v11

    .end local v9    # "q":J
    .local v13, "q":J
    const-wide/16 v15, 0x0

    cmp-long v17, v9, v15

    if-lez v17, :cond_2

    .line 42
    sget-wide v9, Lcom/isaigu/gymapp/utils/XXTEATool;->DELTA:J

    add-long/2addr v7, v9

    .line 43
    const/4 v9, 0x2

    shr-long v15, v7, v9

    const-wide/16 v17, 0x3

    and-long v15, v15, v17

    .line 44
    .local v15, "e":J
    const-wide/16 v19, 0x0

    move-wide/from16 v31, v5

    move-wide/from16 v4, v19

    move-wide/from16 v19, v31

    .end local v5    # "y":J
    .local v4, "p":J
    .local v19, "y":J
    :goto_1
    add-int/lit8 v6, v1, -0x1

    int-to-long v9, v6

    const/4 v6, 0x4

    const/16 v23, 0x3

    const/16 v24, 0x5

    cmp-long v25, v4, v9

    if-gez v25, :cond_1

    .line 45
    add-long v9, v4, v11

    long-to-int v10, v9

    aget-wide v19, v0, v10

    .line 46
    long-to-int v9, v4

    aget-wide v25, v0, v9

    shr-long v27, v2, v24

    const/4 v10, 0x2

    shl-long v29, v19, v10

    xor-long v27, v27, v29

    shr-long v23, v19, v23

    shl-long v29, v2, v6

    xor-long v23, v23, v29

    add-long v27, v27, v23

    xor-long v23, v7, v19

    and-long v29, v4, v17

    xor-long v11, v29, v15

    long-to-int v6, v11

    aget-wide v10, p1, v6

    xor-long/2addr v10, v2

    add-long v23, v23, v10

    xor-long v10, v27, v23

    add-long v25, v25, v10

    aput-wide v25, v0, v9

    move-wide/from16 v2, v25

    .line 44
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    move-wide v11, v9

    const/4 v9, 0x2

    goto :goto_1

    .line 49
    :cond_1
    const/4 v9, 0x0

    aget-wide v10, v0, v9

    .line 50
    .end local v19    # "y":J
    .local v10, "y":J
    add-int/lit8 v12, v1, -0x1

    aget-wide v19, v0, v12

    shr-long v24, v2, v24

    const/16 v21, 0x2

    shl-long v21, v10, v21

    xor-long v21, v24, v21

    shr-long v23, v10, v23

    shl-long v25, v2, v6

    xor-long v23, v23, v25

    add-long v21, v21, v23

    xor-long v23, v7, v10

    and-long v17, v4, v17

    move-wide/from16 v26, v10

    .end local v10    # "y":J
    .local v26, "y":J
    xor-long v9, v17, v15

    long-to-int v6, v9

    aget-wide v9, p1, v6

    xor-long/2addr v9, v2

    add-long v23, v23, v9

    xor-long v9, v21, v23

    add-long v19, v19, v9

    aput-wide v19, v0, v12

    move-wide/from16 v2, v19

    move-wide v9, v13

    move-wide/from16 v5, v26

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 54
    .end local v4    # "p":J
    .end local v15    # "e":J
    .end local v26    # "y":J
    .restart local v5    # "y":J
    :cond_2
    return-object v0
.end method

.method private static ToByteArray([J)[B
    .locals 5
    .param p0, "data"    # [J

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 103
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/XXTEATool;->long2bytes(J)[B

    move-result-object v2

    .line 104
    .local v2, "bs":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 105
    aget-byte v4, v2, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    .end local v2    # "bs":[B
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    sget-char v2, Lcom/isaigu/gymapp/utils/XXTEATool;->SPECIAL_CHAR:C

    if-ne v1, v2, :cond_2

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 113
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 114
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 115
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method private static ToHexString([J)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [J

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 137
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/utils/XXTEATool;->PadLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static ToLongArray(Ljava/lang/String;)[J
    .locals 7
    .param p0, "data"    # Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    div-int/2addr v0, v1

    .line 144
    .local v0, "len":I
    new-array v2, v0, [J

    .line 145
    .local v2, "result":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 146
    new-instance v4, Ljava/math/BigInteger;

    mul-int/lit8 v5, v3, 0x10

    mul-int/lit8 v6, v3, 0x10

    add-int/2addr v6, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method private static ToLongArray([B)[J
    .locals 7
    .param p0, "data"    # [B

    .line 83
    array-length v0, p0

    const/16 v1, 0x8

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    array-length v3, p0

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 84
    .local v0, "n":I
    new-array v3, v0, [J

    .line 86
    .local v3, "result":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_1

    .line 87
    mul-int/lit8 v5, v4, 0x8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/utils/XXTEATool;->bytes2long([BI)J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v4    # "i":I
    :cond_1
    new-array v4, v1, [B

    .line 91
    .local v4, "buffer":[B
    const/4 v5, 0x0

    .local v5, "i":I
    add-int/lit8 v6, v0, -0x1

    mul-int/lit8 v6, v6, 0x8

    .local v6, "j":I
    :goto_2
    array-length v1, p0

    if-ge v6, v1, :cond_2

    .line 92
    aget-byte v1, p0, v6

    aput-byte v1, v4, v5

    .line 91
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 94
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v1, v0, -0x1

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/utils/XXTEATool;->bytes2long([BI)J

    move-result-wide v5

    aput-wide v5, v3, v1

    .line 96
    return-object v3
.end method

.method public static bytes2long([BI)J
    .locals 4
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 128
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 130
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 131
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public static long2bytes(J)[B
    .locals 2
    .param p0, "num"    # J

    .line 121
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .line 171
    const-string v0, "1308fse"

    .line 172
    .local v0, "key":Ljava/lang/String;
    const-string v1, "https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda88093dde28fd243f4ba2940cfb6c4b2f3f53e5764b7152ac14fbc4c433f87dc3e8388a3b32175f6fe374a5e1ed1c5c23543f934ee94c55237fb62f48f5378f9f5b336463255d38506ee89ee4bab2a440d19f00042f52a868dbfe88b68ae35c6706d648c3e67097b306374747dd90047d288a5cf78331d2db8b797e2f5b4e2daee5a7ade0e3dd08b8dd7a6c82988b09120ecc9fc5e39762ff59e7f988d7c6806c2e7b022039a758df136a37ff0b3a558ec739c12ec5ab9ebae392218b7e1ba8d44c3f389c3e3b4c582b2ded84efce473205e65293022d8bfbdbbd7dce51f43e11beb92b0b5a958e023ef72ed2826c10759ec6fd5f64a5f0357d3a45319e274e9bbb07154c676cdebb2a70606818fc4ca62eb545a044cc7608faeaa1aadeb32722e336ee55f24d9fc538a54d93243ffbf5ac79d0da9b50393abce8c15f8d887d479ada4e5658d89e506ceff03a315af467f4d31c193b239bbc6f18dd9d8e491a6680e8c24cb923d6b94cb10e803f788bf0b64462d29b1019c18e32779d8d1cd95e7a9a684f49abe1eda8c117f984dc17745341f2bc335ea470dff4c877152de4427e34064037bd7759c13b40ff74177565be0de2152b4a78a86db73ee53012dfae40b82d34143f671e50c9266b942b615b1288c9a7e4a29c969c077ae19e3158a57836068aadcf8f724a0f5adb7fe6a9b8ff6c9592c27eaaae1c1f4d37198314b078d0f305d32226e23f2a9f256423862ac1b7ff924ed9c3ce4841283fca4a77b79ec2e4799fd3c16e39e8c177db1ebcd7f695df4c30160aa90525c30a6c5b64f06817d4ea3965704c152aa70979b9009af8e1050ef7cb6b82133ec0364aa543787d093898d8648ca65d9a7181eb7bea37b7313850b057416150ac9d8842724a841d545a258422ba24a9bff6a74a368de8f394d13afd2830f2635ba42ee5f7ca27981b7a12f8678c1ed3c019ff8509c9ea65b87416869d93e87c5f111928f7f14b811a8f5163e6a34b296b91660eee58a0553abcffcb8f05854ecc9cddc7b70edc0c822f57a43f0d741adb7f96299b5047bd0f60a2fb4c424ab89e2d2df138e96227b60fc9f9a7a45292b434ccc9cb622a4056101b2ba07b2d84c24aa1b014caa847ce7d8952884722d73eb922608243e270ff501a4e2726c8ed8d6c8fc728eeece7da11a52cd1845291e41d5d688f8bdbff7fe8cd8cbc98378b60de8297ad16cd9ca04a7e8b47e945beb0e105483cb743590e0a3a0245c597bc9a317e63db7a590dehttps://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361https://www.isaigu.com\u4f60\u597d\u54c8\u54c8\u54c8\u54c8\u54c8\u9644\u8fd1fsdfdssssssafaf\u7684\u5496\u5561\u673a\u7684\u5f00\u53d1\u5546\u5361\u592b\u5361a42b7a5e09712f38e1b5a5201034b4c39878f5a427517d63370f091bbeaa277cef9ec280fee9b4bca01bf51765704411d2d852de1b33d182cb6544519f3430c72441384d28ca91be5a2df8d95b3b6e983ecc64e9cfc910f35a63e5d316eafebbdfa19d7b6da0e0c6a6f1ceeaa02a5b85482723d3eeca5fe094d4d17ecf3e84645ee62d356125b44236edb139f03390f0cb8bf37b7ae845d71b56891b9290a6768f94a2f7b60b57089f793bbd3fc849d55795eb66f218f8f4be3ac8cdd8c2706d3b18d23ed4c9e32a8536b515a6bcaad2e3910e4000ebd1ccb4ddd209e7a7f9d9b3a4f20eedea53a824218f72f49768f5ba8ae8ff17cbbee81f8f122801267d95034c9673445941da70a55e9f0191e1c4fbda8bc011069b0fe050b492ab0e3ca7e36fc30556cd6961339c97e091ea63b8dd2205eaa375a1feaae888fcc72ebe27bae38a222a2bb79ae8354a03eded99421b2dcb6a7d370cb7b9548041ca85bf014a2e6ec845bddaa80cf00cdf12f69d2dff2118869afa0daa6565bd9aa1ca5e5eeb6ef63443e0f5f6ed83442c96ae26bc69fd4bf1e5ac0a7dfd3ec4185be9e89c2f1f339bc132c6af376b26af14fed5e97e0078aeb5844f6b0d8cf24c20978dc2a57f3209059a7545540e086638e64ce31e128758bd5463ae742db9eae437f6753e28b4a6014efe891f2059f0fe5318df75051f7f4ff81b4064be6dbff82ceee71137b4aa962629e6ec1541c19efcf1076c6aebcbc4bc487d9c7498c5508b02a791a526321f6a02866b6838837976c3c9863fb79cca8e624725bd016f69a161a73ccb85de267502405ef709863d5a4959482891241731a5d9993a9434755a21e27cf6ef4b5b66eade4ec2e0f188751b804f1f8d3b25b68a2163eae7f0e6d4eb84e155417b9268b13ee7b34d939a424b86ec1c71afb6b87ecf21df5b24930284b9064269bc9545415858372b285b33ead44ad8d1b33bf50a6b8b7f725fd7e99050c5cd04704a3b22b0786fd0ec7d40427a749c1929290cb2bf09bb8d28c350ec0ae934c75e3b46e980948a74310d83bfd6591b1888b7f069c476a9cc4be54d29955a5657613ba5e6b60a053cbf91be373bb3f1df06765aa3a2eddbd0fdfff33815e84ad79e1b705a5726e5275011476d67e5875ba6d28966b1ee8468a1ce1772af1065737cf32ec7a52b7dfddb9d3ba4effb2809c67beda8"

    .line 173
    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 174
    .local v2, "time":J
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/XXTEATool;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "data":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->println(J)V

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 178
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/utils/XXTEATool;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->println(J)V

    .line 180
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    return-void
.end method
