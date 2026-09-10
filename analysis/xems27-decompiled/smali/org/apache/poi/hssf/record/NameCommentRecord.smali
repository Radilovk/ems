.class public final Lorg/apache/poi/hssf/record/NameCommentRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "NameCommentRecord.java"


# static fields
.field public static final sid:S = 0x894s


# instance fields
.field private final field_1_record_type:S

.field private final field_2_frt_cell_ref_flag:S

.field private final field_3_reserved:J

.field private field_6_name_text:Ljava/lang/String;

.field private field_7_comment_text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    .line 48
    iput-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    .line 50
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "ris"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 81
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 82
    move-object v0, p1

    .line 83
    .local v0, "in":Lorg/apache/poi/util/LittleEndianInput;
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    .line 84
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    .line 85
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    .line 86
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    .line 87
    .local v1, "field_4_name_length":I
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v2

    .line 89
    .local v2, "field_5_comment_length":I
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 90
    invoke-static {v0, v1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 91
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 92
    invoke-static {v0, v2}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public getCommentText()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordType()S
    .locals 1

    .line 147
    iget-short v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 100
    const/16 v0, 0x894

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 56
    iget-object v0, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 57
    .local v0, "field_4_name_length":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 59
    .local v1, "field_5_comment_length":I
    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 60
    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 61
    iget-wide v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    invoke-interface {p1, v2, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 62
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 63
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 65
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 66
    iget-object v3, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 67
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 68
    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 69
    return-void
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 0
    .param p1, "newName"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[NAMECMT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "    .record type            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_1_record_type:S

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v2, "    .frt cell ref flag      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_2_frt_cell_ref_flag:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v2, "    .reserved               = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_3_reserved:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v2, "    .name length            = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v2, "    .comment length         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v2, "    .name                   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_6_name_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v2, "    .comment                = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/NameCommentRecord;->field_7_comment_text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v1, "[/NAMECMT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
