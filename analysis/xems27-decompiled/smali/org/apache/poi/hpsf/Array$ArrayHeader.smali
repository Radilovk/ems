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
    .locals 7
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    move v0, p2

    .line 49
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    .line 50
    add-int/lit8 v0, v0, 0x4

    .line 52
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    .line 53
    .local v1, "numDimensionsUnsigned":J
    add-int/lit8 v0, v0, 0x4

    .line 55
    const-wide/16 v3, 0x1

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    const-wide/16 v3, 0x1f

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 59
    long-to-int v3, v1

    .line 61
    .local v3, "numDimensions":I
    new-array v4, v3, [Lorg/apache/poi/hpsf/Array$ArrayDimension;

    iput-object v4, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .line 62
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 64
    iget-object v5, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    new-instance v6, Lorg/apache/poi/hpsf/Array$ArrayDimension;

    invoke-direct {v6, p1, v0}, Lorg/apache/poi/hpsf/Array$ArrayDimension;-><init>([BI)V

    aput-object v6, v5, v4

    .line 65
    add-int/lit8 v0, v0, 0x8

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
    .end local v3    # "numDimensions":I
    :cond_1
    new-instance v3, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Array dimension number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is not in [1; 31] range"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hpsf/Array$ArrayHeader;

    .line 40
    iget v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return v0
.end method


# virtual methods
.method getNumberOfScalarValues()J
    .locals 8

    .line 71
    const-wide/16 v0, 0x1

    .line 72
    .local v0, "result":J
    iget-object v2, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .local v2, "arr$":[Lorg/apache/poi/hpsf/Array$ArrayDimension;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 73
    .local v5, "dimension":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    invoke-static {v5}, Lorg/apache/poi/hpsf/Array$ArrayDimension;->access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J

    move-result-wide v6

    mul-long v0, v0, v6

    .line 72
    .end local v5    # "dimension":Lorg/apache/poi/hpsf/Array$ArrayDimension;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "arr$":[Lorg/apache/poi/hpsf/Array$ArrayDimension;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    return-wide v0
.end method

.method getSize()I
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_dimensions:[Lorg/apache/poi/hpsf/Array$ArrayDimension;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getType()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/apache/poi/hpsf/Array$ArrayHeader;->_type:I

    return v0
.end method
