.class Lorg/apache/poi/hpsf/Array$ArrayHeader;
.super Ljava/lang/Object;
.source "Array.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayHeader"
.end annotation


# instance fields
.field private _dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

.field private _type:I


# direct methods
.method constructor <init>([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    move v4, p2

    .line 49
    .local v4, "offset":I
    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v5

    iput v5, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    .line 50
    add-int/lit8 v4, v4, 0x4

    .line 52
    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v2

    .line 53
    .local v2, "numDimensionsUnsigned":J
    add-int/lit8 v4, v4, 0x4

    .line 55
    const-wide/16 v6, 0x1

    cmp-long v5, v6, v2

    if-gtz v5, :cond_0

    const-wide/16 v6, 0x1f

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 56
    :cond_0
    new-instance v5, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Array dimension number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not in [1; 31] range"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_1
    long-to-int v1, v2

    .line 61
    .local v1, "numDimensions":I
    new-array v5, v1, [Lorg/apache/poi/hpsf/Array$ArrayDimension;

    iput-object v5, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 64
    iget-object v5, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    new-instance v6, Lorg/apache/poi/hpsf/Array$ArrayDimension;

    invoke-direct {v6, p1, v4}, Lorg/apache/poi/hpsf/Array$ArrayDimension;-><init>([BI)V

    aput-object v6, v5, v0

    .line 65
    add-int/lit8 v4, v4, 0x8

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_2
    return-void
.end method

.method static synthetic access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hpsf/Array$ArrayHeader;

    .prologue
    .line 40
    iget v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return v0
.end method


# virtual methods
.method getNumberOfScalarValues()J
    .locals 8

    .prologue
    .line 71
    const-wide/16 v4, 0x1

    .line 72
    .local v4, "result":J
    iget-object v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .local v0, "arr$":[Lorg/apache/poi/hpsf/Array$ArrayDimension;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 73
    .local v1, "dimension":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    invoke-static {v1}, Lorg/apache/poi/hpsf/Array$ArrayDimension;->access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "dimension":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    :cond_0
    return-wide v4
.end method

.method getSize()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return v0
.end method
