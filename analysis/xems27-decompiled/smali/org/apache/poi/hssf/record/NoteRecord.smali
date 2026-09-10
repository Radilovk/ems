.class public final Lorg/apache/poi/hssf/record/NoteRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "NoteRecord.java"


# static fields
.field private static final DEFAULT_PADDING:Ljava/lang/Byte;

.field public static final EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

.field public static final NOTE_HIDDEN:S = 0x0s

.field public static final NOTE_VISIBLE:S = 0x2s

.field public static final sid:S = 0x1cs


# instance fields
.field private field_1_row:I

.field private field_2_col:I

.field private field_3_flags:S

.field private field_4_shapeid:I

.field private field_5_hasMultibyte:Z

.field private field_6_author:Ljava/lang/String;

.field private field_7_padding:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/poi/hssf/record/NoteRecord;

    sput-object v1, Lorg/apache/poi/hssf/record/NoteRecord;->EMPTY_ARRAY:[Lorg/apache/poi/hssf/record/NoteRecord;

    .line 43
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->DEFAULT_PADDING:Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 66
    sget-object v0, Lorg/apache/poi/hssf/record/NoteRecord;->DEFAULT_PADDING:Ljava/lang/Byte;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 79
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 85
    .local v0, "length":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    .line 86
    if-eqz v1, :cond_1

    .line 87
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    goto :goto_1

    .line 89
    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 91
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 92
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    .line 96
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    .line 98
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected authorIsMultibyte()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 239
    new-instance v0, Lorg/apache/poi/hssf/record/NoteRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/NoteRecord;-><init>()V

    .line 240
    .local v0, "rec":Lorg/apache/poi/hssf/record/NoteRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    .line 241
    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    iput v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    .line 242
    iget-short v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 243
    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    iput v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    .line 244
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 245
    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 164
    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    return v0
.end method

.method protected getDataSize()I
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0xb

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public getFlags()S
    .locals 1

    .line 184
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    return v0
.end method

.method public getShapeId()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 73
    const/16 v0, 0x1c

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 101
    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 102
    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 103
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 104
    iget v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 106
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 107
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 112
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_7_padding:Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 115
    :cond_1
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "author"    # Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_5_hasMultibyte:Z

    .line 236
    return-void
.end method

.method public setColumn(I)V
    .locals 0
    .param p1, "col"    # I

    .line 173
    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    .line 174
    return-void
.end method

.method public setFlags(S)V
    .locals 0
    .param p1, "flags"    # S

    .line 195
    iput-short p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    .line 196
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 155
    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    .line 156
    return-void
.end method

.method public setShapeId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 216
    iput p1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[NOTE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "    .row    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_1_row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v2, "    .col    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_2_col:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v2, "    .flags  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_3_flags:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v2, "    .shapeid= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_4_shapeid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v2, "    .author = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NoteRecord;->field_6_author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "[/NOTE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
