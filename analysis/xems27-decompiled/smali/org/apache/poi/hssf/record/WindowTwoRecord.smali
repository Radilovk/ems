.class public final Lorg/apache/poi/hssf/record/WindowTwoRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "WindowTwoRecord.java"


# static fields
.field private static final active:Lorg/apache/poi/util/BitField;

.field private static final arabic:Lorg/apache/poi/util/BitField;

.field private static final defaultHeader:Lorg/apache/poi/util/BitField;

.field private static final displayFormulas:Lorg/apache/poi/util/BitField;

.field private static final displayGridlines:Lorg/apache/poi/util/BitField;

.field private static final displayGuts:Lorg/apache/poi/util/BitField;

.field private static final displayRowColHeadings:Lorg/apache/poi/util/BitField;

.field private static final displayZeros:Lorg/apache/poi/util/BitField;

.field private static final freezePanes:Lorg/apache/poi/util/BitField;

.field private static final freezePanesNoSplit:Lorg/apache/poi/util/BitField;

.field private static final savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

.field private static final selected:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x23es


# instance fields
.field private field_1_options:S

.field private field_2_top_row:S

.field private field_3_left_col:S

.field private field_4_header_color:I

.field private field_5_page_break_zoom:S

.field private field_6_normal_zoom:S

.field private field_7_reserved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    .line 38
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    .line 39
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    .line 40
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    .line 44
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    .line 45
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    .line 46
    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    .line 47
    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    .line 48
    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

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
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 65
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    .line 67
    .local v0, "size":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    .line 71
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    .line 76
    :cond_0
    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 78
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 546
    new-instance v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;-><init>()V

    .line 547
    .local v0, "rec":Lorg/apache/poi/hssf/record/WindowTwoRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 548
    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    .line 549
    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    .line 550
    iget v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    iput v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    .line 551
    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    .line 552
    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    .line 553
    iget v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    iput v1, v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    .line 554
    return-object v0
.end method

.method public getArabic()Z
    .locals 2

    .line 358
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 537
    const/16 v0, 0x12

    return v0
.end method

.method public getDefaultHeader()Z
    .locals 2

    .line 348
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayFormulas()Z
    .locals 2

    .line 298
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayGridlines()Z
    .locals 2

    .line 308
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 2

    .line 368
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayRowColHeadings()Z
    .locals 2

    .line 318
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayZeros()Z
    .locals 2

    .line 338
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getFreezePanes()Z
    .locals 2

    .line 328
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getFreezePanesNoSplit()Z
    .locals 2

    .line 378
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getHeaderColor()I
    .locals 1

    .line 446
    iget v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    return v0
.end method

.method public getLeftCol()S
    .locals 1

    .line 436
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    return v0
.end method

.method public getNormalZoom()S
    .locals 1

    .line 466
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 286
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    return v0
.end method

.method public getPageBreakZoom()S
    .locals 1

    .line 456
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    return v0
.end method

.method public getPaged()Z
    .locals 1

    .line 404
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->isActive()Z

    move-result v0

    return v0
.end method

.method public getReserved()I
    .locals 1

    .line 476
    iget v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    return v0
.end method

.method public getSavedInPageBreakPreview()Z
    .locals 2

    .line 414
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSelected()Z
    .locals 2

    .line 388
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 542
    const/16 v0, 0x23e

    return v0
.end method

.method public getTopRow()S
    .locals 1

    .line 426
    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 397
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 527
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 528
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getTopRow()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 529
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getLeftCol()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 530
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getHeaderColor()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 531
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getPageBreakZoom()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 532
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getNormalZoom()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 533
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getReserved()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 534
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "p"    # Z

    .line 199
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->active:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 200
    return-void
.end method

.method public setArabic(Z)V
    .locals 2
    .param p1, "isarabic"    # Z

    .line 161
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->arabic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 162
    return-void
.end method

.method public setDefaultHeader(Z)V
    .locals 2
    .param p1, "header"    # Z

    .line 151
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->defaultHeader:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 152
    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 2
    .param p1, "formulas"    # Z

    .line 101
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayFormulas:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 102
    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 2
    .param p1, "gridlines"    # Z

    .line 111
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGridlines:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 112
    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2
    .param p1, "guts"    # Z

    .line 171
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayGuts:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 172
    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 2
    .param p1, "headings"    # Z

    .line 121
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayRowColHeadings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 122
    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 2
    .param p1, "zeros"    # Z

    .line 141
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->displayZeros:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 142
    return-void
.end method

.method public setFreezePanes(Z)V
    .locals 2
    .param p1, "freezepanes"    # Z

    .line 131
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 132
    return-void
.end method

.method public setFreezePanesNoSplit(Z)V
    .locals 2
    .param p1, "freeze"    # Z

    .line 181
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->freezePanesNoSplit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 182
    return-void
.end method

.method public setHeaderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 247
    iput p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_4_header_color:I

    .line 248
    return-void
.end method

.method public setLeftCol(S)V
    .locals 0
    .param p1, "leftCol"    # S

    .line 237
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_3_left_col:S

    .line 238
    return-void
.end method

.method public setNormalZoom(S)V
    .locals 0
    .param p1, "zoom"    # S

    .line 267
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_6_normal_zoom:S

    .line 268
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 89
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 90
    return-void
.end method

.method public setPageBreakZoom(S)V
    .locals 0
    .param p1, "zoom"    # S

    .line 257
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_5_page_break_zoom:S

    .line 258
    return-void
.end method

.method public setPaged(Z)V
    .locals 0
    .param p1, "p"    # Z

    .line 206
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setActive(Z)V

    .line 207
    return-void
.end method

.method public setReserved(I)V
    .locals 0
    .param p1, "reserved"    # I

    .line 276
    iput p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_7_reserved:I

    .line 277
    return-void
.end method

.method public setSavedInPageBreakPreview(Z)V
    .locals 2
    .param p1, "p"    # Z

    .line 215
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->savedInPageBreakPreview:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 216
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "sel"    # Z

    .line 191
    sget-object v0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->selected:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_1_options:S

    .line 192
    return-void
.end method

.method public setTopRow(S)V
    .locals 0
    .param p1, "topRow"    # S

    .line 227
    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowTwoRecord;->field_2_top_row:S

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 481
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[WINDOW2]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v1, "    .options        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    const-string v2, "       .dispformulas= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayFormulas()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-string v2, "       .dispgridlins= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayGridlines()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    const-string v2, "       .disprcheadin= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayRowColHeadings()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v2, "       .freezepanes = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getFreezePanes()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    const-string v2, "       .displayzeros= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayZeros()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    const-string v2, "       .defaultheadr= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDefaultHeader()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    const-string v2, "       .arabic      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getArabic()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    const-string v2, "       .displayguts = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayGuts()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const-string v2, "       .frzpnsnosplt= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getFreezePanesNoSplit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const-string v2, "       .selected    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getSelected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 506
    const-string v2, "       .active       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->isActive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    const-string v2, "       .svdinpgbrkpv= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getSavedInPageBreakPreview()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v2, "    .toprow         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getTopRow()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    const-string v2, "    .leftcol        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getLeftCol()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    const-string v2, "    .headercolor    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getHeaderColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v2, "    .pagebreakzoom  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getPageBreakZoom()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    const-string v2, "    .normalzoom     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getNormalZoom()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    const-string v2, "    .reserved       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getReserved()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    const-string v1, "[/WINDOW2]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
