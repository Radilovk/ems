.class public final Lorg/apache/poi/hssf/record/chart/BarRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "BarRecord.java"


# static fields
.field private static final displayAsPercentage:Lorg/apache/poi/util/BitField;

.field private static final horizontal:Lorg/apache/poi/util/BitField;

.field private static final shadow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1017s

.field private static final stacked:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_barSpace:S

.field private field_2_categorySpace:S

.field private field_3_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->horizontal:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->stacked:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->shadow:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lorg/apache/poi/hssf/record/chart/BarRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/BarRecord;-><init>()V

    .line 101
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/BarRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    .line 102
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    .line 103
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 104
    return-object v0
.end method

.method public getBarSpace()S
    .locals 1

    .prologue
    .line 115
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    return v0
.end method

.method public getCategorySpace()S
    .locals 1

    .prologue
    .line 131
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x6

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    .prologue
    .line 147
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x1017

    return v0
.end method

.method public isDisplayAsPercentage()Z
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isHorizontal()Z
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->horizontal:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isStacked()Z
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 84
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 85
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 86
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 87
    return-void
.end method

.method public setBarSpace(S)V
    .locals 0
    .param p1, "field_1_barSpace"    # S

    .prologue
    .line 123
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_1_barSpace:S

    .line 124
    return-void
.end method

.method public setCategorySpace(S)V
    .locals 0
    .param p1, "field_2_categorySpace"    # S

    .prologue
    .line 139
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_2_categorySpace:S

    .line 140
    return-void
.end method

.method public setDisplayAsPercentage(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 200
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 201
    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0
    .param p1, "field_3_formatFlags"    # S

    .prologue
    .line 155
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 156
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 164
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->horizontal:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 165
    return-void
.end method

.method public setShadow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 218
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 219
    return-void
.end method

.method public setStacked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 182
    sget-object v0, Lorg/apache/poi/hssf/record/chart/BarRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/BarRecord;->field_3_formatFlags:S

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[BAR]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "    .barSpace             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getBarSpace()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getBarSpace()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "    .categorySpace        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getCategorySpace()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getCategorySpace()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "    .formatFlags          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getFormatFlags()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->getFormatFlags()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "         .horizontal               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->isHorizontal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "         .stacked                  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->isStacked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "         .displayAsPercentage      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->isDisplayAsPercentage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "         .shadow                   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/BarRecord;->isShadow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, "[/BAR]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
