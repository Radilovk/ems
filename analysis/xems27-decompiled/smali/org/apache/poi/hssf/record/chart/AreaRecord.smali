.class public final Lorg/apache/poi/hssf/record/chart/AreaRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AreaRecord.java"


# static fields
.field private static final displayAsPercentage:Lorg/apache/poi/util/BitField;

.field private static final shadow:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x101as

.field private static final stacked:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->stacked:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->shadow:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 82
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;-><init>()V

    .line 84
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/AreaRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    .line 85
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 73
    const/4 v0, 0x2

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    .line 96
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 78
    const/16 v0, 0x101a

    return v0
.end method

.method public isDisplayAsPercentage()Z
    .locals 2

    .line 140
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShadow()Z
    .locals 2

    .line 158
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isStacked()Z
    .locals 2

    .line 122
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 69
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 70
    return-void
.end method

.method public setDisplayAsPercentage(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 131
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->displayAsPercentage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    .line 132
    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0
    .param p1, "field_1_formatFlags"    # S

    .line 104
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    .line 105
    return-void
.end method

.method public setShadow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 149
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->shadow:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    .line 150
    return-void
.end method

.method public setStacked(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 113
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->stacked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaRecord;->field_1_formatFlags:S

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AREA]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "    .formatFlags          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->getFormatFlags()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->getFormatFlags()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "         .stacked                  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->isStacked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    const-string v2, "         .displayAsPercentage      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->isDisplayAsPercentage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const-string v2, "         .shadow                   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaRecord;->isShadow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "[/AREA]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
