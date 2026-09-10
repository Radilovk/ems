.class public Lcom/clj/fastble/utils/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/clj/fastble/utils/HexUtil;->DIGITS_LOWER:[C

    .line 8
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/clj/fastble/utils/HexUtil;->DIGITS_UPPER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .line 114
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static decodeHex([C)[B
    .locals 6
    .param p0, "data"    # [C

    .line 66
    array-length v0, p0

    .line 68
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 72
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 75
    .local v1, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 76
    aget-char v4, p0, v3

    invoke-static {v4, v3}, Lcom/clj/fastble/utils/HexUtil;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 77
    .local v4, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 78
    aget-char v5, p0, v3

    invoke-static {v5, v3}, Lcom/clj/fastble/utils/HexUtil;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 75
    .end local v4    # "f":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    return-object v1

    .line 69
    .end local v1    # "out":[B
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Odd number of characters."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encodeHex([B)[C
    .locals 1
    .param p0, "data"    # [B

    .line 12
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/clj/fastble/utils/HexUtil;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .line 16
    if-eqz p1, :cond_0

    sget-object v0, Lcom/clj/fastble/utils/HexUtil;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/clj/fastble/utils/HexUtil;->DIGITS_UPPER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/clj/fastble/utils/HexUtil;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_0
    array-length v0, p0

    .line 23
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 24
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v1, v3

    .line 26
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public static encodeHexStr([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 33
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/clj/fastble/utils/HexUtil;->encodeHexStr([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHexStr([BZ)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .line 37
    if-eqz p1, :cond_0

    sget-object v0, Lcom/clj/fastble/utils/HexUtil;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/clj/fastble/utils/HexUtil;->DIGITS_UPPER:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/clj/fastble/utils/HexUtil;->encodeHexStr([B[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static encodeHexStr([B[C)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .line 42
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/clj/fastble/utils/HexUtil;->encodeHex([B[C)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static extractData([BI)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "position"    # I

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [B

    aget-byte v1, p0, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcom/clj/fastble/utils/HexUtil;->formatHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatHexString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/clj/fastble/utils/HexUtil;->formatHexString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatHexString([BZ)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "addSpace"    # Z

    .line 50
    if-eqz p0, :cond_4

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 54
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    if-eqz p1, :cond_2

    .line 60
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .end local v3    # "hex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 51
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 98
    if-eqz p0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 104
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 105
    .local v1, "hexChars":[C
    new-array v2, v0, [B

    .line 106
    .local v2, "d":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 107
    mul-int/lit8 v4, v3, 0x2

    .line 108
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/clj/fastble/utils/HexUtil;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/clj/fastble/utils/HexUtil;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    .line 106
    .end local v4    # "pos":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 99
    .end local v0    # "length":I
    .end local v1    # "hexChars":[C
    .end local v2    # "d":[B
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I

    .line 88
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 89
    .local v0, "digit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 93
    return v0

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
