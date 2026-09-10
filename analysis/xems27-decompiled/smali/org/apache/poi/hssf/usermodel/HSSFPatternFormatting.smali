.class public Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;
.super Ljava/lang/Object;
.source "HSSFPatternFormatting.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/PatternFormatting;


# instance fields
.field private final cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

.field private final patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;


# direct methods
.method protected constructor <init>(Lorg/apache/poi/hssf/record/CFRuleRecord;)V
    .locals 1
    .param p1, "cfRuleRecord"    # Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    .line 34
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->getPatternFormatting()Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    .line 35
    return-void
.end method


# virtual methods
.method public getFillBackgroundColor()S
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillBackgroundColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFillForegroundColor()S
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillForegroundColor()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFillPattern()S
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->getFillPattern()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method protected getPatternFormattingBlock()Lorg/apache/poi/hssf/record/cf/PatternFormatting;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    return-object v0
.end method

.method public setFillBackgroundColor(S)V
    .locals 2
    .param p1, "bg"    # S

    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillBackgroundColor(I)V

    .line 73
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setPatternBackgroundColorModified(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public setFillForegroundColor(S)V
    .locals 2
    .param p1, "fg"    # S

    .line 85
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillForegroundColor(I)V

    .line 86
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setPatternColorModified(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setFillPattern(S)V
    .locals 2
    .param p1, "fp"    # S

    .line 98
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->patternFormatting:Lorg/apache/poi/hssf/record/cf/PatternFormatting;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/PatternFormatting;->setFillPattern(I)V

    .line 99
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFPatternFormatting;->cfRuleRecord:Lorg/apache/poi/hssf/record/CFRuleRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/CFRuleRecord;->setPatternStyleModified(Z)V

    .line 103
    :cond_0
    return-void
.end method
