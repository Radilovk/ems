.class public final Lorg/apache/poi/hssf/record/BlankRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BlankRecord.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/CellValueRecordInterface;


# static fields
.field public static final sid:S = 0x201s


# instance fields
.field private field_1_row:I

.field private field_2_col:S

.field private field_3_xf:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 141
    new-instance v0, Lorg/apache/poi/hssf/record/BlankRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BlankRecord;-><init>()V

    .line 142
    .local v0, "rec":Lorg/apache/poi/hssf/record/BlankRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    .line 143
    iget-short v1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    .line 144
    iget-short v1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    .line 145
    return-object v0
.end method

.method public getColumn()S
    .locals 1

    .line 75
    iget-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 137
    const/4 v0, 0x6

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 115
    const/16 v0, 0x201

    return v0
.end method

.method public getXFIndex()S
    .locals 1

    .line 96
    iget-short v0, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 131
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getRow()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getColumn()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 134
    return-void
.end method

.method public setColumn(S)V
    .locals 0
    .param p1, "col"    # S

    .line 107
    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_2_col:S

    .line 108
    return-void
.end method

.method public setRow(I)V
    .locals 0
    .param p1, "row"    # I

    .line 55
    iput p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_1_row:I

    .line 56
    return-void
.end method

.method public setXFIndex(S)V
    .locals 0
    .param p1, "xf"    # S

    .line 86
    iput-short p1, p0, Lorg/apache/poi/hssf/record/BlankRecord;->field_3_xf:S

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[BLANK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "    row= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getRow()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v2, "    col= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getColumn()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "    xf = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BlankRecord;->getXFIndex()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "[/BLANK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
