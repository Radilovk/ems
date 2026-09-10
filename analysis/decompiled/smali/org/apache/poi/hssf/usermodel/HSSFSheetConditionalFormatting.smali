.class public final Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;
.super Ljava/lang/Object;
.source "HSSFSheetConditionalFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;


# instance fields
.field private final _conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

.field private final _sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 1
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 39
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getConditionalFormattingTable()Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    .line 40
    return-void
.end method


# virtual methods
.method public addConditionalFormatting(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;)I
    .locals 2
    .param p1, "cf"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getCFRecordsAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v0

    .line 112
    .local v0, "cfraClone":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I

    move-result v1

    return v1
.end method

.method public addConditionalFormatting(Lorg/apache/poi/ss/usermodel/ConditionalFormatting;)I
    .locals 1
    .param p1, "cf"    # Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    .prologue
    .line 116
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    .end local p1    # "cf":Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .prologue
    .line 170
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    goto :goto_0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .param p3, "rule2"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .prologue
    .line 187
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 1
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .prologue
    .line 180
    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .end local p2    # "rule1":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 1
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .param p3, "rule2"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .prologue
    .line 198
    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .end local p2    # "rule1":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    check-cast p3, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .end local p3    # "rule2":Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 9
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "cfRules"    # [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "regions must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .local v5, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v7, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v5, v7}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v5    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    :cond_1
    if-nez p2, :cond_2

    .line 140
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "cfRules must not be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    :cond_2
    array-length v7, p2

    if-nez v7, :cond_3

    .line 143
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "cfRules must not be empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_3
    array-length v7, p2

    const/4 v8, 0x3

    if-le v7, v8, :cond_4

    .line 146
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Number of rules must not exceed 3"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 149
    :cond_4
    array-length v7, p2

    new-array v6, v7, [Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 150
    .local v6, "rules":[Lorg/apache/poi/hssf/record/CFRuleRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, p2

    if-eq v2, v7, :cond_5

    .line 151
    aget-object v7, p2, v2

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v7

    aput-object v7, v6, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_5
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {v1, p1, v6}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    .line 154
    .local v1, "cfra":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v7, v1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I

    move-result v7

    return v7
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 3
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "cfRules"    # [Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .prologue
    const/4 v2, 0x0

    .line 159
    instance-of v1, p2, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    if-eqz v1, :cond_0

    check-cast p2, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .end local p2    # "cfRules":[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    move-object v0, p2

    check-cast v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 164
    .local v0, "hfRules":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v1

    return v1

    .line 161
    .end local v0    # "hfRules":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .restart local p2    # "cfRules":[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    :cond_0
    array-length v1, p2

    new-array v0, v1, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 162
    .restart local v0    # "hfRules":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/Region;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 1
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/Region;
    .param p2, "cfRules"    # [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .prologue
    .line 123
    invoke-static {p1}, Lorg/apache/poi/ss/util/Region;->convertRegionsToCellRanges([Lorg/apache/poi/ss/util/Region;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 4
    .param p1, "comparisonOperation"    # B
    .param p2, "formula1"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    .line 80
    .local v1, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    .line 81
    .local v0, "rr":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v2
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "comparisonOperation"    # B
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    .line 71
    .local v1, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v2, p1, p2, p3}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    .line 72
    .local v0, "rr":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v2
.end method

.method public createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "formula"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v1

    .line 93
    .local v1, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v0

    .line 94
    .local v0, "rr":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v2
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalFormattingAt(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->get(I)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v0

    .line 213
    .local v0, "cf":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    if-nez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V

    goto :goto_0
.end method

.method public bridge synthetic getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getNumConditionalFormattings()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->size()I

    move-result v0

    return v0
.end method

.method public removeConditionalFormatting(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->remove(I)V

    .line 232
    return-void
.end method
