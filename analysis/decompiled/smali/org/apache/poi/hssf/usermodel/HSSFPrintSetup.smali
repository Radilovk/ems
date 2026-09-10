.class public Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
.super Ljava/lang/Object;
.source "HSSFPrintSetup.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PrintSetup;


# instance fields
.field printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V
    .locals 0
    .param p1, "printSetupRecord"    # Lorg/apache/poi/hssf/record/PrintSetupRecord;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    .line 49
    return-void
.end method


# virtual methods
.method public getCopies()S
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getCopies()S

    move-result v0

    return v0
.end method

.method public getDraft()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getDraft()Z

    move-result v0

    return v0
.end method

.method public getFitHeight()S
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitHeight()S

    move-result v0

    return v0
.end method

.method public getFitWidth()S
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitWidth()S

    move-result v0

    return v0
.end method

.method public getFooterMargin()D
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHResolution()S
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHResolution()S

    move-result v0

    return v0
.end method

.method public getHeaderMargin()D
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLandscape()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeftToRight()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getLeftToRight()Z

    move-result v0

    return v0
.end method

.method public getNoColor()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getNoColor()Z

    move-result v0

    return v0
.end method

.method public getNoOrientation()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getNoOrientation()Z

    move-result v0

    return v0
.end method

.method public getNotes()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getNotes()Z

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getOptions()S

    move-result v0

    return v0
.end method

.method public getPageStart()S
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPageStart()S

    move-result v0

    return v0
.end method

.method public getPaperSize()S
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPaperSize()S

    move-result v0

    return v0
.end method

.method public getScale()S
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getScale()S

    move-result v0

    return v0
.end method

.method public getUsePage()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getUsePage()Z

    move-result v0

    return v0
.end method

.method public getVResolution()S
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getVResolution()S

    move-result v0

    return v0
.end method

.method public getValidSettings()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getValidSettings()Z

    move-result v0

    return v0
.end method

.method public setCopies(S)V
    .locals 1
    .param p1, "copies"    # S

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setCopies(S)V

    .line 201
    return-void
.end method

.method public setDraft(Z)V
    .locals 1
    .param p1, "d"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setDraft(Z)V

    .line 137
    return-void
.end method

.method public setFitHeight(S)V
    .locals 1
    .param p1, "height"    # S

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitHeight(S)V

    .line 89
    return-void
.end method

.method public setFitWidth(S)V
    .locals 1
    .param p1, "width"    # S

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitWidth(S)V

    .line 81
    return-void
.end method

.method public setFooterMargin(D)V
    .locals 1
    .param p1, "footermargin"    # D

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    .line 193
    return-void
.end method

.method public setHResolution(S)V
    .locals 1
    .param p1, "resolution"    # S

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHResolution(S)V

    .line 169
    return-void
.end method

.method public setHeaderMargin(D)V
    .locals 1
    .param p1, "headermargin"    # D

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    .line 185
    return-void
.end method

.method public setLandscape(Z)V
    .locals 2
    .param p1, "ls"    # Z

    .prologue
    .line 112
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setLandscape(Z)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeftToRight(Z)V
    .locals 1
    .param p1, "ltor"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setLeftToRight(Z)V

    .line 105
    return-void
.end method

.method public setNoColor(Z)V
    .locals 1
    .param p1, "mono"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setNoColor(Z)V

    .line 129
    return-void
.end method

.method public setNoOrientation(Z)V
    .locals 1
    .param p1, "orientation"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setNoOrientation(Z)V

    .line 153
    return-void
.end method

.method public setNotes(Z)V
    .locals 1
    .param p1, "printnotes"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setNotes(Z)V

    .line 145
    return-void
.end method

.method public setOptions(S)V
    .locals 1
    .param p1, "options"    # S

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setOptions(S)V

    .line 97
    return-void
.end method

.method public setPageStart(S)V
    .locals 1
    .param p1, "start"    # S

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPageStart(S)V

    .line 73
    return-void
.end method

.method public setPaperSize(S)V
    .locals 1
    .param p1, "size"    # S

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPaperSize(S)V

    .line 57
    return-void
.end method

.method public setScale(S)V
    .locals 1
    .param p1, "scale"    # S

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setScale(S)V

    .line 65
    return-void
.end method

.method public setUsePage(Z)V
    .locals 1
    .param p1, "page"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setUsePage(Z)V

    .line 161
    return-void
.end method

.method public setVResolution(S)V
    .locals 1
    .param p1, "resolution"    # S

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setVResolution(S)V

    .line 177
    return-void
.end method

.method public setValidSettings(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->printSetupRecord:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setValidSettings(Z)V

    .line 121
    return-void
.end method
