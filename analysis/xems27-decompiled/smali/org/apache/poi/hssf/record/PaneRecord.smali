.class public final Lorg/apache/poi/hssf/record/PaneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PaneRecord.java"


# static fields
.field public static final ACTIVE_PANE_LOWER_LEFT:S = 0x2s

.field public static final ACTIVE_PANE_LOWER_RIGHT:S = 0x0s

.field public static final ACTIVE_PANE_UPER_LEFT:S = 0x3s

.field public static final ACTIVE_PANE_UPPER_LEFT:S = 0x3s

.field public static final ACTIVE_PANE_UPPER_RIGHT:S = 0x1s

.field public static final sid:S = 0x41s


# instance fields
.field private field_1_x:S

.field private field_2_y:S

.field private field_3_topRow:S

.field private field_4_leftColumn:S

.field private field_5_activePane:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 51
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 52
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    .line 54
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    .line 55
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    .line 56
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 107
    new-instance v0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>()V

    .line 109
    .local v0, "rec":Lorg/apache/poi/hssf/record/PaneRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    .line 110
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    .line 111
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    .line 112
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    .line 113
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    .line 114
    return-object v0
.end method

.method public getActivePane()S
    .locals 1

    .line 195
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 98
    const/16 v0, 0xa

    return v0
.end method

.method public getLeftColumn()S
    .locals 1

    .line 173
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 103
    const/16 v0, 0x41

    return v0
.end method

.method public getTopRow()S
    .locals 1

    .line 157
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    return v0
.end method

.method public getX()S
    .locals 1

    .line 125
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    return v0
.end method

.method public getY()S
    .locals 1

    .line 141
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 90
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 91
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 92
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 93
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 94
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 95
    return-void
.end method

.method public setActivePane(S)V
    .locals 0
    .param p1, "field_5_activePane"    # S

    .line 210
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    .line 211
    return-void
.end method

.method public setLeftColumn(S)V
    .locals 0
    .param p1, "field_4_leftColumn"    # S

    .line 181
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    .line 182
    return-void
.end method

.method public setTopRow(S)V
    .locals 0
    .param p1, "field_3_topRow"    # S

    .line 165
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    .line 166
    return-void
.end method

.method public setX(S)V
    .locals 0
    .param p1, "field_1_x"    # S

    .line 133
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    .line 134
    return-void
.end method

.method public setY(S)V
    .locals 0
    .param p1, "field_2_y"    # S

    .line 149
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PANE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "    .x                    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getX()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getX()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v5, "    .y                    = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getY()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getY()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v5, "    .topRow               = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v5, "    .leftColumn           = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getLeftColumn()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getLeftColumn()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v5, "    .activePane           = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v1, "[/PANE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
