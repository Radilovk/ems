.class public final Lorg/apache/poi/hssf/record/StyleRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "StyleRecord.java"


# static fields
.field private static final isBuiltinFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x293s

.field private static final styleIndexMask:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_xf_index:I

.field private field_2_builtin_style:I

.field private field_3_outline_style_level:I

.field private field_3_stringHasMultibyte:Z

.field private field_4_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0xfff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    .line 37
    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 54
    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 65
    .local v0, "field_2_name_length":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 68
    if-nez v0, :cond_1

    .line 72
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v2, "Ran out of data reading style record"

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    .line 76
    if-eqz v2, :cond_4

    .line 77
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    goto :goto_1

    .line 79
    :cond_4
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    .line 83
    .end local v0    # "field_2_name_length":I
    :goto_1
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 2

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x4

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 189
    const/16 v0, 0x293

    return v0
.end method

.method public getXFIndex()I
    .locals 2

    .line 99
    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public isBuiltin()Z
    .locals 2

    .line 130
    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 172
    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 173
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 175
    iget v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 178
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 179
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 185
    :goto_0
    return-void
.end method

.method public setBuiltinStyle(I)V
    .locals 2
    .param p1, "builtinStyleId"    # I

    .line 118
    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 119
    iput p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_4_name:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_stringHasMultibyte:Z

    .line 109
    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltinFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 110
    return-void
.end method

.method public setOutlineStyleLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 126
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    .line 127
    return-void
.end method

.method public setXFIndex(I)V
    .locals 2
    .param p1, "xfIndex"    # I

    .line 90
    sget-object v0, Lorg/apache/poi/hssf/record/StyleRecord;->styleIndexMask:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[STYLE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "    .xf_index_raw ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_1_xf_index:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v2, "        .type     ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "built-in"

    goto :goto_0

    :cond_0
    const-string v2, "user-defined"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v2, "        .xf_index ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getXFIndex()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "    .builtin_style="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_2_builtin_style:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v2, "    .outline_level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/StyleRecord;->field_3_outline_style_level:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 153
    :cond_1
    const-string v2, "    .name        ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/StyleRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    const-string v1, "[/STYLE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
