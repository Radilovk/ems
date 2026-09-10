.class public final Lorg/apache/poi/hssf/usermodel/HSSFFont;
.super Ljava/lang/Object;
.source "HSSFFont.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Font;


# static fields
.field public static final FONT_ARIAL:Ljava/lang/String; = "Arial"


# instance fields
.field private font:Lorg/apache/poi/hssf/record/FontRecord;

.field private index:S


# direct methods
.method protected constructor <init>(SLorg/apache/poi/hssf/record/FontRecord;)V
    .locals 0
    .param p1, "index"    # S
    .param p2, "rec"    # Lorg/apache/poi/hssf/record/FontRecord;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    .line 48
    iput-short p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->index:S

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 360
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 361
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 362
    :cond_1
    instance-of v2, p1, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    if-eqz v2, :cond_5

    .line 363
    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    .line 364
    .local v2, "other":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    if-nez v3, :cond_2

    .line 365
    iget-object v3, v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    if-eqz v3, :cond_3

    .line 366
    return v1

    .line 367
    :cond_2
    iget-object v4, v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/FontRecord;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 368
    return v1

    .line 369
    :cond_3
    iget-short v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->index:S

    iget-short v4, v2, Lorg/apache/poi/hssf/usermodel/HSSFFont;->index:S

    if-eq v3, v4, :cond_4

    .line 370
    return v1

    .line 371
    :cond_4
    return v0

    .line 373
    .end local v2    # "other":Lorg/apache/poi/hssf/usermodel/HSSFFont;
    :cond_5
    return v1
.end method

.method public getBold()Z
    .locals 2

    .line 241
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getBoldweight()S

    move-result v0

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBoldweight()S
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getBoldWeight()S

    move-result v0

    return v0
.end method

.method public getCharSet()I
    .locals 2

    .line 310
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getCharset()B

    move-result v0

    .line 311
    .local v0, "charset":B
    if-ltz v0, :cond_0

    .line 312
    return v0

    .line 314
    :cond_0
    add-int/lit16 v1, v0, 0x100

    return v1
.end method

.method public getColor()S
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getColorPaletteIndex()S

    move-result v0

    return v0
.end method

.method public getFontHeight()S
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontHeight()S

    move-result v0

    return v0
.end method

.method public getFontHeightInPoints()S
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontHeight()S

    move-result v0

    div-int/lit8 v0, v0, 0x14

    int-to-short v0, v0

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getFontName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHSSFColor(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 2
    .param p1, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 199
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getCustomPalette()Lorg/apache/poi/hssf/usermodel/HSSFPalette;

    move-result-object v0

    .line 200
    .local v0, "pallette":Lorg/apache/poi/hssf/usermodel/HSSFPalette;
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getColor()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPalette;->getColor(S)Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v1

    return-object v1
.end method

.method public getIndex()S
    .locals 1

    .line 81
    iget-short v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->index:S

    return v0
.end method

.method public getItalic()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->isItalic()Z

    move-result v0

    return v0
.end method

.method public getStrikeout()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->isStruckout()Z

    move-result v0

    return v0
.end method

.method public getTypeOffset()S
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getSuperSubScript()S

    move-result v0

    return v0
.end method

.method public getUnderline()B
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FontRecord;->getUnderline()B

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 352
    const/16 v0, 0x1f

    .line 353
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 354
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FontRecord;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 355
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-short v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->index:S

    add-int/2addr v1, v3

    .line 356
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setBold(Z)V
    .locals 2
    .param p1, "bold"    # Z

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setBoldWeight(S)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setBoldWeight(S)V

    .line 223
    :goto_0
    return-void
.end method

.method public setBoldweight(S)V
    .locals 1
    .param p1, "boldweight"    # S

    .line 211
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setBoldWeight(S)V

    .line 212
    return-void
.end method

.method public setCharSet(B)V
    .locals 1
    .param p1, "charset"    # B

    .line 341
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setCharset(B)V

    .line 342
    return-void
.end method

.method public setCharSet(I)V
    .locals 2
    .param p1, "charset"    # I

    .line 326
    int-to-byte v0, p1

    .line 327
    .local v0, "cs":B
    const/16 v1, 0x7f

    if-le p1, v1, :cond_0

    .line 328
    add-int/lit16 v1, p1, -0x100

    int-to-byte v0, v1

    .line 330
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->setCharSet(B)V

    .line 331
    return-void
.end method

.method public setColor(S)V
    .locals 1
    .param p1, "color"    # S

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setColorPaletteIndex(S)V

    .line 180
    return-void
.end method

.method public setFontHeight(S)V
    .locals 1
    .param p1, "height"    # S

    .line 93
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontHeight(S)V

    .line 94
    return-void
.end method

.method public setFontHeightInPoints(S)V
    .locals 2
    .param p1, "height"    # S

    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    mul-int/lit8 v1, p1, 0x14

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontHeight(S)V

    .line 105
    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setFontName(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setItalic(Z)V
    .locals 1
    .param p1, "italic"    # Z

    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setItalic(Z)V

    .line 138
    return-void
.end method

.method public setStrikeout(Z)V
    .locals 1
    .param p1, "strikeout"    # Z

    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setStrikeout(Z)V

    .line 158
    return-void
.end method

.method public setTypeOffset(S)V
    .locals 1
    .param p1, "offset"    # S

    .line 254
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setSuperSubScript(S)V

    .line 255
    return-void
.end method

.method public setUnderline(B)V
    .locals 1
    .param p1, "underline"    # B

    .line 282
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FontRecord;->setUnderline(B)V

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.apache.poi.hssf.usermodel.HSSFFont{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFont;->font:Lorg/apache/poi/hssf/record/FontRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
