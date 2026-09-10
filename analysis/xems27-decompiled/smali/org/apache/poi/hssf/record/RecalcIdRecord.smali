.class public final Lorg/apache/poi/hssf/record/RecalcIdRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "RecalcIdRecord.java"


# static fields
.field public static final sid:S = 0x1c1s


# instance fields
.field private _engineId:I

.field private final _reserved0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    .line 50
    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 53
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    .line 57
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 88
    const/16 v0, 0x8

    return v0
.end method

.method public getEngineId()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 92
    const/16 v0, 0x1c1

    return v0
.end method

.method public isNeeded()Z
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    const/16 v0, 0x1c1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    iget v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 85
    return-void
.end method

.method public setEngineId(I)V
    .locals 0
    .param p1, "val"    # I

    .line 64
    iput p1, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[RECALCID]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "    .reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_reserved0:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v2, "    .engineId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/RecalcIdRecord;->_engineId:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "[/RECALCID]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
