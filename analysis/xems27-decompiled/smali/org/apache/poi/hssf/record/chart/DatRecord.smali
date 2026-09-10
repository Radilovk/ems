.class public final Lorg/apache/poi/hssf/record/chart/DatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DatRecord.java"


# static fields
.field private static final border:Lorg/apache/poi/util/BitField;

.field private static final horizontalBorder:Lorg/apache/poi/util/BitField;

.field private static final showSeriesKey:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1063s

.field private static final verticalBorder:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->horizontalBorder:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->verticalBorder:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->border:Lorg/apache/poi/util/BitField;

    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->showSeriesKey:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 49
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 85
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DatRecord;-><init>()V

    .line 87
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/DatRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 88
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 76
    const/4 v0, 0x2

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 99
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 81
    const/16 v0, 0x1063

    return v0
.end method

.method public isBorder()Z
    .locals 2

    .line 161
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isHorizontalBorder()Z
    .locals 2

    .line 125
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->horizontalBorder:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isShowSeriesKey()Z
    .locals 2

    .line 179
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->showSeriesKey:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isVerticalBorder()Z
    .locals 2

    .line 143
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->verticalBorder:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 72
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 73
    return-void
.end method

.method public setBorder(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 152
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 153
    return-void
.end method

.method public setHorizontalBorder(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 116
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->horizontalBorder:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 117
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_1_options"    # S

    .line 107
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 108
    return-void
.end method

.method public setShowSeriesKey(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 170
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->showSeriesKey:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 171
    return-void
.end method

.method public setVerticalBorder(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 134
    sget-object v0, Lorg/apache/poi/hssf/record/chart/DatRecord;->verticalBorder:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DatRecord;->field_1_options:S

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[DAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "    .options              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->getOptions()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v1, "         .horizontalBorder         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->isHorizontalBorder()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    const-string v2, "         .verticalBorder           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->isVerticalBorder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    const-string v2, "         .border                   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->isBorder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    const-string v2, "         .showSeriesKey            = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DatRecord;->isShowSeriesKey()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "[/DAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
