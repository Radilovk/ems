.class public final Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SeriesLabelsRecord.java"


# static fields
.field private static final labelAsPercentage:Lorg/apache/poi/util/BitField;

.field private static final showActual:Lorg/apache/poi/util/BitField;

.field private static final showBubbleSizes:Lorg/apache/poi/util/BitField;

.field private static final showLabel:Lorg/apache/poi/util/BitField;

.field private static final showPercent:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x100cs

.field private static final smoothedLine:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    .line 40
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 50
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 88
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;-><init>()V

    .line 90
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 91
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    .line 102
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 84
    const/16 v0, 0x100c

    return v0
.end method

.method public isLabelAsPercentage()Z
    .locals 2

    .line 164
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowActual()Z
    .locals 2

    .line 128
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowBubbleSizes()Z
    .locals 2

    .line 218
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowLabel()Z
    .locals 2

    .line 200
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowPercent()Z
    .locals 2

    .line 146
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSmoothedLine()Z
    .locals 2

    .line 182
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 75
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 76
    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0
    .param p1, "field_1_formatFlags"    # S

    .line 110
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 111
    return-void
.end method

.method public setLabelAsPercentage(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 155
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->labelAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 156
    return-void
.end method

.method public setShowActual(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 119
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showActual:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 120
    return-void
.end method

.method public setShowBubbleSizes(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 209
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showBubbleSizes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 210
    return-void
.end method

.method public setShowLabel(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 191
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showLabel:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 192
    return-void
.end method

.method public setShowPercent(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 137
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->showPercent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 138
    return-void
.end method

.method public setSmoothedLine(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 173
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->smoothedLine:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->field_1_formatFlags:S

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[ATTACHEDLABEL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "    .formatFlags          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->getFormatFlags()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->getFormatFlags()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "         .showActual               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->isShowActual()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    const-string v2, "         .showPercent              = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->isShowPercent()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    const-string v2, "         .labelAsPercentage        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->isLabelAsPercentage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    const-string v2, "         .smoothedLine             = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->isSmoothedLine()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-string v2, "         .showLabel                = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->isShowLabel()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const-string v2, "         .showBubbleSizes          = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SeriesLabelsRecord;->isShowBubbleSizes()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "[/ATTACHEDLABEL]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
