.class public final Lorg/apache/poi/hssf/record/WindowOneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "WindowOneRecord.java"


# static fields
.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final hscroll:Lorg/apache/poi/util/BitField;

.field private static final iconic:Lorg/apache/poi/util/BitField;

.field private static final reserved:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x3ds

.field private static final tabs:Lorg/apache/poi/util/BitField;

.field private static final vscroll:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_h_hold:S

.field private field_2_v_hold:S

.field private field_3_width:S

.field private field_4_height:S

.field private field_5_options:S

.field private field_6_active_sheet:I

.field private field_7_first_visible_tab:I

.field private field_8_num_selected_tabs:S

.field private field_9_tab_width_ratio:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    .line 44
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    .line 46
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->reserved:Lorg/apache/poi/util/BitField;

    .line 47
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    .line 49
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    .line 51
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 65
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 71
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    .line 75
    return-void
.end method


# virtual methods
.method public getActiveSheetIndex()I
    .locals 1

    .line 341
    iget v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 438
    const/16 v0, 0x12

    return v0
.end method

.method public getDisplayHorizontalScrollbar()Z
    .locals 2

    .line 311
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayTabs()Z
    .locals 2

    .line 331
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayVerticalScrollbar()Z
    .locals 2

    .line 321
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayedTab()S
    .locals 1

    .line 365
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getFirstVisibleTab()I
    .locals 1

    .line 357
    iget v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return v0
.end method

.method public getHeight()S
    .locals 1

    .line 268
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return v0
.end method

.method public getHidden()Z
    .locals 2

    .line 291
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getHorizontalHold()S
    .locals 1

    .line 238
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return v0
.end method

.method public getIconic()Z
    .locals 2

    .line 301
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getNumSelectedTabs()S
    .locals 1

    .line 375
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 279
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return v0
.end method

.method public getSelectedTab()S
    .locals 1

    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 443
    const/16 v0, 0x3d

    return v0
.end method

.method public getTabWidthRatio()S
    .locals 1

    .line 385
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return v0
.end method

.method public getVerticalHold()S
    .locals 1

    .line 248
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return v0
.end method

.method public getWidth()S
    .locals 1

    .line 258
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 426
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHorizontalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 427
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getVerticalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 428
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getWidth()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 429
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 430
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 431
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 432
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 433
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getNumSelectedTabs()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 434
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getTabWidthRatio()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 435
    return-void
.end method

.method public setActiveSheetIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 183
    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    .line 184
    return-void
.end method

.method public setDisplayHorizonalScrollbar(Z)V
    .locals 2
    .param p1, "scroll"    # Z

    .line 157
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 158
    return-void
.end method

.method public setDisplayTabs(Z)V
    .locals 2
    .param p1, "disptabs"    # Z

    .line 177
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 178
    return-void
.end method

.method public setDisplayVerticalScrollbar(Z)V
    .locals 2
    .param p1, "scroll"    # Z

    .line 167
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 168
    return-void
.end method

.method public setDisplayedTab(S)V
    .locals 0
    .param p1, "t"    # S

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setFirstVisibleTab(I)V

    .line 209
    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 0
    .param p1, "t"    # I

    .line 200
    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    .line 201
    return-void
.end method

.method public setHeight(S)V
    .locals 0
    .param p1, "h"    # S

    .line 114
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    .line 115
    return-void
.end method

.method public setHidden(Z)V
    .locals 2
    .param p1, "ishidden"    # Z

    .line 137
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 138
    return-void
.end method

.method public setHorizontalHold(S)V
    .locals 0
    .param p1, "h"    # S

    .line 84
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    .line 85
    return-void
.end method

.method public setIconic(Z)V
    .locals 2
    .param p1, "isiconic"    # Z

    .line 147
    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 148
    return-void
.end method

.method public setNumSelectedTabs(S)V
    .locals 0
    .param p1, "n"    # S

    .line 218
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    .line 219
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "o"    # S

    .line 125
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    .line 126
    return-void
.end method

.method public setSelectedTab(S)V
    .locals 0
    .param p1, "s"    # S

    .line 191
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowOneRecord;->setActiveSheetIndex(I)V

    .line 192
    return-void
.end method

.method public setTabWidthRatio(S)V
    .locals 0
    .param p1, "r"    # S

    .line 228
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    .line 229
    return-void
.end method

.method public setVerticalHold(S)V
    .locals 0
    .param p1, "v"    # S

    .line 94
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    .line 95
    return-void
.end method

.method public setWidth(S)V
    .locals 0
    .param p1, "w"    # S

    .line 104
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 390
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[WINDOW1]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v1, "    .h_hold          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHorizontalHold()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    const-string v2, "    .v_hold          = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getVerticalHold()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v2, "    .width           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getWidth()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    const-string v2, "    .height          = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHeight()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    const-string v2, "    .options         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getOptions()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    const-string v2, "        .hidden      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHidden()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v2, "        .iconic      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getIconic()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v2, "        .hscroll     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getDisplayHorizontalScrollbar()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v2, "        .vscroll     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getDisplayVerticalScrollbar()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    const-string v2, "        .tabs        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getDisplayTabs()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const-string v2, "    .activeSheet     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string v2, "    .firstVisibleTab    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v2, "    .numselectedtabs = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getNumSelectedTabs()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    const-string v2, "    .tabwidthratio   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getTabWidthRatio()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v1, "[/WINDOW1]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
