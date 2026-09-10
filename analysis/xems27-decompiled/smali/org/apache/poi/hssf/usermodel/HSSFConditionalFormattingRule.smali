.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
.super Ljava/lang/Object;
.source "HSSFConditionalFormattingRule.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;


# static fields
.field private static final CELL_COMPARISON:B = 0x1t


# instance fields
.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 2
    .param p1, "pWorkbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "pRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_1

    .line 46
    if-eqz p2, :cond_0

    .line 49
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 50
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 51
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pRuleRecord must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pWorkbook must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 3
    .param p1, "create"    # Z

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getBorderFormatting()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    .line 98
    .local v0, "borderFormatting":Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBorderFormatting(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V

    .line 101
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1

    .line 103
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    new-instance v1, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>()V

    move-object v0, v1

    .line 106
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setBorderFormatting(Lorg/apache/poi/hssf/record/cf/BorderFormatting;)V

    .line 107
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1

    .line 111
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 3
    .param p1, "create"    # Z

    .line 60
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getFontFormatting()Lorg/apache/poi/hssf/record/cf/FontFormatting;

    move-result-object v0

    .line 61
    .local v0, "fontFormatting":Lorg/apache/poi/hssf/record/cf/FontFormatting;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setFontFormatting(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V

    .line 64
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 68
    new-instance v1, Lorg/apache/poi/hssf/record/cf/FontFormatting;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/FontFormatting;-><init>()V

    move-object v0, v1

    .line 69
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setFontFormatting(Lorg/apache/poi/hssf/record/cf/FontFormatting;)V

    .line 70
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1

    .line 74
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 3
    .param p1, "create"    # Z

    .line 133
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object v0

    .line 134
    .local v0, "patternFormatting":Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setPatternFormatting(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V

    .line 137
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    new-instance v1, Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;-><init>()V

    move-object v0, v1

    .line 142
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setPatternFormatting(Lorg/apache/poi/hssf/record/cf/PatternFormatting;)V

    .line 143
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;-><init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1

    .line 147
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 1
    .param p1, "parsedExpression"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 204
    if-nez p1, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 1

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 1

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public createPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 1

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->createPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;
    .locals 1

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBorderFormatting()Lorg/apache/poi/ss/usermodel/BorderFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getBorderFormatting()Lorg/apache/poi/hssf/usermodel/HSSFBorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleRecord;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    return-object v0
.end method

.method public getComparisonOperation()B
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getComparisonOperation()B

    move-result v0

    return v0
.end method

.method public getConditionType()B
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getConditionType()B

    move-result v0

    return v0
.end method

.method public getFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;
    .locals 1

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFontFormatting()Lorg/apache/poi/ss/usermodel/FontFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getFontFormatting()Lorg/apache/poi/hssf/usermodel/HSSFFontFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getFormula1()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getParsedExpression1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormula2()Ljava/lang/String;
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getConditionType()B

    move-result v0

    .line 190
    .local v0, "conditionType":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getComparisonOperation()B

    move-result v2

    .line 192
    .local v2, "comparisonOperation":B
    if-eq v2, v1, :cond_0

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getParsedExpression2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 199
    .end local v2    # "comparisonOperation":B
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
    .locals 1

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPatternFormatting()Lorg/apache/poi/ss/usermodel/PatternFormatting;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getPatternFormatting()Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;

    move-result-object v0

    return-object v0
.end method
