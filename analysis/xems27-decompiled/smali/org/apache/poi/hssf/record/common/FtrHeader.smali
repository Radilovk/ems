.class public final Lorg/apache/poi/hssf/record/common/FtrHeader;
.super Ljava/lang/Object;
.source "FtrHeader.java"


# instance fields
.field private grbitFrt:S

.field private recordType:S

.field private reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->reserved:[B

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    .line 46
    const/16 v0, 0x8

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->reserved:[B

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->read([BII)I

    .line 48
    return-void
.end method

.method public static getDataSize()I
    .locals 1

    .line 66
    const/16 v0, 0xc

    return v0
.end method


# virtual methods
.method public getGrbitFrt()S
    .locals 1

    .line 77
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    return v0
.end method

.method public getRecordType()S
    .locals 1

    .line 70
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    return v0
.end method

.method public getReserved()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->reserved:[B

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 60
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 61
    iget-short v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->reserved:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 63
    return-void
.end method

.method public setGrbitFrt(S)V
    .locals 0
    .param p1, "grbitFrt"    # S

    .line 80
    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    .line 81
    return-void
.end method

.method public setRecordType(S)V
    .locals 0
    .param p1, "recordType"    # S

    .line 73
    iput-short p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    .line 74
    return-void
.end method

.method public setReserved([B)V
    .locals 0
    .param p1, "reserved"    # [B

    .line 87
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->reserved:[B

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, " [FUTURE HEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->recordType:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   Flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/common/FtrHeader;->grbitFrt:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, " [/FUTURE HEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
