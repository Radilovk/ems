.class final Lorg/apache/poi/util/BinaryTree$Node;
.super Ljava/lang/Object;
.source "BinaryTree.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/BinaryTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private _black:[Z

.field private _calculated_hashcode:Z

.field private _data:[Ljava/lang/Comparable;

.field private _hashcode:I

.field private _left:[Lorg/apache/poi/util/BinaryTree$Node;

.field private _parent:[Lorg/apache/poi/util/BinaryTree$Node;

.field private _right:[Lorg/apache/poi/util/BinaryTree$Node;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/Comparable;
    .param p2, "value"    # Ljava/lang/Comparable;

    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    iput-object v1, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    .line 1859
    new-array v1, v0, [Lorg/apache/poi/util/BinaryTree$Node;

    const/4 v4, 0x0

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lorg/apache/poi/util/BinaryTree$Node;->_left:[Lorg/apache/poi/util/BinaryTree$Node;

    .line 1863
    new-array v1, v0, [Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lorg/apache/poi/util/BinaryTree$Node;->_right:[Lorg/apache/poi/util/BinaryTree$Node;

    .line 1867
    new-array v1, v0, [Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v4, v1, v2

    aput-object v4, v1, v3

    iput-object v1, p0, Lorg/apache/poi/util/BinaryTree$Node;->_parent:[Lorg/apache/poi/util/BinaryTree$Node;

    .line 1871
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    .line 1875
    iput-boolean v2, p0, Lorg/apache/poi/util/BinaryTree$Node;->_calculated_hashcode:Z

    .line 1876
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method


# virtual methods
.method public copyColor(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 2028
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    iget-object v1, p1, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    aget-boolean v1, v1, p2

    aput-boolean v1, v0, p2

    .line 2029
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2076
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2078
    return v0

    .line 2080
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2082
    return v2

    .line 2084
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2086
    .local v1, "e":Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v3, v3, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    sget v4, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v3, v3, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getData(I)Ljava/lang/Comparable;
    .locals 1
    .param p1, "index"    # I

    .line 1887
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 2038
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p1, "index"    # I

    .line 1911
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_left:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParent(I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p1, "index"    # I

    .line 1958
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_parent:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRight(I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p1, "index"    # I

    .line 1935
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_right:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 2046
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 2096
    iget-boolean v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_calculated_hashcode:Z

    if-nez v0, :cond_0

    .line 2098
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree$Node;->_data:[Ljava/lang/Comparable;

    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_hashcode:I

    .line 2100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_calculated_hashcode:Z

    .line 2102
    :cond_0
    iget v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_hashcode:I

    return v0
.end method

.method public isBlack(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1985
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public isRed(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1997
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    aget-boolean v0, v0, p1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setBlack(I)V
    .locals 2
    .param p1, "index"    # I

    .line 2007
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 2008
    return-void
.end method

.method public setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 1898
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_left:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object p1, v0, p2

    .line 1899
    return-void
.end method

.method public setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 1946
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_parent:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object p1, v0, p2

    .line 1947
    return-void
.end method

.method public setRed(I)V
    .locals 2
    .param p1, "index"    # I

    .line 2017
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 2018
    return-void
.end method

.method public setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 1
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 1922
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_right:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object p1, v0, p2

    .line 1923
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ignored"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 2060
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.Entry.setValue is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public swapColors(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 4
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 1971
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    aget-boolean v1, v0, p2

    iget-object v2, p1, Lorg/apache/poi/util/BinaryTree$Node;->_black:[Z

    aget-boolean v3, v2, p2

    xor-int/2addr v1, v3

    aput-boolean v1, v0, p2

    .line 1972
    aget-boolean v1, v2, p2

    aget-boolean v3, v0, p2

    xor-int/2addr v1, v3

    aput-boolean v1, v2, p2

    .line 1973
    aget-boolean v1, v0, p2

    aget-boolean v2, v2, p2

    xor-int/2addr v1, v2

    aput-boolean v1, v0, p2

    .line 1974
    return-void
.end method
