.class final Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;
.super Ljava/lang/Object;
.source "PageItemRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/pivottable/PageItemRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldInfo"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x6


# instance fields
.field private _idObj:I

.field private _isxvd:I

.field private _isxvi:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    .line 47
    return-void
.end method


# virtual methods
.method public appendDebugInfo(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 56
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    const-string v0, "isxvi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 58
    const-string v0, " isxvd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 59
    const-string v0, " idObj="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 60
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    return-void
.end method

.method protected serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 50
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvi:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 51
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_isxvd:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 52
    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/PageItemRecord$FieldInfo;->_idObj:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 53
    return-void
.end method
