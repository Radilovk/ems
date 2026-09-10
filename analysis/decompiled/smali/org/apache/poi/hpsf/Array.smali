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

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/Array;->read([BI)I

    .line 99
    return-void
.end method


# virtual methods
.method read([BI)I
    .locals 10
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .prologue
    .line 103
    move v4, p2

    .line 105
    .local v4, "offset":I
    new-instance v7, Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-direct {v7, p1, v4}, Lorg/apache/poi/hpsf/Array$ArrayHeader;-><init>([BI)V

    iput-object v7, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    .line 106
    iget-object v7, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->getSize()I

    move-result v7

    add-int/2addr v4, v7

    .line 108
    iget-object v7, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->getNumberOfScalarValues()J

    move-result-wide v2

    .line 109
    .local v2, "numberOfScalarsLong":J
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 110
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sorry, but POI can\'t store array of properties with size of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in memory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    :cond_0
    long-to-int v1, v2

    .line 115
    .local v1, "numberOfScalars":I
    new-array v7, v1, [Lorg/apache/poi/hpsf/TypedPropertyValue;

    iput-object v7, p0, Lorg/apache/poi/hpsf/Array;->_values:[Lorg/apache/poi/hpsf/TypedPropertyValue;

    .line 116
    iget-object v7, p0, Lorg/apache/poi/hpsf/Array;->_header:Lorg/apache/poi/hpsf/Array$ArrayHeader;

    invoke-static {v7}, Lorg/apache/poi/hpsf/Array$ArrayHeader;->access$100(Lorg/apache/poi/hpsf/Array$ArrayHeader;)I

    move-result v5

    .line 117
    .local v5, "type":I
    const/16 v7, 0xc

    if-ne v5, v7, :cond_1

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 121
    new-instance v6, Lorg/apache/poi/hpsf/TypedPropertyValue;

    invoke-direct {v6}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>()V

    .line 122
    .local v6, "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    invoke-virtual {v6, p1, v4}, Lorg/apache/poi/hpsf/TypedPropertyValue;->read([BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    .end local v6    # "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 129
    new-instance v6, Lorg/apache/poi/hpsf/TypedPropertyValue;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lorg/apache/poi/hpsf/TypedPropertyValue;-><init>(ILjava/lang/Object;)V

    .line 131
    .restart local v6    # "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    invoke-virtual {v6, p1, v4}, Lorg/apache/poi/hpsf/TypedPropertyValue;->readValuePadded([BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v6    # "typedPropertyValue":Lorg/apache/poi/hpsf/TypedPropertyValue;
    :cond_2
    sub-int v7, v4, p2

    return v7
.end method
