.class public final Lorg/apache/poi/ss/formula/constant/ConstantValueParser;
.super Ljava/lang/Object;
.source "ConstantValueParser.java"


# static fields
.field private static final EMPTY_REPRESENTATION:Ljava/lang/Object;

.field private static final FALSE_ENCODING:I = 0x0

.field private static final TRUE_ENCODING:I = 0x1

.field private static final TYPE_BOOLEAN:I = 0x4

.field private static final TYPE_EMPTY:I = 0x0

.field private static final TYPE_ERROR_CODE:I = 0x10

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_STRING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "values"    # [Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 118
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encodeSingleValue(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/Object;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static encodeSingleValue(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/Object;)V
    .locals 4
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "value"    # Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 125
    invoke-interface {p0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 126
    return-void

    .line 128
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 130
    .local v0, "bVal":Ljava/lang/Boolean;
    const/4 v3, 0x4

    invoke-interface {p0, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v1, 0x1

    .line 132
    .local v1, "longVal":J
    :cond_1
    invoke-interface {p0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 133
    return-void

    .line 135
    .end local v0    # "bVal":Ljava/lang/Boolean;
    .end local v1    # "longVal":J
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 136
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    .line 137
    .local v0, "dVal":Ljava/lang/Double;
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 139
    return-void

    .line 141
    .end local v0    # "dVal":Ljava/lang/Double;
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 142
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 144
    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    .end local v0    # "val":Ljava/lang/String;
    :cond_4
    instance-of v0, p1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v0, :cond_5

    .line 148
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 149
    .local v0, "ecVal":Lorg/apache/poi/ss/formula/constant/ErrorConstant;
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 150
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getErrorCode()I

    move-result v1

    int-to-long v1, v1

    .line 151
    .restart local v1    # "longVal":J
    invoke-interface {p0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 152
    return-void

    .line 155
    .end local v0    # "ecVal":Lorg/apache/poi/ss/formula/constant/ErrorConstant;
    .end local v1    # "longVal":J
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getEncodedSize(Ljava/lang/Object;)I
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    const/16 v1, 0x8

    if-ne p0, v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_2

    const-class v2, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "strVal":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 110
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1
.end method

.method public static getEncodedSize([Ljava/lang/Object;)I
    .locals 3
    .param p0, "values"    # [Ljava/lang/Object;

    .line 93
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x1

    .line 94
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 95
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nValues"    # I

    .line 50
    new-array v0, p1, [Ljava/lang/Object;

    .line 51
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 52
    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->readAConstantValue(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static readAConstantValue(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 58
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 59
    .local v0, "grbit":B
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 70
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v1

    .line 72
    .local v1, "errCode":I
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    .line 73
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 74
    invoke-static {v1}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object v2

    return-object v2

    .line 76
    .end local v1    # "errCode":I
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown grbit value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->readBoolean(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 66
    :cond_2
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :cond_3
    new-instance v1, Ljava/lang/Double;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 61
    :cond_4
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    .line 62
    sget-object v1, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    return-object v1
.end method

.method private static readBoolean(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 80
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 81
    .local v0, "val":B
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected boolean encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1
.end method
