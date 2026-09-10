.class final Lorg/apache/poi/hssf/record/SSTSerializer;
.super Ljava/lang/Object;
.source "SSTSerializer.java"


# instance fields
.field private final _numStrings:I

.field private final _numUniqueStrings:I

.field private final bucketAbsoluteOffsets:[I

.field private final bucketRelativeOffsets:[I

.field private final strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/IntMapper;II)V
    .locals 2
    .param p2, "numStrings"    # I
    .param p3, "numUniqueStrings"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;II)V"
        }
    .end annotation

    .line 43
    .local p1, "strings":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->strings:Lorg/apache/poi/util/IntMapper;

    .line 45
    iput p2, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->_numStrings:I

    .line 46
    iput p3, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->_numUniqueStrings:I

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtSSTRecord;->getNumberOfInfoRecsForStrings(I)I

    move-result v0

    .line 49
    .local v0, "infoRecs":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->bucketAbsoluteOffsets:[I

    .line 50
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->bucketRelativeOffsets:[I

    .line 51
    return-void
.end method

.method private getUnicodeString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/SSTSerializer;->getUnicodeString(Lorg/apache/poi/util/IntMapper;I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    return-object v0
.end method

.method private static getUnicodeString(Lorg/apache/poi/util/IntMapper;I)Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;I)",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;"
        }
    .end annotation

    .line 82
    .local p0, "strings":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntMapper;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-object v0
.end method


# virtual methods
.method public getBucketAbsoluteOffsets()[I
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->bucketAbsoluteOffsets:[I

    return-object v0
.end method

.method public getBucketRelativeOffsets()[I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->bucketRelativeOffsets:[I

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V
    .locals 4
    .param p1, "out"    # Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    .line 54
    iget v0, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->_numStrings:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 55
    iget v0, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->_numUniqueStrings:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 57
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->strings:Lorg/apache/poi/util/IntMapper;

    invoke-virtual {v1}, Lorg/apache/poi/util/IntMapper;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 59
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->getTotalSize()I

    move-result v1

    .line 62
    .local v1, "rOff":I
    div-int/lit8 v2, v0, 0x8

    .line 63
    .local v2, "index":I
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 65
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->bucketAbsoluteOffsets:[I

    aput v1, v3, v2

    .line 66
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SSTSerializer;->bucketRelativeOffsets:[I

    aput v1, v3, v2

    .line 69
    .end local v1    # "rOff":I
    .end local v2    # "index":I
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/SSTSerializer;->getUnicodeString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    .line 70
    .local v1, "s":Lorg/apache/poi/hssf/record/common/UnicodeString;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->serialize(Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;)V

    .line 57
    .end local v1    # "s":Lorg/apache/poi/hssf/record/common/UnicodeString;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "k":I
    :cond_1
    return-void
.end method
