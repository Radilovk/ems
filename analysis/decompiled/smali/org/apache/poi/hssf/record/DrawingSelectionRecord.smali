.class public final Lorg/apache/poi/hssf/record/DrawingSelectionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DrawingSelectionRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;
    }
.end annotation


# static fields
.field public static final sid:S = 0xeds


# instance fields
.field private _cpsp:I

.field private _dgslk:I

.field private _header:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

.field private _shapeIds:[I

.field private _spidFocus:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 81
    new-instance v3, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_header:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_cpsp:I

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_dgslk:I

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_spidFocus:I

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v3

    div-int/lit8 v1, v3, 0x4

    .line 86
    .local v1, "nShapes":I
    new-array v2, v1, [I

    .line 87
    .local v2, "shapeIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iput-object v2, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_shapeIds:[I

    .line 91
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 115
    return-object p0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_shapeIds:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0xed

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_header:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 105
    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_cpsp:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 106
    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_dgslk:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 107
    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_spidFocus:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_shapeIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_shapeIds:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 119
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "[MSODRAWINGSELECTION]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v2, "    .rh       =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_header:Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->debugFormatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v2, "    .cpsp     ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_cpsp:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    const-string v2, "    .dgslk    ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_dgslk:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "    .spidFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_spidFocus:I

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    const-string v2, "    .shapeIds =("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_shapeIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 128
    if-lez v0, :cond_0

    .line 129
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord;->_shapeIds:[I

    aget v2, v2, v0

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v2, "[/MSODRAWINGSELECTION]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
