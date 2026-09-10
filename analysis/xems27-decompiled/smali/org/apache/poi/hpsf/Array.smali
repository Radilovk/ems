.class Lorg/apache/poi/hpsf/Array;
.super Ljava/lang/Object;
.source "Array.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hpsf/Array$ArrayHeader;,
        Lorg/apache/poi/hpsf/Array$ArrayDimension;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

.field private _values:[Lorg/apache/poi/hpsf/TypedPropertyValue;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Array;->read([BI)I

    .line 99
    return-void
.end method


# virtual methods
.method read([BI)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 103
    move v0, p2

    .line 105
    .local v0, "offset":I
    new-instance v1, Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hpsf/Array$ArrayHeader;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    .line 106
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    iget-object v1, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->getNumberOfScalarValues()J

    move-result-wide v1

    .line 109
    .local v1, "numberOfScalarsLong":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 113
    long-to-int v3, v1

    .line 115
    .local v3, "numberOfScalars":I
    new-array v4, v3, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    iput-object v4, p0, Lorg/apache/poi/hpsf/Array;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 116
    iget-object v4, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-static {v4}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I

    move-result v4

    .line 117
    .local v4, "type":I
    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 119
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 121
    new-instance v6, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-direct {v6}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>()V

    .line 122
    .local v6, "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    invoke-virtual {v6, p1, v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read([BI)I

    move-result v7

    add-int/2addr v0, v7

    .line 119
    .end local v6    # "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 127
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 129
    new-instance v6, Lorg/apache/poi/hpsf/TypedPropertyValue;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 131
    .restart local v6    # "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    invoke-virtual {v6, p1, v0}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValuePadded([BI)I

    move-result v7

    add-int/2addr v0, v7

    .line 127
    .end local v6    # "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 135
    .end local v5    # "i":I
    :cond_2
    :goto_2
    sub-int v5, v0, p2

    return v5

    .line 110
    .end local v3    # "numberOfScalars":I
    .end local v4    # "type":I
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sorry, but POI can\'t store array of properties with size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " in memory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
