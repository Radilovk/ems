.class public final Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ViewFieldsRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord$Axis;
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0xa

.field private static final STRING_NOT_PRESENT_LEN:I = 0xffff

.field public static final sid:S = 0xb1s


# instance fields
.field private _cItm:I

.field private _cSub:I

.field private _grbitSub:I

.field private _name:Ljava/lang/String;

.field private _sxaxis:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 64
    .local v0, "cchName":I
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v1

    .line 66
    .local v1, "flag":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    .line 72
    .end local v1    # "flag":I
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v1    # "flag":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readCompressedUnicode(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const/16 v0, 0xa

    .line 94
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0xb1

    return v0
.end method

.method protected serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 79
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 80
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const v0, 0xffff

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SXVD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, "    .sxaxis    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_sxaxis:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, "    .cSub      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cSub:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, "    .grbitSub  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_grbitSub:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, "    .cItm      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_cItm:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    const-string v1, "    .name      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/pivottable/ViewFieldsRecord;->_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, "[/SXVD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
