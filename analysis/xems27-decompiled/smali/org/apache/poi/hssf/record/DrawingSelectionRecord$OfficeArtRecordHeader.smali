.class final Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;
.super Ljava/lang/Object;
.source "DrawingSelectionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/DrawingSelectionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfficeArtRecordHeader"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x8


# instance fields
.field private final _length:I

.field private final _type:I

.field private final _verAndInstance:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_verAndInstance:I

    .line 51
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_type:I

    .line 52
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_length:I

    .line 53
    return-void
.end method


# virtual methods
.method public debugFormatAsString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 63
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "ver+inst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_verAndInstance:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_type:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_length:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 56
    iget v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_verAndInstance:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 57
    iget v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 58
    iget v0, p0, Lorg/apache/poi/hssf/record/DrawingSelectionRecord$OfficeArtRecordHeader;->_length:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 59
    return-void
.end method
