.class public final Lorg/apache/poi/hssf/usermodel/HSSFPalette;
.super Ljava/lang/Object;
.source "HSSFPalette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;
    }
.end annotation


# instance fields
.field private _palette:Lorg/apache/poi/hssf/record/PaletteRecord;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/PaletteRecord;)V
    .locals 0
    .param p1, "palette"    # Lorg/apache/poi/hssf/record/PaletteRecord;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    .line 35
    return-void
.end method

.method private unsignedInt(B)I
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 137
    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public addColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 4
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B

    .prologue
    .line 165
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    .line 167
    .local v0, "b":[B
    const/16 v1, 0x8

    .local v1, "i":S
    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 169
    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->setColorAtIndex(SBBB)V

    .line 172
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v2

    return-object v2

    .line 167
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not find free color index"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public findColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 4
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B

    .prologue
    .line 76
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    .line 77
    .local v0, "b":[B
    const/16 v1, 0x8

    .local v1, "i":S
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-ne v2, p3, :cond_0

    .line 82
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;-><init>(S[B)V

    .line 85
    :goto_1
    return-object v2

    .line 78
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public findSimilarColor(BBB)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 3
    .param p1, "red"    # B
    .param p2, "green"    # B
    .param p3, "blue"    # B

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->unsignedInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->unsignedInt(B)I

    move-result v1

    invoke-direct {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->unsignedInt(B)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->findSimilarColor(III)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public findSimilarColor(III)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 7
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "result":Lorg/apache/poi/hssf/util/HSSFColor;
    const v3, 0x7fffffff

    .line 116
    .local v3, "minColorDistance":I
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    .line 117
    .local v0, "b":[B
    const/16 v2, 0x8

    .local v2, "i":S
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    invoke-direct {p0, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->unsignedInt(B)I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    invoke-direct {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->unsignedInt(B)I

    move-result v6

    sub-int v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    invoke-direct {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->unsignedInt(B)I

    move-result v6

    sub-int v6, p3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v1, v5, v6

    .line 123
    .local v1, "colorDistance":I
    if-ge v1, v3, :cond_0

    .line 125
    move v3, v1

    .line 126
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v4

    .line 118
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    add-int/lit8 v6, v2, 0x1

    int-to-short v2, v6

    invoke-virtual {v5, v2}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    goto :goto_0

    .line 129
    .end local v1    # "colorDistance":I
    :cond_1
    return-object v4
.end method

.method public getColor(I)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 63
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2
    .param p1, "index"    # S

    .prologue
    .line 46
    const/16 v1, 0x40

    if-ne p1, v1, :cond_0

    .line 47
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;->getInstance()Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/PaletteRecord;->getColor(I)[B

    move-result-object v0

    .line 50
    .local v0, "b":[B
    if-eqz v0, :cond_1

    .line 52
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPalette$CustomColor;-><init>(S[B)V

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setColorAtIndex(SBBB)V
    .locals 1
    .param p1, "index"    # S
    .param p2, "red"    # B
    .param p3, "green"    # B
    .param p4, "blue"    # B

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->_palette:Lorg/apache/poi/hssf/record/PaletteRecord;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/hssf/record/PaletteRecord;->setColor(SBBB)V

    .line 151
    return-void
.end method
