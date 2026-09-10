.class public final Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
.super Ljava/lang/Object;
.source "HSSFFontFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FontFormatting;


# static fields
.field public static final U_DOUBLE:B = 0x2t

.field public static final U_DOUBLE_ACCOUNTING:B = 0x22t

.field public static final U_NONE:B = 0x0t

.field public static final U_SINGLE:B = 0x1t

.field public static final U_SINGLE_ACCOUNTING:B = 0x21t


# instance fields
.field private final fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 1
    .param p1, "cfRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    .line 45
    return-void
.end method


# virtual methods
.method public getEscapementType()S
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getEscapementType()S

    move-result v0

    return v0
.end method

.method public getFontColorIndex()S
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontColorIndex()S

    move-result v0

    return v0
.end method

.method protected getFontFormattingBlock()Lorg/apache/poi/hssf/record/cf/FontFormatting;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    return-object v0
.end method

.method public getFontHeight()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontHeight()I

    move-result v0

    return v0
.end method

.method public getFontWeight()S
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getFontWeight()S

    move-result v0

    return v0
.end method

.method protected getRawRecord()[B
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getRawRecord()[B

    move-result-object v0

    return-object v0
.end method

.method public getUnderlineType()S
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->getUnderlineType()S

    move-result v0

    return v0
.end method

.method public isBold()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontWeightModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isBold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEscapementTypeModified()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isEscapementTypeModified()Z

    move-result v0

    return v0
.end method

.method public isFontCancellationModified()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontCancellationModified()Z

    move-result v0

    return v0
.end method

.method public isFontOutlineModified()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v0

    return v0
.end method

.method public isFontShadowModified()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontShadowModified()Z

    move-result v0

    return v0
.end method

.method public isFontStyleModified()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontStyleModified()Z

    move-result v0

    return v0
.end method

.method public isFontWeightModified()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontWeightModified()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontStyleModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOutlineOn()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isOutlineOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShadowOn()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontOutlineModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isShadowOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStruckout()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isFontCancellationModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isStruckout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnderlineTypeModified()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->isUnderlineTypeModified()Z

    move-result v0

    return v0
.end method

.method public resetFontStyle()V
    .locals 1

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->setFontStyle(ZZ)V

    .line 239
    return-void
.end method

.method public setEscapementType(S)V
    .locals 2
    .param p1, "escapementType"    # S

    .line 251
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementType(S)V

    .line 256
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    .line 257
    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementType(S)V

    .line 260
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    .line 261
    nop

    .line 264
    :goto_0
    return-void
.end method

.method public setEscapementTypeModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 272
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setEscapementTypeModified(Z)V

    .line 273
    return-void
.end method

.method public setFontCancellationModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontCancellationModified(Z)V

    .line 282
    return-void
.end method

.method public setFontColorIndex(S)V
    .locals 1
    .param p1, "fci"    # S

    .line 290
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontColorIndex(S)V

    .line 291
    return-void
.end method

.method public setFontHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 299
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontHeight(I)V

    .line 300
    return-void
.end method

.method public setFontOutlineModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 308
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOutlineModified(Z)V

    .line 309
    return-void
.end method

.method public setFontShadowModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 317
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontShadowModified(Z)V

    .line 318
    return-void
.end method

.method public setFontStyle(ZZ)V
    .locals 2
    .param p1, "italic"    # Z
    .param p2, "bold"    # Z

    .line 226
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 227
    .local v0, "modified":Z
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setItalic(Z)V

    .line 228
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p2}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setBold(Z)V

    .line 229
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontStyleModified(Z)V

    .line 230
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontWieghtModified(Z)V

    .line 231
    return-void
.end method

.method public setFontStyleModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 326
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontStyleModified(Z)V

    .line 327
    return-void
.end method

.method public setOutline(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 335
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setOutline(Z)V

    .line 336
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontOutlineModified(Z)V

    .line 337
    return-void
.end method

.method public setShadow(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 345
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setShadow(Z)V

    .line 346
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontShadowModified(Z)V

    .line 347
    return-void
.end method

.method public setStrikeout(Z)V
    .locals 1
    .param p1, "strike"    # Z

    .line 355
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setStrikeout(Z)V

    .line 356
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setFontCancellationModified(Z)V

    .line 357
    return-void
.end method

.method public setUnderlineType(S)V
    .locals 2
    .param p1, "underlineType"    # S

    .line 372
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x21

    if-eq p1, v1, :cond_0

    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineType(S)V

    .line 379
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->setUnderlineTypeModified(Z)V

    .line 380
    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineType(S)V

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->setUnderlineTypeModified(Z)V

    .line 385
    nop

    .line 388
    :goto_0
    return-void
.end method

.method public setUnderlineTypeModified(Z)V
    .locals 1
    .param p1, "modified"    # Z

    .line 396
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;->fontFormatting:Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;->setUnderlineTypeModified(Z)V

    .line 397
    return-void
.end method
