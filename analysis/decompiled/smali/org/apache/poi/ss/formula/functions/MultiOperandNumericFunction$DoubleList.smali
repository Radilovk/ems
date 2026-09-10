.class Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;
.super Ljava/lang/Object;
.source "MultiOperandNumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleList"
.end annotation


# instance fields
.field private _array:[D

.field private _count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    .line 57
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "reqSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    array-length v2, v2

    if-le p1, v2, :cond_0

    .line 70
    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v1, v2, 0x2

    .line 71
    .local v1, "newSize":I
    new-array v0, v1, [D

    .line 72
    .local v0, "newArr":[D
    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    iget v3, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    .line 75
    .end local v0    # "newArr":[D
    .end local v1    # "newSize":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->ensureCapacity(I)V

    .line 79
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    aput-wide p1, v0, v1

    .line 80
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    .line 81
    return-void
.end method

.method public toArray()[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 61
    sget-object v0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;->EMPTY_DOUBLE_ARRAY:[D

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    new-array v0, v1, [D

    .line 64
    .local v0, "result":[D
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_array:[D

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction$DoubleList;->_count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
