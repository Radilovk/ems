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

    .line 110
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;->getCFRecordsAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;->cloneCFAggregate()Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

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

    .line 116
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting(Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 170
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .param p3, "rule2"    # Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

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

    .line 180
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 2
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "rule1"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .param p3, "rule2"    # Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 198
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-object v1, p3

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 5
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "cfRules"    # [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 134
    if-eqz p1, :cond_5

    .line 137
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .local v3, "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    sget-object v4, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .end local v3    # "range":Lorg/apache/poi/ss/util/CellRangeAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "arr$":[Lorg/apache/poi/ss/util/CellRangeAddress;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    if-eqz p2, :cond_4

    .line 142
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 145
    array-length v0, p2

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 149
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 150
    .local v0, "rules":[Lorg/apache/poi/hssf/record/CFRuleRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-eq v1, v2, :cond_1

    .line 151
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->getCfRuleRecord()Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v2

    aput-object v2, v0, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    .line 154
    .local v1, "cfra":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->add(Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)I

    move-result v2

    return v2

    .line 146
    .end local v0    # "rules":[Lorg/apache/poi/hssf/record/CFRuleRecord;
    .end local v1    # "cfra":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rules must not exceed 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfRules must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cfRules must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "regions must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
    .locals 3
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/CellRangeAddress;
    .param p2, "cfRules"    # [Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    .line 159
    instance-of v0, p2, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    check-cast v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .local v0, "hfRules":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    goto :goto_0

    .line 161
    .end local v0    # "hfRules":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 162
    .restart local v0    # "hfRules":[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v1

    return v1
.end method

.method public addConditionalFormatting([Lorg/apache/poi/ss/util/Region;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I
    .locals 1
    .param p1, "regions"    # [Lorg/apache/poi/ss/util/Region;
    .param p2, "cfRules"    # [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    .line 123
    invoke-static {p1}, Lorg/apache/poi/ss/util/Region;->convertRegionsToCellRanges([Lorg/apache/poi/ss/util/Region;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;)I

    move-result v0

    return v0
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "comparisonOperation"    # B
    .param p2, "formula1"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 80
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v1

    .line 81
    .local v1, "rr":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v2
.end method

.method public createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "comparisonOperation"    # B
    .param p2, "formula1"    # Ljava/lang/String;
    .param p3, "formula2"    # Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 71
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v1, p1, p2, p3}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v1

    .line 72
    .local v1, "rr":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v2
.end method

.method public createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;
    .locals 3
    .param p1, "formula"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    .line 93
    .local v0, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->create(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/lang/String;)Lorg/apache/poi/hssf/record/CFRuleRecord;

    move-result-object v1

    .line 94
    .local v1, "rr":Lorg/apache/poi/hssf/record/CFRuleRecord;
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/CFRuleRecord;)V

    return-object v2
.end method

.method public bridge synthetic createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/lang/String;

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

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalFormattingAt(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;
    .locals 3
    .param p1, "index"    # I

    .line 212
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->get(I)Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;

    move-result-object v0

    .line 213
    .local v0, "cf":Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;
    if-nez v0, :cond_0

    .line 214
    const/4 v1, 0x0

    return-object v1

    .line 216
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/aggregates/CFRecordsAggregate;)V

    return-object v1
.end method

.method public bridge synthetic getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
    .locals 1
    .param p1, "x0"    # I

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getNumConditionalFormattings()I
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->size()I

    move-result v0

    return v0
.end method

.method public removeConditionalFormatting(I)V
    .locals 1
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;->_conditionalFormattingTable:Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/ConditionalFormattingTable;->remove(I)V

    .line 232
    return-void
.end method
