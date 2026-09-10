.class public Lorg/apache/poi/util/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "mask"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/apache/poi/util/BitField;->_mask:I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "count":I
    move v1, p1

    .line 48
    .local v1, "bit_pattern":I
    if-eqz v1, :cond_0

    .line 50
    :goto_0
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iput v0, p0, Lorg/apache/poi/util/BitField;->_shift_count:I

    .line 57
    return-void
.end method


# virtual methods
.method public clear(I)I
    .locals 1
    .param p1, "holder"    # I

    .line 200
    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    not-int v0, v0

    and-int/2addr v0, p1

    return v0
.end method

.method public clearByte(B)B
    .locals 1
    .param p1, "holder"    # B

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearShort(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRawValue(I)I
    .locals 1
    .param p1, "holder"    # I

    .line 106
    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public getShortRawValue(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->getRawValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getShortValue(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getValue(I)I
    .locals 2
    .param p1, "holder"    # I

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->getRawValue(I)I

    move-result v0

    iget v1, p0, Lorg/apache/poi/util/BitField;->_shift_count:I

    ushr-int/2addr v0, v1

    return v0
.end method

.method public isAllSet(I)Z
    .locals 2
    .param p1, "holder"    # I

    .line 153
    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    and-int v1, p1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "holder"    # I

    .line 137
    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(I)I
    .locals 1
    .param p1, "holder"    # I

    .line 244
    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    or-int/2addr v0, p1

    return v0
.end method

.method public setBoolean(IZ)I
    .locals 1
    .param p1, "holder"    # I
    .param p2, "flag"    # Z

    .line 288
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public setByte(B)B
    .locals 1
    .param p1, "holder"    # B

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public setByteBoolean(BZ)B
    .locals 1
    .param p1, "holder"    # B
    .param p2, "flag"    # Z

    .line 322
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->setByte(B)B

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clearByte(B)B

    move-result v0

    :goto_0
    return v0
.end method

.method public setShort(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setShortBoolean(SZ)S
    .locals 1
    .param p1, "holder"    # S
    .param p2, "flag"    # Z

    .line 305
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->setShort(S)S

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BitField;->clearShort(S)S

    move-result v0

    :goto_0
    return v0
.end method

.method public setShortValue(SS)S
    .locals 1
    .param p1, "holder"    # S
    .param p2, "value"    # S

    .line 185
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(II)I
    .locals 3
    .param p1, "holder"    # I
    .param p2, "value"    # I

    .line 169
    iget v0, p0, Lorg/apache/poi/util/BitField;->_mask:I

    not-int v1, v0

    and-int/2addr v1, p1

    iget v2, p0, Lorg/apache/poi/util/BitField;->_shift_count:I

    shl-int v2, p2, v2

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method
