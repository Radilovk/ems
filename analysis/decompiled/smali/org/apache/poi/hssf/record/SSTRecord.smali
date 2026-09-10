.class public final Lorg/apache/poi/hssf/record/SSTRecord;
.super Lorg/apache/poi/hssf/record/cont/ContinuableRecord;
.source "SSTRecord.java"


# static fields
.field private static final EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

.field static final MAX_DATA_SPACE:I = 0x2018

.field static final SST_RECORD_OVERHEAD:I = 0xc

.field static final STD_RECORD_OVERHEAD:I = 0x4

.field public static final sid:S = 0xfcs


# instance fields
.field bucketAbsoluteOffsets:[I

.field bucketRelativeOffsets:[I

.field private deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

.field private field_1_num_strings:I

.field private field_2_num_unique_strings:I

.field private field_3_strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hssf/record/SSTRecord;->EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 71
    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    .line 72
    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 73
    new-instance v0, Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0}, Lorg/apache/poi/util/IntMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    .line 74
    new-instance v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 239
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecord;-><init>()V

    .line 243
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    .line 244
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 245
    new-instance v0, Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0}, Lorg/apache/poi/util/IntMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    .line 247
    new-instance v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;-><init>(Lorg/apache/poi/util/IntMapper;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    .line 250
    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    iget v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public addString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I
    .locals 4
    .param p1, "string"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .prologue
    .line 86
    iget v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    .line 87
    if-nez p1, :cond_0

    sget-object v2, Lorg/apache/poi/hssf/record/SSTRecord;->EMPTY_STRING:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 90
    .local v2, "ucs":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/IntMapper;->getIndex(Ljava/lang/Object;)I

    move-result v0

    .line 92
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 93
    move v1, v0

    .line 101
    .local v1, "rval":I
    :goto_1
    return v1

    .end local v0    # "index":I
    .end local v1    # "rval":I
    .end local v2    # "ucs":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_0
    move-object v2, p1

    .line 87
    goto :goto_0

    .line 97
    .restart local v0    # "index":I
    .restart local v2    # "ucs":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v3}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v1

    .line 98
    .restart local v1    # "rval":I
    iget v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    .line 99
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {v3, v2}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    goto :goto_1
.end method

.method public calcExtSSTRecordSize()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getRecordSizeForStrings(I)I

    move-result v0

    return v0
.end method

.method countStrings()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v0

    return v0
.end method

.method public createExtSSTRecord(I)Lorg/apache/poi/hssf/record/ExtSSTRecord;
    .locals 6
    .param p1, "sstOffset"    # I

    .prologue
    .line 299
    iget-object v4, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    if-nez v4, :cond_1

    .line 300
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "SST record has not yet been serialized."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/ExtSSTRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/ExtSSTRecord;-><init>()V

    .line 303
    .local v1, "extSST":Lorg/apache/poi/hssf/record/ExtSSTRecord;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setNumStringsPerBucket(S)V

    .line 304
    iget-object v4, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 305
    .local v0, "absoluteOffsets":[I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 306
    .local v3, "relativeOffsets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 307
    aget v4, v0, v2

    add-int/2addr v4, p1

    aput v4, v0, v2

    .line 306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v1, v0, v3}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->setBucketOffsets([I[I)V

    .line 309
    return-object v1
.end method

.method getDeserializer()Lorg/apache/poi/hssf/record/SSTDeserializer;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->deserializer:Lorg/apache/poi/hssf/record/SSTDeserializer;

    return-object v0
.end method

.method public getNumStrings()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_1_num_strings:I

    return v0
.end method

.method public getNumUniqueStrings()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_2_num_unique_strings:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0xfc

    return v0
.end method

.method public getString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0, p1}, Lorg/apache/poi/util/IntMapper;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-object v0
.end method

.method getStrings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v0}, Lorg/apache/poi/util/IntMapper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .prologue
    .line 275
    new-instance v0, Lorg/apache/poi/hssf/record/SSTSerializer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumStrings()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumUniqueStrings()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/hssf/record/SSTSerializer;-><init>(Lorg/apache/poi/util/IntMapper;II)V

    .line 276
    .local v0, "serializer":Lorg/apache/poi/hssf/record/SSTSerializer;
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SSTSerializer;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 277
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getBucketAbsoluteOffsets()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketAbsoluteOffsets:[I

    .line 278
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getBucketRelativeOffsets()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTRecord;->bucketRelativeOffsets:[I

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v3, "[SST]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v3, "    .numstrings     = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumStrings()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v3, "    .uniquestrings  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SSTRecord;->getNumUniqueStrings()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v3}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 149
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTRecord;->field_3_strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v3, v1}, Lorg/apache/poi/util/IntMapper;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 150
    .local v2, "s":Lorg/apache/poi/hssf/record/common/UnicodeString;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    .string_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getDebugInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "s":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_0
    const-string v3, "[/SST]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
