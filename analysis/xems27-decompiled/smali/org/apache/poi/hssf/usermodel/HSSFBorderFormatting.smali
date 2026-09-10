.class public final Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
.super Ljava/lang/Object;
.source "HSSFBorderFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/BorderFormatting;


# instance fields
.field private final borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 1
    .param p1, "cfRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    .line 36
    return-void
.end method


# virtual methods
.method public getBorderBottom()S
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderDiagonal()S
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderDiagonal()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method protected getBorderFormattingBlock()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    return-object v0
.end method

.method public getBorderLeft()S
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderRight()S
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBorderTop()S
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getBottomBorderColor()S
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getDiagonalBorderColor()S
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getDiagonalBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getLeftBorderColor()S
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRightBorderColor()S
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getTopBorderColor()S
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public isBackwardDiagonalOn()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isBackwardDiagonalOn()Z

    move-result v0

    return v0
.end method

.method public isForwardDiagonalOn()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isForwardDiagonalOn()Z

    move-result v0

    return v0
.end method

.method public setBackwardDiagonalOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBackwardDiagonalOn(Z)V

    .line 106
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setTopLeftBottomRightBorderModified(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setBorderBottom(S)V
    .locals 2
    .param p1, "border"    # S

    .line 114
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderBottom(I)V

    .line 115
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBottomBorderModified(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public setBorderDiagonal(S)V
    .locals 2
    .param p1, "border"    # S

    .line 123
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderDiagonal(I)V

    .line 124
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBottomLeftTopRightBorderModified(Z)V

    .line 127
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setTopLeftBottomRightBorderModified(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public setBorderLeft(S)V
    .locals 2
    .param p1, "border"    # S

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderLeft(I)V

    .line 134
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setLeftBorderModified(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public setBorderRight(S)V
    .locals 2
    .param p1, "border"    # S

    .line 142
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderRight(I)V

    .line 143
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setRightBorderModified(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public setBorderTop(S)V
    .locals 2
    .param p1, "border"    # S

    .line 151
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBorderTop(I)V

    .line 152
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setTopBorderModified(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public setBottomBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setBottomBorderColor(I)V

    .line 161
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBottomBorderModified(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public setDiagonalBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 169
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setDiagonalBorderColor(I)V

    .line 170
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBottomLeftTopRightBorderModified(Z)V

    .line 173
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setTopLeftBottomRightBorderModified(Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public setForwardDiagonalOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setForwardDiagonalOn(Z)V

    .line 180
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBottomLeftTopRightBorderModified(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public setLeftBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 188
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setLeftBorderColor(I)V

    .line 189
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setLeftBorderModified(Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public setRightBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 197
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setRightBorderColor(I)V

    .line 198
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setRightBorderModified(Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public setTopBorderColor(S)V
    .locals 2
    .param p1, "color"    # S

    .line 206
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->borderFormatting:Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->setTopBorderColor(I)V

    .line 207
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setTopBorderModified(Z)V

    .line 211
    :cond_0
    return-void
.end method
