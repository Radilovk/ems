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

    .line 90
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 93
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 94
    .local v0, "nInfos":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v1, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 97
    new-instance v2, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 98
    .local v2, "info":Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 103
    .end local v2    # "info":Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v2, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    .line 105
    return-void
.end method

.method public static final getNumberOfInfoRecsForStrings(I)I
    .locals 2
    .param p0, "numStrings"    # I

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

    .line 142
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getInfoSubRecords()[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 166
    const/16 v0, 0xff

    return v0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 136
    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 137
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 138
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "k":I
    :cond_0
    return-void
.end method

.method public setBucketOffsets([I[I)V
    .locals 5
    .param p1, "bucketAbsoluteOffsets"    # [I
    .param p2, "bucketRelativeOffsets"    # [I

    .line 171
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

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
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setNumStringsPerBucket(S)V
    .locals 0
    .param p1, "numStrings"    # S

    .line 108
    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[EXTSST]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v1, "    .dsst           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_stringsPerBucket:S

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v2, "    .numInfoRecords = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 122
    const-string v3, "    .inforecord     = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v3, "    .streampos      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->getStreamPos()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v3, "    .sstoffset      = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord;->_sstInfos:[Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->getBucketSSTOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "k":I
    :cond_0
    const-string v1, "[/EXTSST]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
