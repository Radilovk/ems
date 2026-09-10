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

    .prologue
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

    .prologue
    const/4 v3, 0x0

    .line 129
    const/4 v1, 0x6

    new-array v0, v1, [B

    int-to-byte v1, p0

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    .line 137
    .local v0, "vd":[B
    new-instance v1, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;-><init>([B)V

    return-object v1
.end method

.method public static create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 10
    .param p0, "valueLongBits"    # J

    .prologue
    const-wide/high16 v8, -0x1000000000000L

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 75
    and-long v4, v8, p0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 76
    const/4 v4, 0x0

    .line 94
    :goto_0
    return-object v4

    .line 79
    :cond_0
    new-array v1, v6, [B

    .line 80
    .local v1, "result":[B
    move-wide v2, p0

    .line 81
    .local v2, "x":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 82
    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 83
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    aget-byte v4, v1, v7

    packed-switch v4, :pswitch_data_0

    .line 92
    new-instance v4, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad special value code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :pswitch_0
    new-instance v4, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-direct {v4, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;-><init>([B)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 2
    .param p0, "b"    # Z

    .prologue
    const/4 v1, 0x1

    .line 123
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v1, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 2

    .prologue
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

    .prologue
    .line 126
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method public static createForString()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {v0, v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(II)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    return-object v0
.end method

.method private formatValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    .line 105
    .local v0, "typeCode":I
    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#error(type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 106
    :pswitch_0
    const-string v1, "<string>"

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FALSE"

    goto :goto_0

    :cond_0
    const-string v1, "TRUE"

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v1, "<empty>"

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDataValue()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public formatDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a boolean cached value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorValue()I
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an error cached value - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getDataValue()I

    move-result v0

    return v0
.end method

.method public getTypeCode()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->_variableData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public getValueType()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    .line 148
    .local v0, "typeCode":I
    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type id ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_0
    const/4 v1, 0x4

    .line 152
    :goto_0
    :pswitch_1
    return v1

    .line 151
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
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
    .locals 3

    .prologue
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

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
