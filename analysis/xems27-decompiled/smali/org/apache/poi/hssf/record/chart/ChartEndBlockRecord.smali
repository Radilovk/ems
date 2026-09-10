.class public final Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ChartEndBlockRecord.java"


# static fields
.field public static final sid:S = 0x853s


# instance fields
.field private grbitFrt:S

.field private iObjectKind:S

.field private rt:S

.field private unused:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    .line 47
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    .line 51
    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->clone()Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;-><init>()V

    .line 91
    .local v0, "record":Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    .line 92
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    .line 93
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    .line 94
    iget-object v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    .line 96
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 62
    const/16 v0, 0x853

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 67
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 68
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 69
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[ENDBLOCK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "    .rt         ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->rt:S

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    const-string v2, "    .grbitFrt   ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->grbitFrt:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-string v2, "    .iObjectKind="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->iObjectKind:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const-string v2, "    .unused     ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartEndBlockRecord;->unused:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "[/ENDBLOCK]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
