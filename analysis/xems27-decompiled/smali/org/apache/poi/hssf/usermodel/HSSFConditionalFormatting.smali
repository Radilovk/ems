.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;
.super Ljava/lang/Object;
.source "HSSFConditionalFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormatting;


# instance fields
.field private final _workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private final cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V
    .locals 2
    .param p1, "workbook"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "cfAggregate"    # Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_1

    .line 86
    if-eqz p2, :cond_0

    .line 89
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 90
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    .line 91
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfAggregate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "workbook must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRule(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V
    .locals 2
    .param p1, "cfRule"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 135
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->addRule(Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    .line 136
    return-void
.end method

.method public addRule(Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 1
    .param p1, "cfRule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 139
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->addRule(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V

    .line 140
    return-void
.end method

.method getCFRecordsAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    return-object v0
.end method

.method public getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getHeader()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->getCellRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getFormattingRegions()[Lorg/apache/poi/ss/util/Region;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    .line 102
    .local v0, "cellRanges":[Lorg/apache/poi/ss/util/CellRangeAddress;
    invoke-static {v0}, Lorg/apache/poi/ss/util/Region;->convertCellRangesToRegions([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/Region;

    move-result-object v1

    return-object v1
.end method

.method public getNumberOfRules()I
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getNumberOfRules()I

    move-result v0

    return v0
.end method

.method public getRule(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "idx"    # I

    .line 147
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->getRule(I)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    .line 148
    .local v0, "ruleRecord":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v1
.end method

.method public bridge synthetic getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # I

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getRule(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public setRule(ILorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "cfRule"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->setRule(ILorg/apache/poi/hssf/record/CFRuleRecord;)V

    .line 122
    return-void
.end method

.method public setRule(ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "cfRule"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 125
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->setRule(ILorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)V

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->cfAggregate:Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
