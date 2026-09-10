.class public final Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ChartStartBlockRecord.java"


# static fields
.field public static final sid:S = 0x852s


# instance fields
.field private grbitFrt:S

.field private iObjectContext:S

.field private iObjectInstance1:S

.field private iObjectInstance2:S

.field private iObjectKind:S

.field private rt:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    .line 46
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    .line 50
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->clone()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;-><init>()V

    .line 91
    .local v0, "record":Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    .line 92
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    .line 93
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    .line 94
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    .line 95
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    .line 96
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    .line 98
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 54
    const/16 v0, 0xc

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 59
    const/16 v0, 0x852

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 64
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 65
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 68
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 69
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[STARTBLOCK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "    .rt              ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->rt:S

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    const-string v2, "    .grbitFrt        ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->grbitFrt:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const-string v2, "    .iObjectKind     ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectKind:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    const-string v2, "    .iObjectContext  ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectContext:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-string v2, "    .iObjectInstance1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance1:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const-string v2, "    .iObjectInstance2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartStartBlockRecord;->iObjectInstance2:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "[/STARTBLOCK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
