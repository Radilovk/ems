.class final Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
.super Ljava/lang/Object;
.source "Offset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Offset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LinearOffsetRange"
.end annotation


# instance fields
.field private final _length:I

.field private final _offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p2, :cond_0

    .line 62
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    .line 63
    iput p2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    .line 64
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "length may not be zero"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFirstIndex()S
    .locals 1

    .line 67
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    int-to-short v0, v0

    return v0
.end method

.method public getLastIndex()S
    .locals 2

    .line 70
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    return v0
.end method

.method public isOutOfBounds(II)Z
    .locals 2
    .param p1, "lowValidIx"    # I
    .param p2, "highValidIx"    # I

    .line 95
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    .line 96
    return v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result v0

    if-le v0, p2, :cond_1

    .line 99
    return v1

    .line 101
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public normaliseAndTranslate(I)Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;
    .locals 3
    .param p1, "translationAmount"    # I

    .line 85
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_length:I

    if-lez v0, :cond_1

    .line 86
    if-nez p1, :cond_0

    .line 87
    return-object p0

    .line 89
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    add-int/2addr v2, p1

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    return-object v1

    .line 91
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    neg-int v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;-><init>(II)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->_offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Offset$LinearOffsetRange;->getLastIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
