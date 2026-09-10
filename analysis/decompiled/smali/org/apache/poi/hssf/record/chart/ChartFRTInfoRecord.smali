.class public final Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ChartFRTInfoRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;
    }
.end annotation


# static fields
.field public static final sid:S = 0x850s


# instance fields
.field private grbitFrt:S

.field private rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

.field private rt:S

.field private verOriginator:B

.field private verWriter:B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    .line 58
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v2

    iput-byte v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 63
    .local v0, "cCFRTID":I
    new-array v2, v0, [Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    new-instance v3, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    invoke-direct {v3, p1}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x850

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 82
    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 83
    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 84
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 85
    iget-byte v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verWriter:B

    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 86
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    array-length v1, v2

    .line 87
    .local v1, "nCFRTIDs":I
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 90
    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[CHARTFRTINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v1, "    .rt           ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rt:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, "    .grbitFrt     ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->grbitFrt:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, "    .verOriginator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, "    .verWriter    ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->verOriginator:B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "    .nCFRTIDs     ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord;->rgCFRTID:[Lorg/apache/poi/hssf/record/chart/ChartFRTInfoRecord$CFRTID;

    array-length v2, v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, "[/CHARTFRTINFO]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
