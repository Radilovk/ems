.class public abstract Lorg/apache/poi/hssf/record/OldCellRecord;
.super Ljava/lang/Object;
.source "OldCellRecord.java"


# instance fields
.field private field_1_row:I

.field private field_2_column:S

.field private field_3_cell_attrs:I

.field private field_3_xf_index:S

.field private isBiff2:Z

.field private sid:S


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;
    .param p2, "isBiff2"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->sid:S

    .line 37
    iput-boolean p2, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2:Z

    .line 38
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_1_row:I

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_2_column:S

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_xf_index:S

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract appendValueText(Ljava/lang/StringBuilder;)V
.end method

.method public getCellAttrs()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_cell_attrs:I

    return v0
.end method

.method public final getColumn()S
    .locals 1

    .line 54
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_2_column:S

    return v0
.end method

.method protected abstract getRecordName()Ljava/lang/String;
.end method

.method public final getRow()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_1_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 78
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->sid:S

    return v0
.end method

.method public final getXFIndex()S
    .locals 1

    .line 64
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->field_3_xf_index:S

    return v0
.end method

.method public isBiff2()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getRecordName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "recordName":Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, "    .row    = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getRow()I

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, "    .col    = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getColumn()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const-string v4, "    .cellattrs = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getCellAttrs()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_0
    const-string v4, "    .xfindex   = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->getXFIndex()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/OldCellRecord;->appendValueText(Ljava/lang/StringBuilder;)V

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v3, "[/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
