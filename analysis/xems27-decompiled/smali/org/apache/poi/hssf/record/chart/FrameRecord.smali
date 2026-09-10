.class public final Lorg/apache/poi/hssf/record/chart/FrameRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "FrameRecord.java"


# static fields
.field public static final BORDER_TYPE_REGULAR:S = 0x0s

.field public static final BORDER_TYPE_SHADOW:S = 0x1s

.field private static final autoPosition:Lorg/apache/poi/util/BitField;

.field private static final autoSize:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1032s


# instance fields
.field private field_1_borderType:S

.field private field_2_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoSize:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoPosition:Lorg/apache/poi/util/BitField;

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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 90
    new-instance v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;-><init>()V

    .line 92
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/FrameRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    .line 93
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 94
    return-object v0
.end method

.method public getBorderType()S
    .locals 1

    .line 109
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 81
    const/4 v0, 0x4

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 130
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 86
    const/16 v0, 0x1032

    return v0
.end method

.method public isAutoPosition()Z
    .locals 2

    .line 174
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoSize()Z
    .locals 2

    .line 156
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoSize:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 76
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 77
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    return-void
.end method

.method public setAutoPosition(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 165
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 166
    return-void
.end method

.method public setAutoSize(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 147
    sget-object v0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->autoSize:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 148
    return-void
.end method

.method public setBorderType(S)V
    .locals 0
    .param p1, "field_1_borderType"    # S

    .line 122
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_1_borderType:S

    .line 123
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_2_options"    # S

    .line 138
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/FrameRecord;->field_2_options:S

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FRAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "    .borderType           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getBorderType()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getBorderType()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v5, "    .options              = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getOptions()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "         .autoSize                 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->isAutoSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const-string v2, "         .autoPosition             = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/FrameRecord;->isAutoPosition()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "[/FRAME]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
