.class public final Lorg/apache/poi/hssf/record/OldFormulaRecord;
.super Lorg/apache/poi/hssf/record/OldCellRecord;
.source "OldFormulaRecord.java"


# static fields
.field public static final biff2_sid:S = 0x6s

.field public static final biff3_sid:S = 0x206s

.field public static final biff4_sid:S = 0x406s

.field public static final biff5_sid:S = 0x6s


# instance fields
.field private field_4_value:D

.field private field_5_options:S

.field private field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

.field private specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6
    .param p1, "ris"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 41
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-direct {p0, p1, v4}, Lorg/apache/poi/hssf/record/OldCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->isBiff2()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    .line 53
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->isBiff2()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    .line 59
    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 60
    .local v0, "expression_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    .line 61
    .local v1, "nBytesAvailable":I
    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 62
    return-void

    .line 41
    .end local v0    # "expression_len":I
    .end local v1    # "nBytesAvailable":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v2

    .line 47
    .local v2, "valueLongBits":J
    invoke-static {v2, v3}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 48
    iget-object v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v4, :cond_0

    .line 49
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    goto :goto_1

    .line 56
    .end local v2    # "valueLongBits":J
    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    goto :goto_2
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 108
    const-string v0, "    .value       = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-void
.end method

.method public getCachedBooleanValue()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getCachedErrorValue()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getCachedResultType()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getValueType()I

    move-result v0

    goto :goto_0
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getOptions()S
    .locals 1

    .prologue
    .line 93
    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    return v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "Old Formula"

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    return-wide v0
.end method
