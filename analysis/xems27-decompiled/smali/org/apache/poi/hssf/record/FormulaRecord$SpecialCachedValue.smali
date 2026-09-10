.class final Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
.super Ljava/lang/Object;
.source "FormulaRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/FormulaRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SpecialCachedValue"
.end annotation


# static fields
.field private static final BIT_MARKER:J = -0x1000000000000L

.field public static final BOOLEAN:I = 0x1

.field private static final DATA_INDEX:I = 0x2

.field public static final EMPTY:I = 0x3

.field public static final ERROR_CODE:I = 0x2

.field public static final STRING:I = 0x0

.field private static final VARIABLE_DATA_LENGTH:I = 0x6


# instance fields
.field private final _variableData:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    .line 65
    return-void
.end method

.method private static create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 4
    .param p0, "code"    # I
    .param p1, "data"    # I

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    int-to-byte v1, p1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    .line 137
    .local v0, "vd":[B
    new-instance v1, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;-><init>([B)V

    return-object v1
.end method

.method public static create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 7
    .param p0, "valueLongBits"    # J

    .line 75
    const-wide/high16 v0, -0x1000000000000L

    and-long v2, p0, v0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 80
    .local v1, "result":[B
    move-wide v2, p0

    .line 81
    .local v2, "x":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 82
    long-to-int v5, v2

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 83
    const/16 v5, 0x8

    shr-long/2addr v2, v5

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v4    # "i":I
    :cond_1
    const/4 v0, 0x0

    aget-byte v4, v1, v0

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad special value code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_3
    :goto_1
    nop

    .line 94
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;-><init>([B)V

    return-object v0
.end method

.method public static createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1
    .param p0, "b"    # Z

    .line 123
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method public static createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 2

    .line 117
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method public static createCachedErrorCode(I)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1
    .param p0, "errorCode"    # I

    .line 126
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method public static createForString()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1

    .line 120
    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method private formatValue()Ljava/lang/String;
    .locals 3

    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    .line 105
    .local v0, "typeCode":I
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#error(type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    const-string v1, "<empty>"

    return-object v1

    .line 108
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 107
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "FALSE"

    goto :goto_0

    :cond_3
    const-string v1, "TRUE"

    :goto_0
    return-object v1

    .line 106
    :cond_4
    const-string v1, "<string>"

    return-object v1
.end method

.method private getDataValue()I
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public formatDebugString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 3

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 160
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a boolean cached value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getErrorValue()I
    .locals 3

    .line 163
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v0

    return v0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an error cached value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeCode()I
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getValueType()I
    .locals 4

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    .line 148
    .local v0, "typeCode":I
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 152
    return v1

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type id ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    const/4 v1, 0x5

    return v1

    .line 150
    :cond_2
    const/4 v1, 0x4

    return v1

    .line 149
    :cond_3
    return v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 98
    const v0, 0xffff

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 142
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
