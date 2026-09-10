.class public final Lorg/apache/poi/hssf/record/TextObjectRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "TextObjectRecord.java"


# static fields
.field private static final FORMAT_RUN_ENCODED_SIZE:I = 0x8

.field public static final HORIZONTAL_TEXT_ALIGNMENT_CENTERED:S = 0x2s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_JUSTIFIED:S = 0x4s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_LEFT_ALIGNED:S = 0x1s

.field public static final HORIZONTAL_TEXT_ALIGNMENT_RIGHT_ALIGNED:S = 0x3s

.field private static final HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

.field public static final TEXT_ORIENTATION_NONE:S = 0x0s

.field public static final TEXT_ORIENTATION_ROT_LEFT:S = 0x3s

.field public static final TEXT_ORIENTATION_ROT_RIGHT:S = 0x2s

.field public static final TEXT_ORIENTATION_TOP_TO_BOTTOM:S = 0x1s

.field public static final VERTICAL_TEXT_ALIGNMENT_BOTTOM:S = 0x3s

.field public static final VERTICAL_TEXT_ALIGNMENT_CENTER:S = 0x2s

.field public static final VERTICAL_TEXT_ALIGNMENT_JUSTIFY:S = 0x4s

.field public static final VERTICAL_TEXT_ALIGNMENT_TOP:S = 0x1s

.field private static final VerticalTextAlignment:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1b6s

.field private static final textLocked:Lorg/apache/poi/util/BitField;


# instance fields
.field private _linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

.field private _text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

.field private _unknownPostFormulaByte:Ljava/lang/Byte;

.field private _unknownPreFormulaInt:I

.field private field_1_options:I

.field private field_2_textOrientation:I

.field private field_3_reserved4:I

.field private field_4_reserved5:I

.field private field_5_reserved6:I

.field private field_8_reserved7:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v0, 0x70

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    .line 44
    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 88
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 89
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 90
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    .line 92
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 95
    .local v0, "field_6_textLength":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    .line 96
    .local v1, "field_7_formattingDataLength":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    .line 98
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_3

    .line 101
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    const/16 v4, 0xb

    if-lt v2, v4, :cond_2

    .line 104
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v2

    .line 105
    .local v2, "formulaSize":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    .line 106
    invoke-static {v2, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    .line 107
    .local v4, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 111
    const/4 v5, 0x0

    aget-object v5, v4, v5

    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    iput-object v5, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .line 112
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v5

    if-lez v5, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    goto :goto_0

    .line 115
    :cond_0
    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    .line 117
    .end local v2    # "formulaSize":I
    .end local v4    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    goto :goto_1

    .line 108
    .restart local v2    # "formulaSize":I
    .restart local v4    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tokens but expected exactly 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    .end local v2    # "formulaSize":I
    .end local v4    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v3, "Not enough remaining data for a link formula"

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_3
    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .line 120
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    if-gtz v2, :cond_6

    .line 125
    if-lez v0, :cond_4

    .line 126
    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->readRawString(Lorg/apache/poi/hssf/record/RecordInputStream;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/String;
    goto :goto_2

    .line 128
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    .line 130
    .restart local v2    # "text":Ljava/lang/String;
    :goto_2
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 132
    if-lez v1, :cond_5

    .line 133
    invoke-static {p1, v3, v1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->processFontRuns(Lorg/apache/poi/hssf/record/RecordInputStream;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;I)V

    .line 135
    :cond_5
    return-void

    .line 121
    .end local v2    # "text":Ljava/lang/String;
    :cond_6
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes at end of record"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getFormattingDataLength()I
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static processFontRuns(Lorg/apache/poi/hssf/record/RecordInputStream;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;I)V
    .locals 5
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "str"    # Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .param p2, "formattingRunDataLength"    # I

    .line 148
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    .line 152
    div-int/lit8 v0, p2, 0x8

    .line 153
    .local v0, "nRuns":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    .line 155
    .local v2, "index":S
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    .line 156
    .local v3, "iFont":S
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    .line 157
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(IIS)V

    .line 153
    .end local v2    # "index":S
    .end local v3    # "iFont":S
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 149
    .end local v0    # "nRuns":I
    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad format run data length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readRawString(Lorg/apache/poi/hssf/record/RecordInputStream;I)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p1, "textLength"    # I

    .line 138
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    .line 139
    .local v0, "compressByte":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "isCompressed":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 143
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private serializeTXORecord(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 167
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 168
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 169
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 170
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 171
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 173
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getFormattingDataLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 174
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->getSize()I

    move-result v0

    .line 178
    .local v0, "formulaSize":I
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 179
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 180
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 181
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 185
    .end local v0    # "formulaSize":I
    :cond_0
    return-void
.end method

.method private serializeTrailingRecords(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 188
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 189
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeStringData(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 191
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-static {p1, v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->writeFormatData(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V

    .line 192
    return-void
.end method

.method private static writeFormatData(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V
    .locals 5
    .param p0, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;
    .param p1, "str"    # Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 211
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v0

    .line 212
    .local v0, "nRuns":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 213
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getIndexOfFormattingRun(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 214
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getFontOfFormattingRun(I)S

    move-result v3

    .line 215
    .local v3, "fontIndex":I
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 216
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 212
    .end local v3    # "fontIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 219
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 220
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 221
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 325
    new-instance v0, Lorg/apache/poi/hssf/record/TextObjectRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/TextObjectRecord;-><init>()V

    .line 326
    .local v0, "rec":Lorg/apache/poi/hssf/record/TextObjectRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 328
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 329
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    .line 330
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    .line 331
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    .line 332
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    .line 333
    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    iput v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    .line 335
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 337
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v1, :cond_0

    .line 338
    iget v2, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    iput v2, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPreFormulaInt:I

    .line 339
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;->copy()Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    .line 340
    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_unknownPostFormulaByte:Ljava/lang/Byte;

    .line 342
    :cond_0
    return-object v0
.end method

.method public getHorizontalTextAlignment()I
    .locals 2

    .line 234
    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getLinkRefPtg()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_linkRefPtg:Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 162
    const/16 v0, 0x1b6

    return v0
.end method

.method public getStr()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    return-object v0
.end method

.method public getTextOrientation()I
    .locals 1

    .line 272
    iget v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    return v0
.end method

.method public getVerticalTextAlignment()I
    .locals 2

    .line 248
    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public isTextLocked()Z
    .locals 2

    .line 262
    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 196
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->serializeTXORecord(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 197
    iget-object v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/TextObjectRecord;->serializeTrailingRecords(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setHorizontalTextAlignment(I)V
    .locals 2
    .param p1, "value"    # I

    .line 227
    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->HorizontalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 228
    return-void
.end method

.method public setStr(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)V
    .locals 0
    .param p1, "str"    # Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 291
    iput-object p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .line 292
    return-void
.end method

.method public setTextLocked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 255
    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->textLocked:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 256
    return-void
.end method

.method public setTextOrientation(I)V
    .locals 0
    .param p1, "textOrientation"    # I

    .line 283
    iput p1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_2_textOrientation:I

    .line 284
    return-void
.end method

.method public setVerticalTextAlignment(I)V
    .locals 2
    .param p1, "value"    # I

    .line 241
    sget-object v0, Lorg/apache/poi/hssf/record/TextObjectRecord;->VerticalTextAlignment:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    .line 242
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 299
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[TXO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v1, "    .options        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_1_options:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v2, "         .isHorizontal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getHorizontalTextAlignment()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 304
    const-string v3, "         .isVertical   = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getVerticalTextAlignment()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 305
    const-string v3, "         .textLocked   = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->isTextLocked()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 306
    const-string v3, "    .textOrientation= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/TextObjectRecord;->getTextOrientation()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v3, "    .reserved4      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_3_reserved4:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v3, "    .reserved5      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_4_reserved5:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string v3, "    .reserved6      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_5_reserved6:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v3, "    .textLength     = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v3, "    .reserved7      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->field_8_reserved7:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v1, "    .string = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->numFormattingRuns()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 316
    const-string v3, "    .textrun = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/TextObjectRecord;->_text:Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getFontOfFormattingRun(I)S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_0
    const-string v1, "[/TXO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
