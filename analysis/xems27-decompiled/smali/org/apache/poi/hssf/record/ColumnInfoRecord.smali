.class public final Lorg/apache/poi/hssf/record/ColumnInfoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ColumnInfoRecord.java"


# static fields
.field private static final collapsed:Lorg/apache/poi/util/BitField;

.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final outlevel:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x7ds


# instance fields
.field private _colWidth:I

.field private _firstCol:I

.field private _lastCol:I

.field private _options:I

.field private _xfIndex:I

.field private field_6_reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    .line 40
    const/16 v0, 0x700

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    .line 41
    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    const/16 v0, 0x8e3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->setColumnWidth(I)V

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 51
    const/16 v1, 0xf

    iput v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    .line 52
    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    .line 64
    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unusual record size remaining=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    .line 69
    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    .line 75
    nop

    .line 79
    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 248
    new-instance v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;-><init>()V

    .line 249
    .local v0, "rec":Lorg/apache/poi/hssf/record/ColumnInfoRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    .line 250
    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    .line 251
    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    .line 252
    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    .line 253
    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 254
    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    iput v1, v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    .line 255
    return-object v0
.end method

.method public containsColumn(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 192
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public formatMatches(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 202
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 203
    return v2

    .line 205
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    if-eq v0, v1, :cond_1

    .line 206
    return v2

    .line 208
    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    if-eq v0, v1, :cond_2

    .line 209
    return v2

    .line 211
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getCollapsed()Z
    .locals 2

    .line 188
    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getColumnWidth()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 228
    const/16 v0, 0xc

    return v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    return v0
.end method

.method public getHidden()Z
    .locals 2

    .line 174
    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 151
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    return v0
.end method

.method public getOutlineLevel()I
    .locals 2

    .line 181
    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 215
    const/16 v0, 0x7d

    return v0
.end method

.method public getXFIndex()I
    .locals 1

    .line 167
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    return v0
.end method

.method public isAdjacentBefore(Lorg/apache/poi/hssf/record/ColumnInfoRecord;)Z
    .locals 3
    .param p1, "other"    # Lorg/apache/poi/hssf/record/ColumnInfoRecord;

    .line 195
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    iget v1, p1, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 219
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 220
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 221
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 222
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 223
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 224
    iget v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->field_6_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 225
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2
    .param p1, "isCollapsed"    # Z

    .line 135
    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->collapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 136
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "cw"    # I

    .line 102
    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_colWidth:I

    .line 103
    return-void
.end method

.method public setFirstColumn(I)V
    .locals 0
    .param p1, "fc"    # I

    .line 86
    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_firstCol:I

    .line 87
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "ishidden"    # Z

    .line 119
    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 120
    return-void
.end method

.method public setLastColumn(I)V
    .locals 0
    .param p1, "lc"    # I

    .line 94
    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_lastCol:I

    .line 95
    return-void
.end method

.method public setOutlineLevel(I)V
    .locals 2
    .param p1, "olevel"    # I

    .line 127
    sget-object v0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->outlevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    .line 128
    return-void
.end method

.method public setXFIndex(I)V
    .locals 0
    .param p1, "xfi"    # I

    .line 111
    iput p1, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_xfIndex:I

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[COLINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "  colfirst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getFirstColumn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, "  collast  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getLastColumn()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v2, "  colwidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getColumnWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v2, "  xfindex  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getXFIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v2, "  options  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->_options:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v2, "    hidden   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getHidden()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v2, "    olevel   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getOutlineLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, "    collapsed= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ColumnInfoRecord;->getCollapsed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "[/COLINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
