.class final Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;
.super Ljava/lang/Object;
.source "SSCellRange.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/util/SSCellRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final _array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field

.field private _index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TD;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;, "Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator<TD;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_array:[Ljava/lang/Object;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_index:I

    .line 122
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 124
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;, "Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator<TD;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_index:I

    iget-object v1, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;, "Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator<TD;>;"
    iget v0, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_index:I

    iget-object v1, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_array:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 130
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_index:I

    aget-object v0, v1, v0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;->_index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 134
    .local p0, "this":Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator;, "Lorg/apache/poi/ss/util/SSCellRange$ArrayIterator<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove cells from this CellRange."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
