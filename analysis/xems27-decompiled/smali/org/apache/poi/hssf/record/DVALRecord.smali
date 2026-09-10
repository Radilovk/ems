.class public final Lorg/apache/poi/hssf/record/DVALRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DVALRecord.java"


# static fields
.field public static final sid:S = 0x1b2s


# instance fields
.field private field_1_options:S

.field private field_2_horiz_pos:I

.field private field_3_vert_pos:I

.field private field_5_dv_no:I

.field private field_cbo_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 163
    new-instance v0, Lorg/apache/poi/hssf/record/DVALRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DVALRecord;-><init>()V

    .line 164
    .local v0, "rec":Lorg/apache/poi/hssf/record/DVALRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    .line 165
    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    .line 166
    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    .line 167
    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    .line 168
    iget v1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    iput v1, v0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    .line 169
    return-object v0
.end method

.method public getDVRecNo()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 155
    const/16 v0, 0x12

    return v0
.end method

.method public getHorizontalPos()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    return v0
.end method

.method public getObjectID()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 100
    iget-short v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 159
    const/16 v0, 0x1b2

    return v0
.end method

.method public getVerticalPos()I
    .locals 1

    .line 114
    iget v0, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 147
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 148
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getHorizontalPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getVerticalPos()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 150
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getObjectID()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 151
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getDVRecNo()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 152
    return-void
.end method

.method public setDVRecNo(I)V
    .locals 0
    .param p1, "dvNo"    # I

    .line 93
    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_5_dv_no:I

    .line 94
    return-void
.end method

.method public setHorizontalPos(I)V
    .locals 0
    .param p1, "horiz_pos"    # I

    .line 70
    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_2_horiz_pos:I

    .line 71
    return-void
.end method

.method public setObjectID(I)V
    .locals 0
    .param p1, "cboID"    # I

    .line 85
    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_cbo_id:I

    .line 86
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 63
    iput-short p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_1_options:S

    .line 64
    return-void
.end method

.method public setVerticalPos(I)V
    .locals 0
    .param p1, "vert_pos"    # I

    .line 77
    iput p1, p0, Lorg/apache/poi/hssf/record/DVALRecord;->field_3_vert_pos:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DVAL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "    .options      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    const-string v2, "    .horizPos     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getHorizontalPos()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    const-string v2, "    .vertPos      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getVerticalPos()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    const-string v1, "    .comboObjectID   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getObjectID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v2, "    .DVRecordsNumber = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DVALRecord;->getDVRecNo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v1, "[/DVAL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
