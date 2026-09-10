.class public Lorg/apache/poi/hssf/record/IndexRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "IndexRecord.java"


# static fields
.field public static final sid:S = 0x20bs


# instance fields
.field private field_2_first_row:I

.field private field_3_last_row_add1:I

.field private field_4_zero:I

.field private field_5_dbcells:Lorg/apache/poi/util/IntList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 46
    .local v0, "field_1_zero":I
    if-eqz v0, :cond_0

    .line 47
    new-instance v3, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected zero for field 1 but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    div-int/lit8 v2, v3, 0x4

    .line 54
    .local v2, "nCells":I
    new-instance v3, Lorg/apache/poi/util/IntList;

    invoke-direct {v3, v2}, Lorg/apache/poi/util/IntList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 56
    iget-object v3, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public static getRecordSizeForBlockCount(I)I
    .locals 1
    .param p0, "blockCount"    # I

    .prologue
    .line 145
    mul-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, 0x14

    return v0
.end method


# virtual methods
.method public addDbcell(I)V
    .locals 1
    .param p1, "cell"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/apache/poi/util/IntList;

    invoke-direct {v0}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntList;->add(I)Z

    .line 77
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Lorg/apache/poi/hssf/record/IndexRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/IndexRecord;-><init>()V

    .line 154
    .local v0, "rec":Lorg/apache/poi/hssf/record/IndexRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    .line 155
    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    .line 156
    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    iput v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    .line 157
    new-instance v1, Lorg/apache/poi/util/IntList;

    invoke-direct {v1}, Lorg/apache/poi/util/IntList;-><init>()V

    iput-object v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    .line 158
    iget-object v1, v0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/IntList;->addAll(Lorg/apache/poi/util/IntList;)Z

    .line 159
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getDbcellAt(I)I
    .locals 1
    .param p1, "cellnum"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntList;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    return v0
.end method

.method public getLastRowAdd1()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    return v0
.end method

.method public getNumDbcells()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x20b

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 127
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 128
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getFirstRow()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 129
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getLastRowAdd1()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 130
    iget v1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_4_zero:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 131
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/IndexRecord;->getDbcellAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public setDbcell(II)V
    .locals 1
    .param p1, "cell"    # I
    .param p2, "value"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_5_dbcells:Lorg/apache/poi/util/IntList;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/util/IntList;->set(II)I

    .line 82
    return-void
.end method

.method public setFirstRow(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_2_first_row:I

    .line 63
    return-void
.end method

.method public setLastRowAdd1(I)V
    .locals 0
    .param p1, "row"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/apache/poi/hssf/record/IndexRecord;->field_3_last_row_add1:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "[INDEX]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v2, "    .firstrow       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getFirstRow()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v2, "    .lastrowadd1    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getLastRowAdd1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/IndexRecord;->getNumDbcells()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 118
    const-string v2, "    .dbcell_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/IndexRecord;->getDbcellAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const-string v2, "[/INDEX]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
