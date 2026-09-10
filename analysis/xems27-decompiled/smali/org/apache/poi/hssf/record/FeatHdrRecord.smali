.class public final Lorg/apache/poi/hssf/record/FeatHdrRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FeatHdrRecord.java"


# static fields
.field public static final SHAREDFEATURES_ISFFACTOID:I = 0x4

.field public static final SHAREDFEATURES_ISFFEC2:I = 0x3

.field public static final SHAREDFEATURES_ISFLIST:I = 0x5

.field public static final SHAREDFEATURES_ISFPROTECTION:I = 0x2

.field public static final sid:S = 0x867s


# instance fields
.field private cbHdrData:J

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private isf_sharedFeatureType:I

.field private reserved:B

.field private rgbHdrData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 69
    const/16 v1, 0x867

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 76
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 77
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 79
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    .line 84
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x13

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 73
    const/16 v0, 0x867

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 99
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->isf_sharedFeatureType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 100
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->reserved:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 101
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->cbHdrData:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatHdrRecord;->rgbHdrData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FEATURE HEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "[/FEATURE HEADER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
