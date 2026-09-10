.class public final Lorg/apache/poi/hssf/record/SCLRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SCLRecord.java"


# static fields
.field public static final sid:S = 0xa0s


# instance fields
.field private field_1_numerator:S

.field private field_2_denominator:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    .line 43
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 79
    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>()V

    .line 81
    .local v0, "rec":Lorg/apache/poi/hssf/record/SCLRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    .line 82
    iget-short v1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    .line 83
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 70
    const/4 v0, 0x4

    return v0
.end method

.method public getDenominator()S
    .locals 1

    .line 110
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    return v0
.end method

.method public getNumerator()S
    .locals 1

    .line 94
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 75
    const/16 v0, 0xa0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 66
    iget-short v0, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    return-void
.end method

.method public setDenominator(S)V
    .locals 0
    .param p1, "field_2_denominator"    # S

    .line 118
    iput-short p1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_2_denominator:S

    .line 119
    return-void
.end method

.method public setNumerator(S)V
    .locals 0
    .param p1, "field_1_numerator"    # S

    .line 102
    iput-short p1, p0, Lorg/apache/poi/hssf/record/SCLRecord;->field_1_numerator:S

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SCL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "    .numerator            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getNumerator()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getNumerator()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v5, "    .denominator          = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getDenominator()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SCLRecord;->getDenominator()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "[/SCL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
