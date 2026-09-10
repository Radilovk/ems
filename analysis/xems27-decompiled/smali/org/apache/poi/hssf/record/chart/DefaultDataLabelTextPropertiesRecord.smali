.class public final Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DefaultDataLabelTextPropertiesRecord.java"


# static fields
.field public static final CATEGORY_DATA_TYPE_ALL_TEXT_CHARACTERISTIC:S = 0x2s

.field public static final CATEGORY_DATA_TYPE_SHOW_LABELS_CHARACTERISTIC:S = 0x0s

.field public static final CATEGORY_DATA_TYPE_VALUE_AND_PERCENTAGE_CHARACTERISTIC:S = 0x1s

.field public static final sid:S = 0x1024s


# instance fields
.field private field_1_categoryDataType:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    .line 46
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 76
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;-><init>()V

    .line 78
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    .line 79
    return-object v0
.end method

.method public getCategoryDataType()S
    .locals 1

    .line 95
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 72
    const/16 v0, 0x1024

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 63
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 64
    return-void
.end method

.method public setCategoryDataType(S)V
    .locals 0
    .param p1, "field_1_categoryDataType"    # S

    .line 109
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->field_1_categoryDataType:S

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DEFAULTTEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, "    .categoryDataType     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DefaultDataLabelTextPropertiesRecord;->getCategoryDataType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "[/DEFAULTTEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
