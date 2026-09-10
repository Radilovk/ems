.class public final Lorg/apache/poi/hssf/record/LabelRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "LabelRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;

.field public static final sid:S = 0x204s


# instance fields
.field private field_1_row:I

.field private field_2_column:S

.field private field_3_xf_index:S

.field private field_4_string_len:S

.field private field_5_unicode_flag:B

.field private field_6_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/LabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 52
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    .line 58
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    if-lez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->isUnCompressedUnicode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_0
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    .line 68
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 69
    sget-object v0, Lorg/apache/poi/hssf/record/LabelRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LabelRecord data remains: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 74
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 174
    new-instance v0, Lorg/apache/poi/hssf/record/LabelRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/LabelRecord;-><init>()V

    .line 175
    .local v0, "rec":Lorg/apache/poi/hssf/record/LabelRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    .line 176
    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    .line 177
    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    .line 178
    iget-short v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    .line 179
    iget-byte v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    .line 180
    iget-object v1, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    .line 181
    return-object v0
.end method

.method public getColumn()S
    .locals 1

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_2_column:S

    return v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 130
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "Label Records are supported READ ONLY...convert to LabelSST"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRow()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_1_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 135
    const/16 v0, 0x204

    return v0
.end method

.method public getStringLength()S
    .locals 1

    .line 100
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_6_value:Ljava/lang/String;

    return-object v0
.end method

.method public getXFIndex()S
    .locals 1

    .line 91
    iget-short v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_3_xf_index:S

    return v0
.end method

.method public isUnCompressedUnicode()Z
    .locals 2

    .line 109
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public serialize(I[B)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .line 127
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v1, "Label Records are supported READ ONLY...convert to LabelSST"

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumn(S)V
    .locals 0
    .param p1, "col"    # S

    .line 157
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 164
    return-void
.end method

.method public setXFIndex(S)V
    .locals 0
    .param p1, "xf"    # S

    .line 171
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[LABEL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "    .row       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getRow()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v2, "    .column    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getColumn()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v2, "    .xfindex   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getXFIndex()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v2, "    .string_len= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_4_string_len:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v2, "    .unicode_flag= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/LabelRecord;->field_5_unicode_flag:B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v2, "    .value       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/LabelRecord;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "[/LABEL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
