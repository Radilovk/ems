.class public final Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
.super Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
.source "HSSFClientAnchor.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ClientAnchor;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(IIIISISI)V
    .locals 3
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I
    .param p5, "col1"    # S
    .param p6, "row1"    # I
    .param p7, "col2"    # S
    .param p8, "row2"    # I

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>(IIII)V

    .line 62
    const/4 v0, 0x0

    const/16 v1, 0x3ff

    const-string v2, "dx1"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 63
    const-string v2, "dx2"

    invoke-direct {p0, p3, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 64
    const/16 v1, 0xff

    const-string v2, "dy1"

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 65
    const-string v2, "dy2"

    invoke-direct {p0, p4, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 66
    const-string v2, "col1"

    invoke-direct {p0, p5, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 67
    const-string v2, "col2"

    invoke-direct {p0, p7, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 68
    const v1, 0xff00

    const-string v2, "row1"

    invoke-direct {p0, p6, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 69
    const-string v2, "row2"

    invoke-direct {p0, p8, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 71
    invoke-static {p5, p7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    .line 72
    invoke-static {p5, p7}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 73
    invoke-static {p6, p8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow1(I)V

    .line 74
    invoke-static {p6, p8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    .line 76
    const/4 v0, 0x1

    if-le p5, p7, :cond_0

    .line 77
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isHorizontallyFlipped:Z

    .line 79
    :cond_0
    if-le p6, p8, :cond_1

    .line 80
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isVerticallyFlipped:Z

    .line 82
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V
    .locals 0
    .param p1, "escherClientAnchorRecord"    # Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 34
    return-void
.end method

.method private checkRange(IIILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "minRange"    # I
    .param p3, "maxRange"    # I
    .param p4, "varName"    # Ljava/lang/String;

    .line 266
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 268
    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F
    .locals 2
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .param p2, "rowNum"    # I

    .line 111
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    .line 112
    .local v0, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v1

    return v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeightInPoints()F

    move-result v1

    return v1
.end method


# virtual methods
.method protected createEscherAnchor()V
    .locals 1

    .line 244
    new-instance v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    .line 245
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 272
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 273
    return v0

    .line 274
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 275
    return v1

    .line 276
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 277
    return v0

    .line 278
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 280
    .local v2, "anchor":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getAnchorHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)F
    .locals 8
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 91
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v0

    .line 92
    .local v0, "y1":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v1

    .line 93
    .local v1, "y2":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94
    .local v2, "row1":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 96
    .local v3, "row2":I
    const/4 v4, 0x0

    .line 97
    .local v4, "points":F
    const/high16 v5, 0x43800000    # 256.0f

    if-ne v2, v3, :cond_0

    .line 98
    sub-int v6, v1, v0

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v5

    mul-float v6, v6, v5

    .end local v4    # "points":F
    .local v6, "points":F
    goto :goto_1

    .line 100
    .end local v6    # "points":F
    .restart local v4    # "points":F
    :cond_0
    int-to-float v6, v0

    sub-float v6, v5, v6

    div-float/2addr v6, v5

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    .line 101
    add-int/lit8 v6, v2, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 102
    invoke-direct {p0, p1, v6}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v7

    add-float/2addr v4, v7

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .end local v6    # "i":I
    :cond_1
    int-to-float v6, v1

    div-float/2addr v6, v5

    invoke-direct {p0, p1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRowHeightInPoints(Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)F

    move-result v5

    mul-float v6, v6, v5

    add-float/2addr v6, v4

    .line 107
    .end local v4    # "points":F
    .local v6, "points":F
    :goto_1
    return v6
.end method

.method public getAnchorType()I
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getFlag()S

    move-result v0

    return v0
.end method

.method public getCol1()S
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol1()S

    move-result v0

    return v0
.end method

.method public getCol2()S
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol2()S

    move-result v0

    return v0
.end method

.method public getDx1()I
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx1()S

    move-result v0

    return v0
.end method

.method public getDx2()I
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx2()S

    move-result v0

    return v0
.end method

.method public getDy1()I
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDy1()S

    move-result v0

    return v0
.end method

.method public getDy2()I
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDy2()S

    move-result v0

    return v0
.end method

.method protected getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    return-object v0
.end method

.method public getRow1()I
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow1()S

    move-result v0

    return v0
.end method

.method public getRow2()I
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow2()S

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 287
    nop

    .line 288
    const/16 v0, 0x2a

    return v0
.end method

.method public isHorizontallyFlipped()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isHorizontallyFlipped:Z

    return v0
.end method

.method public isVerticallyFlipped()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_isVerticallyFlipped:Z

    return v0
.end method

.method public setAnchor(SIIISIII)V
    .locals 4
    .param p1, "col1"    # S
    .param p2, "row1"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I
    .param p5, "col2"    # S
    .param p6, "row2"    # I
    .param p7, "x2"    # I
    .param p8, "y2"    # I

    .line 210
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3ff

    const-string v3, "dx1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v0

    const-string v3, "dx2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v0

    const/16 v2, 0xff

    const-string v3, "dy1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v0

    const-string v3, "dy2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v0

    const-string v3, "col1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v0

    const-string v3, "col2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v0

    const v2, 0xff00

    const-string v3, "row1"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v0

    const-string v3, "row2"

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    .line 220
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow1(I)V

    .line 221
    invoke-virtual {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx1(I)V

    .line 222
    invoke-virtual {p0, p4}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy1(I)V

    .line 223
    invoke-virtual {p0, p5}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 224
    invoke-virtual {p0, p6}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setRow2(I)V

    .line 225
    invoke-virtual {p0, p7}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDx2(I)V

    .line 226
    invoke-virtual {p0, p8}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setDy2(I)V

    .line 227
    return-void
.end method

.method public setAnchorType(I)V
    .locals 2
    .param p1, "anchorType"    # I

    .line 262
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setFlag(S)V

    .line 263
    return-void
.end method

.method public setCol1(I)V
    .locals 1
    .param p1, "col1"    # I

    .line 137
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol1(S)V

    .line 138
    return-void
.end method

.method public setCol1(S)V
    .locals 3
    .param p1, "col1"    # S

    .line 129
    const/4 v0, 0x0

    const/16 v1, 0xff

    const-string v2, "col1"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol1(S)V

    .line 131
    return-void
.end method

.method public setCol2(I)V
    .locals 1
    .param p1, "col2"    # I

    .line 159
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->setCol2(S)V

    .line 160
    return-void
.end method

.method public setCol2(S)V
    .locals 3
    .param p1, "col2"    # S

    .line 151
    const/4 v0, 0x0

    const/16 v1, 0xff

    const-string v2, "col2"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol2(S)V

    .line 153
    return-void
.end method

.method public setDx1(I)V
    .locals 2
    .param p1, "dx1"    # I

    .line 298
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx1(S)V

    .line 299
    return-void
.end method

.method public setDx2(I)V
    .locals 2
    .param p1, "dx2"    # I

    .line 328
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx2(S)V

    .line 329
    return-void
.end method

.method public setDy1(I)V
    .locals 2
    .param p1, "dy1"    # I

    .line 308
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy1(S)V

    .line 309
    return-void
.end method

.method public setDy2(I)V
    .locals 2
    .param p1, "dy2"    # I

    .line 318
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy2(S)V

    .line 319
    return-void
.end method

.method public setRow1(I)V
    .locals 3
    .param p1, "row1"    # I

    .line 173
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    const-string v2, "row1"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow1(S)V

    .line 175
    return-void
.end method

.method public setRow2(I)V
    .locals 3
    .param p1, "row2"    # I

    .line 188
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    const-string v2, "row2"

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->checkRange(IIILjava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->_escherClientAnchor:Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow2(S)V

    .line 190
    return-void
.end method
