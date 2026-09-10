.class final Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;
.super Ljava/lang/Object;
.source "EscherContainerRecord.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ddf/EscherContainerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReadOnlyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/ddf/EscherRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private _index:I

.field private final _list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ddf/EscherRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_list:Ljava/util/List;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_index:I

    .line 166
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 169
    iget v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_index:I

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->next()Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/ddf/EscherRecord;
    .locals 3

    .line 172
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_list:Ljava/util/List;

    iget v1, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/ddf/EscherContainerRecord$ReadOnlyIterator;->_index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherRecord;

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
