.class Lorg/apache/poi/hpsf/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _type:S

.field private _values:[Lorg/apache/poi/hpsf/TypedPropertyValue;


# direct methods
.method constructor <init>(S)V
    .locals 0
    .param p1, "type"    # S

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-short p1, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    .line 43
    return-void
.end method

.method constructor <init>([BIS)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I
    .param p3, "type"    # S

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-short p3, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Vector;->read([BI)I

    .line 38
    return-void
.end method


# virtual methods
.method getValues()[Lorg/apache/poi/hpsf/TypedPropertyValue;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    return-object v0
.end method

.method read([BI)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 47
    move v0, p2

    .line 49
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v1

    .line 50
    .local v1, "longLength":J
    add-int/lit8 v0, v0, 0x4

    .line 52
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 55
    long-to-int v3, v1

    .line 57
    .local v3, "length":I
    new-array v4, v3, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    iput-object v4, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 59
    iget-short v4, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 61
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 63
    new-instance v5, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-direct {v5}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>()V

    .line 64
    .local v5, "value":Lorg/apache/poi/hpsf/TypedPropertyValue;
    invoke-virtual {v5, p1, v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read([BI)I

    move-result v6

    add-int/2addr v0, v6

    .line 65
    iget-object v6, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    aput-object v5, v6, v4

    .line 61
    .end local v5    # "value":Lorg/apache/poi/hpsf/TypedPropertyValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    goto :goto_2

    .line 70
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 72
    new-instance v5, Lorg/apache/poi/hpsf/TypedPropertyValue;

    iget-short v6, p0, Lorg/apache/poi/hpsf/Vector;->_type:S

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 74
    .restart local v5    # "value":Lorg/apache/poi/hpsf/TypedPropertyValue;
    invoke-virtual {v5, p1, v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValue([BI)I

    move-result v6

    add-int/2addr v0, v6

    .line 75
    iget-object v6, p0, Lorg/apache/poi/hpsf/Vector;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    aput-object v5, v6, v4

    .line 70
    .end local v5    # "value":Lorg/apache/poi/hpsf/TypedPropertyValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    .end local v4    # "i":I
    :cond_2
    :goto_2
    sub-int v4, v0, p2

    return v4

    .line 53
    .end local v3    # "length":I
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vector is too long -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
