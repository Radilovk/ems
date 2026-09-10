.class public final Lorg/apache/poi/hssf/record/FeatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FeatRecord.java"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger; = null

.field public static final sid:S = 0x868s


# instance fields
.field private cbFeatData:J

.field private cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

.field private futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

.field private isf_sharedFeatureType:I

.field private reserved1:B

.field private reserved2:J

.field private reserved3:I

.field private sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/poi/hssf/record/FeatRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FeatRecord;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 63
    const/16 v1, 0x868

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->setRecordType(S)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 70
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 71
    new-instance v0, Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    .line 76
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    .line 77
    .local v0, "cref":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    .line 78
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    .line 80
    new-array v1, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 81
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 82
    new-instance v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v3, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    aput-object v3, v2, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 96
    sget-object v1, Lorg/apache/poi/hssf/record/FeatRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Shared Feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_1

    .line 93
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/common/FeatSmartTag;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/common/FeatSmartTag;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    .line 94
    goto :goto_1

    .line 90
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    .line 91
    goto :goto_1

    .line 87
    :cond_3
    new-instance v1, Lorg/apache/poi/hssf/record/common/FeatProtection;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/common/FeatProtection;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    .line 88
    nop

    .line 98
    :goto_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FeatRecord;->cloneViaReserialise()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    return-object v0
.end method

.method public getCbFeatData()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    return-wide v0
.end method

.method public getCellRefs()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object v0
.end method

.method protected getDataSize()I
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1b

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    invoke-interface {v1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getIsf_sharedFeatureType()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    return v0
.end method

.method public getSharedFeature()Lorg/apache/poi/hssf/record/common/SharedFeature;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 67
    const/16 v0, 0x868

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 111
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->futureHeader:Lorg/apache/poi/hssf/record/common/FtrHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/common/FtrHeader;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 113
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 114
    iget-byte v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved1:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 115
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved2:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 117
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 118
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 121
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    invoke-interface {v0, p1}, Lorg/apache/poi/hssf/record/common/SharedFeature;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 125
    return-void
.end method

.method public setCbFeatData(J)V
    .locals 0
    .param p1, "cbFeatData"    # J

    .line 141
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    .line 142
    return-void
.end method

.method public setCellRefs([Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 0
    .param p1, "cellRefs"    # [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 148
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cellRefs:[Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 149
    return-void
.end method

.method public setSharedFeature(Lorg/apache/poi/hssf/record/common/SharedFeature;)V
    .locals 2
    .param p1, "feature"    # Lorg/apache/poi/hssf/record/common/SharedFeature;

    .line 155
    iput-object p1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    .line 157
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatProtection;

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    .line 160
    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 161
    iput v1, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    .line 163
    :cond_1
    instance-of v0, p1, Lorg/apache/poi/hssf/record/common/FeatSmartTag;

    if-eqz v0, :cond_2

    .line 164
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    .line 167
    :cond_2
    iget v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->isf_sharedFeatureType:I

    if-ne v0, v1, :cond_3

    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->sharedFeature:Lorg/apache/poi/hssf/record/common/SharedFeature;

    invoke-interface {v0}, Lorg/apache/poi/hssf/record/common/SharedFeature;->getDataSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    goto :goto_0

    .line 170
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/FeatRecord;->cbFeatData:J

    .line 172
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SHARED FEATURE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, "[/SHARED FEATURE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
