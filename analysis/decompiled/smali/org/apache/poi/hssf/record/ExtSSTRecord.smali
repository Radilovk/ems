.class public final Lorg/apache/poi/hssf/record/ExtSSTRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "ExtSSTRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUCKET_SIZE:I = 0x8

.field public static final MAX_BUCKETS:I = 0x80

.field public static final sid:S = 0xffs


# instance fields
.field private _sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

.field private _stringsPerBucket:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 86
    const/16 v0, 0x8

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v3

    iput-short v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    div-int/lit8 v2, v3, 0x8

    .line 94
    .local v2, "nInfos":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v1, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;>;"
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v3

    if-lez v3, :cond_1

    .line 97
    new-instance v0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 98
    .local v0, "info":Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_0

    .line 101
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    goto :goto_0

    .line 104
    .end local v0    # "info":Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    .line 105
    return-void
.end method

.method public static final getNumberOfInfoRecsForStrings(I)I
    .locals 2
    .param p0, "numStrings"    # I

    .prologue
    .line 150
    div-int/lit8 v0, p0, 0x8

    .line 151
    .local v0, "infoRecs":I
    rem-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 155
    :cond_0
    const/16 v1, 0x80

    if-le v0, v1, :cond_1

    .line 156
    const/16 v0, 0x80

    .line 157
    :cond_1
    return v0
.end method

.method public static final getRecordSizeForStrings(I)I
    .locals 1
    .param p0, "numStrings"    # I

    .prologue
    .line 162
    invoke-static {p0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getNumberOfInfoRecsForStrings(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x6

    return v0
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getInfoSubRecords()[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0xff

    return v0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .prologue
    .line 136
    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 137
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public setBucketOffsets([I[I)V
    .locals 5
    .param p1, "bucketAbsoluteOffsets"    # [I
    .param p2, "bucketRelativeOffsets"    # [I

    .prologue
    .line 171
    array-length v1, p1

    new-array v1, v1, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    new-instance v2, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget v3, p1, v0

    aget v4, p2, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;-><init>(II)V

    aput-object v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public setNumStringsPerBucket(S)V
    .locals 0
    .param p1, "numStrings"    # S

    .prologue
    .line 108
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v2, "[EXTSST]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v2, "    .dsst           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v2, "    .numInfoRecords = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 122
    const-string v2, "    .inforecord     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v2, "    .streampos      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->getStreamPos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v2, "    .sstoffset      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->getBucketSSTOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-string v2, "[/EXTSST]\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
