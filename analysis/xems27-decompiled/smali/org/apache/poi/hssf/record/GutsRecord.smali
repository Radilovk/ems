.class public final Lorg/apache/poi/hssf/record/GutsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "GutsRecord.java"


# static fields
.field public static final sid:S = 0x80s


# instance fields
.field private field_1_left_row_gutter:S

.field private field_2_top_col_gutter:S

.field private field_3_row_level_max:S

.field private field_4_col_level_max:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 47
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 176
    new-instance v0, Lorg/apache/poi/hssf/record/GutsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/GutsRecord;-><init>()V

    .line 177
    .local v0, "rec":Lorg/apache/poi/hssf/record/GutsRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    .line 178
    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    .line 179
    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    .line 180
    iget-short v1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    .line 181
    return-object v0
.end method

.method public getColLevelMax()S
    .locals 1

    .line 139
    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 167
    const/16 v0, 0x8

    return v0
.end method

.method public getLeftRowGutter()S
    .locals 1

    .line 106
    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    return v0
.end method

.method public getRowLevelMax()S
    .locals 1

    .line 128
    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 172
    const/16 v0, 0x80

    return v0
.end method

.method public getTopColGutter()S
    .locals 1

    .line 117
    iget-short v0, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 160
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getLeftRowGutter()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 161
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getTopColGutter()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getRowLevelMax()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getColLevelMax()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 164
    return-void
.end method

.method public setColLevelMax(S)V
    .locals 0
    .param p1, "max"    # S

    .line 95
    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_4_col_level_max:S

    .line 96
    return-void
.end method

.method public setLeftRowGutter(S)V
    .locals 0
    .param p1, "gut"    # S

    .line 62
    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_1_left_row_gutter:S

    .line 63
    return-void
.end method

.method public setRowLevelMax(S)V
    .locals 0
    .param p1, "max"    # S

    .line 84
    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_3_row_level_max:S

    .line 85
    return-void
.end method

.method public setTopColGutter(S)V
    .locals 0
    .param p1, "gut"    # S

    .line 73
    iput-short p1, p0, Lorg/apache/poi/hssf/record/GutsRecord;->field_2_top_col_gutter:S

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[GUTS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "    .leftgutter     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getLeftRowGutter()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v2, "    .topgutter      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getTopColGutter()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v2, "    .rowlevelmax    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getRowLevelMax()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v2, "    .collevelmax    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/GutsRecord;->getColLevelMax()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, "[/GUTS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
