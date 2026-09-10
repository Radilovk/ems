.class public final Lorg/apache/poi/hssf/record/DimensionsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DimensionsRecord.java"


# static fields
.field public static final sid:S = 0x200s


# instance fields
.field private field_1_first_row:I

.field private field_2_last_row:I

.field private field_3_first_col:S

.field private field_4_last_col:S

.field private field_5_zero:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 174
    new-instance v0, Lorg/apache/poi/hssf/record/DimensionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DimensionsRecord;-><init>()V

    .line 175
    .local v0, "rec":Lorg/apache/poi/hssf/record/DimensionsRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    .line 176
    iget v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    .line 177
    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    .line 178
    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    .line 179
    iget-short v1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    .line 180
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 165
    const/16 v0, 0xe

    return v0
.end method

.method public getFirstCol()S
    .locals 1

    .line 124
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    return v0
.end method

.method public getLastCol()S
    .locals 1

    .line 134
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 170
    const/16 v0, 0x200

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 157
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 158
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 159
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 160
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 161
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 162
    return-void
.end method

.method public setFirstCol(S)V
    .locals 0
    .param p1, "col"    # S

    .line 84
    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_3_first_col:S

    .line 85
    return-void
.end method

.method public setFirstRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 64
    iput p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_1_first_row:I

    .line 65
    return-void
.end method

.method public setLastCol(S)V
    .locals 0
    .param p1, "col"    # S

    .line 94
    iput-short p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_4_last_col:S

    .line 95
    return-void
.end method

.method public setLastRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 74
    iput p1, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_2_last_row:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DIMENSIONS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v1, "    .firstrow       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstRow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v2, "    .lastrow        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastRow()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v2, "    .firstcol       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getFirstCol()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v2, "    .lastcol        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DimensionsRecord;->getLastCol()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v2, "    .zero           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/DimensionsRecord;->field_5_zero:S

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "[/DIMENSIONS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
