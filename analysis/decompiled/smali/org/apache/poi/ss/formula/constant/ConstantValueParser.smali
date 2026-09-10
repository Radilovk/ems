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

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
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
    :cond_0
    return-void
.end method

.method private static encodeSingleValue(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/Object;)V
    .locals 9
    .param p0, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v4, 0x0

    .line 123
    sget-object v6, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    if-ne p1, v6, :cond_0

    .line 124
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 125
    invoke-interface {p0, v4, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 152
    :goto_0
    return-void

    .line 128
    :cond_0
    instance-of v6, p1, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 129
    check-cast v0, Ljava/lang/Boolean;

    .line 130
    .local v0, "bVal":Ljava/lang/Boolean;
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v4, 0x1

    .line 132
    .local v4, "longVal":J
    :cond_1
    invoke-interface {p0, v4, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    goto :goto_0

    .line 135
    .end local v0    # "bVal":Ljava/lang/Boolean;
    .end local v4    # "longVal":J
    :cond_2
    instance-of v6, p1, Ljava/lang/Double;

    if-eqz v6, :cond_3

    move-object v1, p1

    .line 136
    check-cast v1, Ljava/lang/Double;

    .line 137
    .local v1, "dVal":Ljava/lang/Double;
    const/4 v6, 0x1

    invoke-interface {p0, v6}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {p0, v6, v7}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    goto :goto_0

    .line 141
    .end local v1    # "dVal":Ljava/lang/Double;
    :cond_3
    instance-of v6, p1, Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v3, p1

    .line 142
    check-cast v3, Ljava/lang/String;

    .line 143
    .local v3, "val":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {p0, v6}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 144
    invoke-static {p0, v3}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v3    # "val":Ljava/lang/String;
    :cond_4
    instance-of v6, p1, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v6, :cond_5

    move-object v2, p1

    .line 148
    check-cast v2, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .line 149
    .local v2, "ecVal":Lorg/apache/poi/ss/formula/constant/ErrorConstant;
    const/16 v6, 0x10

    invoke-interface {p0, v6}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 150
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getErrorCode()I

    move-result v6

    int-to-long v4, v6

    .line 151
    .restart local v4    # "longVal":J
    invoke-interface {p0, v4, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    goto :goto_0

    .line 155
    .end local v2    # "ecVal":Lorg/apache/poi/ss/formula/constant/ErrorConstant;
    .end local v4    # "longVal":J
    :cond_5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected value type ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static getEncodedSize(Ljava/lang/Object;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v2, 0x8

    .line 104
    sget-object v3, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    if-ne p0, v3, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Boolean;

    if-eq v0, v3, :cond_0

    const-class v3, Ljava/lang/Double;

    if-eq v0, v3, :cond_0

    const-class v3, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eq v0, v3, :cond_0

    move-object v1, p0

    .line 112
    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "strVal":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static getEncodedSize([Ljava/lang/Object;)I
    .locals 3
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 93
    array-length v2, p0

    mul-int/lit8 v1, v2, 0x1

    .line 94
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 95
    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return v1
.end method

.method public static parse(Lorg/apache/poi/util/LittleEndianInput;I)[Ljava/lang/Object;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "nValues"    # I

    .prologue
    .line 50
    new-array v1, p1, [Ljava/lang/Object;

    .line 51
    .local v1, "result":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 52
    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->readAConstantValue(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v1
.end method

.method private static readAConstantValue(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;
    .locals 6
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 58
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 59
    .local v1, "grbit":B
    sparse-switch v1, :sswitch_data_0

    .line 76
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown grbit value ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :sswitch_0
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    .line 62
    sget-object v2, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->EMPTY_REPRESENTATION:Ljava/lang/Object;

    .line 74
    :goto_0
    return-object v2

    .line 64
    :sswitch_1
    new-instance v2, Ljava/lang/Double;

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 66
    :sswitch_2
    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 68
    :sswitch_3
    invoke-static {p0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->readBoolean(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 70
    :sswitch_4
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    .line 72
    .local v0, "errCode":I
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    .line 73
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 74
    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object v2

    goto :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private static readBoolean(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/Object;
    .locals 4
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 80
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-byte v0, v1

    .line 81
    .local v0, "val":B
    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected boolean encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    :goto_0
    return-object v1

    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
