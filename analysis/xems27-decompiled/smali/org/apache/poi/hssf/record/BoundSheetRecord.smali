.class public final Lorg/apache/poi/hssf/record/BoundSheetRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BoundSheetRecord.java"


# static fields
.field private static final BOFComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final hiddenFlag:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x85s

.field private static final veryHiddenFlag:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_position_of_BOF:I

.field private field_2_option_flags:I

.field private field_4_isMultibyteUnicode:I

.field private field_5_sheetname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    .line 44
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    .line 193
    new-instance v0, Lorg/apache/poi/hssf/record/BoundSheetRecord$1;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BoundSheetRecord$1;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->BOFComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetname"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->setSheetname(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 66
    .local v0, "field_3_sheetname_length":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    .line 73
    :goto_0
    return-void
.end method

.method private isMultibyte()Z
    .locals 2

    .line 109
    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static orderByBofPosition(Ljava/util/List;)[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;",
            ">;)[",
            "Lorg/apache/poi/hssf/record/BoundSheetRecord;"
        }
    .end annotation

    .line 188
    .local p0, "boundSheetRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/BoundSheetRecord;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/BoundSheetRecord;

    .line 189
    .local v0, "bsrs":[Lorg/apache/poi/hssf/record/BoundSheetRecord;
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 190
    sget-object v1, Lorg/apache/poi/hssf/record/BoundSheetRecord;->BOFComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 191
    return-object v0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getPositionOfBof()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    return v0
.end method

.method public getSheetname()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 152
    const/16 v0, 0x85

    return v0
.end method

.method public isHidden()Z
    .locals 2

    .line 159
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isVeryHidden()Z
    .locals 2

    .line 173
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 138
    iget v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 140
    iget-object v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    .line 141
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 142
    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 144
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->isMultibyte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 149
    :goto_0
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z

    .line 166
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->hiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 167
    return-void
.end method

.method public setPositionOfBof(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 82
    iput p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_1_position_of_BOF:I

    .line 83
    return-void
.end method

.method public setSheetname(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lorg/apache/poi/ss/util/WorkbookUtil;->validateSheetName(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    .line 97
    return-void
.end method

.method public setVeryHidden(Z)V
    .locals 2
    .param p1, "veryHidden"    # Z

    .line 180
    sget-object v0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->veryHiddenFlag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BOUNDSHEET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "    .bof        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoundSheetRecord;->getPositionOfBof()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "    .options    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_2_option_flags:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v2, "    .unicodeflag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_4_isMultibyteUnicode:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v2, "    .sheetname  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/BoundSheetRecord;->field_5_sheetname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "[/BOUNDSHEET]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
