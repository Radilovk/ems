.class public final Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SheetPropertiesRecord.java"


# static fields
.field public static final EMPTY_INTERPOLATED:B = 0x2t

.field public static final EMPTY_NOT_PLOTTED:B = 0x0t

.field public static final EMPTY_ZERO:B = 0x1t

.field private static final autoPlotArea:Lorg/apache/poi/util/BitField;

.field private static final chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

.field private static final defaultPlotDimensions:Lorg/apache/poi/util/BitField;

.field private static final doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

.field private static final plotVisibleOnly:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1044s


# instance fields
.field private field_1_flags:I

.field private field_2_empty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    .line 39
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    .line 40
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    .line 41
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 55
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 57
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 90
    new-instance v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;-><init>()V

    .line 92
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 93
    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    .line 94
    return-object v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 82
    const/4 v0, 0x4

    return v0
.end method

.method public getEmpty()I
    .locals 1

    .line 113
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 86
    const/16 v0, 0x1044

    return v0
.end method

.method public isAutoPlotArea()Z
    .locals 2

    .line 206
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isChartTypeManuallyFormatted()Z
    .locals 2

    .line 142
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultPlotDimensions()Z
    .locals 2

    .line 190
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDoNotSizeWithWindow()Z
    .locals 2

    .line 174
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isPlotVisibleOnly()Z
    .locals 2

    .line 158
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 77
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 78
    iget v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 79
    return-void
.end method

.method public setAutoPlotArea(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 198
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->autoPlotArea:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 199
    return-void
.end method

.method public setChartTypeManuallyFormatted(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 134
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->chartTypeManuallyFormatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 135
    return-void
.end method

.method public setDefaultPlotDimensions(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 182
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->defaultPlotDimensions:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 183
    return-void
.end method

.method public setDoNotSizeWithWindow(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 166
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->doNotSizeWithWindow:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 167
    return-void
.end method

.method public setEmpty(B)V
    .locals 0
    .param p1, "empty"    # B

    .line 126
    iput p1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    .line 127
    return-void
.end method

.method public setPlotVisibleOnly(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 150
    sget-object v0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->plotVisibleOnly:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SHTPROPS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "    .flags                = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_1_flags:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    const-string v2, "         .chartTypeManuallyFormatted= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->isChartTypeManuallyFormatted()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    const-string v2, "         .plotVisibleOnly           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->isPlotVisibleOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    const-string v2, "         .doNotSizeWithWindow       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->isDoNotSizeWithWindow()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    const-string v2, "         .defaultPlotDimensions     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->isDefaultPlotDimensions()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const-string v2, "         .autoPlotArea              = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->isAutoPlotArea()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    const-string v2, "    .empty                = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/chart/SheetPropertiesRecord;->field_2_empty:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "[/SHTPROPS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
