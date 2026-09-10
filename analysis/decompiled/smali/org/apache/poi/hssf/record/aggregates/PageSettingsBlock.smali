.class public final Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;
.super Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
.source "PageSettingsBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;
    }
.end annotation


# instance fields
.field private _bitmap:Lorg/apache/poi/hssf/record/Record;

.field private _bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

.field private _columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

.field private _footer:Lorg/apache/poi/hssf/record/FooterRecord;

.field private _hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

.field private _header:Lorg/apache/poi/hssf/record/HeaderRecord;

.field private _headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

.field private _leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

.field private final _plsRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;",
            ">;"
        }
    .end annotation
.end field

.field private _printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

.field private _printSize:Lorg/apache/poi/hssf/record/Record;

.field private _rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

.field private _rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

.field private _sviewHeaderFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/HeaderFooterRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

.field private _vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    .line 115
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 116
    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 117
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    .line 118
    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    .line 119
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->createHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    .line 120
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->createVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    .line 121
    invoke-static {}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->createPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 1
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    return-object v0
.end method

.method private checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/Record;

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate PageSettingsBlock record (sid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    return-void
.end method

.method private static createHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HCenterRecord;-><init>()V

    .line 314
    .local v0, "retval":Lorg/apache/poi/hssf/record/HCenterRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HCenterRecord;->setHCenter(Z)V

    .line 315
    return-object v0
.end method

.method private static createPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;
    .locals 6

    .prologue
    const/16 v3, 0x12c

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x1

    .line 335
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>()V

    .line 337
    .local v0, "retval":Lorg/apache/poi/hssf/record/PrintSetupRecord;
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPaperSize(S)V

    .line 338
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setScale(S)V

    .line 339
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPageStart(S)V

    .line 340
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitWidth(S)V

    .line 341
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitHeight(S)V

    .line 342
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setOptions(S)V

    .line 343
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHResolution(S)V

    .line 344
    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setVResolution(S)V

    .line 345
    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    .line 346
    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    .line 347
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setCopies(S)V

    .line 348
    return-object v0
.end method

.method private static createVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VCenterRecord;-><init>()V

    .line 324
    .local v0, "retval":Lorg/apache/poi/hssf/record/VCenterRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/VCenterRecord;->setVCenter(Z)V

    .line 325
    return-object v0
.end method

.method private getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/VerticalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 240
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    return-object v0
.end method

.method private getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;
    .locals 3
    .param p1, "marginIndex"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 414
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown margin constant:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 412
    :goto_0
    return-object v0

    .line 410
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    goto :goto_0

    .line 412
    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    return-object v0
.end method

.method public static isComponentRecord(I)Z
    .locals 1
    .param p0, "sid"    # I

    .prologue
    .line 129
    sparse-switch p0, :sswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 145
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x33 -> :sswitch_0
        0x4d -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xe9 -> :sswitch_0
        0x89c -> :sswitch_0
    .end sparse-switch
.end method

.method private readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z
    .locals 3
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 151
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 217
    const/4 v1, 0x0

    .line 219
    :goto_0
    return v1

    .line 153
    :sswitch_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 154
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 219
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 157
    :sswitch_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 158
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PageBreakRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    goto :goto_1

    .line 161
    :sswitch_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 162
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/HeaderRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    goto :goto_1

    .line 165
    :sswitch_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 166
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/FooterRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    goto :goto_1

    .line 169
    :sswitch_4
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 170
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/HCenterRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    goto :goto_1

    .line 173
    :sswitch_5
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 174
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/VCenterRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    goto :goto_1

    .line 177
    :sswitch_6
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 178
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    goto :goto_1

    .line 181
    :sswitch_7
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 182
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RightMarginRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    goto :goto_1

    .line 185
    :sswitch_8
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 186
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/TopMarginRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    goto :goto_1

    .line 189
    :sswitch_9
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 190
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    goto :goto_1

    .line 193
    :sswitch_a
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    new-instance v2, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 196
    :sswitch_b
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 197
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    goto/16 :goto_1

    .line 200
    :sswitch_c
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 201
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    goto/16 :goto_1

    .line 204
    :sswitch_d
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 205
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    goto/16 :goto_1

    .line 209
    :sswitch_e
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 210
    .local v0, "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->isCurrentSheet()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    goto/16 :goto_1

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
        0x26 -> :sswitch_6
        0x27 -> :sswitch_7
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x33 -> :sswitch_d
        0x4d -> :sswitch_a
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0xa1 -> :sswitch_b
        0xe9 -> :sswitch_c
        0x89c -> :sswitch_e
    .end sparse-switch
.end method

.method private static shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V
    .locals 9
    .param p0, "breaks"    # Lorg/apache/poi/hssf/record/PageBreakRecord;
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 478
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 479
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v5, "shiftedBreak":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 482
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 483
    .local v0, "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v1, v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 484
    .local v1, "breakLocation":I
    if-lt v1, p1, :cond_1

    move v3, v6

    .line 485
    .local v3, "inStart":Z
    :goto_1
    if-gt v1, p2, :cond_2

    move v2, v6

    .line 486
    .local v2, "inEnd":Z
    :goto_2
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 487
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "inEnd":Z
    .end local v3    # "inStart":Z
    :cond_1
    move v3, v7

    .line 484
    goto :goto_1

    .restart local v3    # "inStart":Z
    :cond_2
    move v2, v7

    .line 485
    goto :goto_2

    .line 490
    .end local v0    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    .end local v1    # "breakLocation":I
    .end local v3    # "inStart":Z
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 491
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 492
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 493
    .restart local v0    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v6, v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    .line 494
    iget v6, v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    add-int/2addr v6, p3

    int-to-short v6, v6

    iget v7, v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iget v8, v0, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    goto :goto_3

    .line 496
    .end local v0    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    :cond_4
    return-void
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 1
    .param p0, "r"    # Lorg/apache/poi/hssf/record/PageBreakRecord;
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 299
    if-eqz p0, :cond_0

    .line 300
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-interface {p1, p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 0
    .param p0, "r"    # Lorg/apache/poi/hssf/record/Record;
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 294
    if-eqz p0, :cond_0

    .line 295
    invoke-interface {p1, p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method public addLateHeaderFooter(Lorg/apache/poi/hssf/record/HeaderFooterRecord;)V
    .locals 3
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .prologue
    .line 597
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This page settings block already has a header/footer record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getSid()S

    move-result v0

    const/16 v1, 0x89c

    if-eq v0, v1, :cond_1

    .line 601
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header-footer record sid: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getSid()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 604
    return-void
.end method

.method public addLateRecords(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 1
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .prologue
    .line 636
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    return-void
.end method

.method public getColumnBreaks()[I
    .locals 1

    .prologue
    .line 574
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getFooter()Lorg/apache/poi/hssf/record/FooterRecord;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    return-object v0
.end method

.method public getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/HeaderRecord;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    return-object v0
.end method

.method public getMargin(S)D
    .locals 6
    .param p1, "margin"    # S

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 424
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;

    move-result-object v0

    .line 425
    .local v0, "m":Lorg/apache/poi/hssf/record/Margin;
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/Margin;->getMargin()D

    move-result-wide v2

    .line 432
    :goto_0
    :pswitch_0
    return-wide v2

    .line 428
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 434
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown margin constant:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    move-wide v2, v4

    .line 431
    goto :goto_0

    :pswitch_2
    move-wide v2, v4

    .line 432
    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getNumColumnBreaks()I
    .locals 1

    .prologue
    .line 581
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    return v0
.end method

.method public getNumRowBreaks()I
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    return-object v0
.end method

.method public isColumnBroken(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 533
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRowBroken(I)Z
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 523
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public positionRecords(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p1, "sheetRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .local v3, "hfRecordsToIterate":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/HeaderFooterRecord;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 660
    .local v2, "hfGuidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hssf/record/HeaderFooterRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 661
    .local v1, "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getGuid()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 666
    .end local v1    # "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/RecordBase;

    .line 667
    .local v5, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v6, v5, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 668
    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    .line 669
    .local v0, "cv":Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;
    new-instance v6, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;

    invoke-direct {v6, p0, v2, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;)V

    invoke-virtual {v0, v6}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_1

    .line 684
    .end local v0    # "cv":Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;
    .end local v5    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    :cond_2
    return-void
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 257
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    .line 258
    return-void
.end method

.method public removeRowBreak(I)V
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 512
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sheet does not define any row breaks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    .line 515
    return-void
.end method

.method public setColumnBreak(SSS)V
    .locals 1
    .param p1, "column"    # S
    .param p2, "fromRow"    # S
    .param p3, "toRow"    # S

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    .line 250
    return-void
.end method

.method public setFooter(Lorg/apache/poi/hssf/record/FooterRecord;)V
    .locals 0
    .param p1, "newFooter"    # Lorg/apache/poi/hssf/record/FooterRecord;

    .prologue
    .line 385
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    .line 386
    return-void
.end method

.method public setHeader(Lorg/apache/poi/hssf/record/HeaderRecord;)V
    .locals 0
    .param p1, "newHeader"    # Lorg/apache/poi/hssf/record/HeaderRecord;

    .prologue
    .line 367
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    .line 368
    return-void
.end method

.method public setMargin(SD)V
    .locals 4
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;

    move-result-object v0

    .line 444
    .local v0, "m":Lorg/apache/poi/hssf/record/Margin;
    if-nez v0, :cond_0

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 463
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown margin constant:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :pswitch_0
    new-instance v1, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 448
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 466
    :cond_0
    :goto_0
    invoke-interface {v0, p2, p3}, Lorg/apache/poi/hssf/record/Margin;->setMargin(D)V

    .line 467
    return-void

    .line 451
    :pswitch_1
    new-instance v1, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 452
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 453
    goto :goto_0

    .line 455
    :pswitch_2
    new-instance v1, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 456
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 457
    goto :goto_0

    .line 459
    :pswitch_3
    new-instance v1, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 460
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 461
    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPrintSetup(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V
    .locals 0
    .param p1, "newPrintSetup"    # Lorg/apache/poi/hssf/record/PrintSetupRecord;

    .prologue
    .line 403
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    .line 404
    return-void
.end method

.method public setRowBreak(ISS)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "fromCol"    # S
    .param p3, "toCol"    # S

    .prologue
    .line 504
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    int-to-short v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    .line 505
    return-void
.end method

.method public shiftColumnBreaks(SSS)V
    .locals 1
    .param p1, "startingCol"    # S
    .param p2, "endingCol"    # S
    .param p3, "count"    # S

    .prologue
    .line 553
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V

    .line 554
    return-void
.end method

.method public shiftRowBreaks(III)V
    .locals 1
    .param p1, "startingRow"    # I
    .param p2, "endingRow"    # I
    .param p3, "count"    # I

    .prologue
    .line 543
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V

    .line 544
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 4
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .prologue
    .line 266
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 267
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 269
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    if-nez v2, :cond_0

    .line 270
    new-instance v2, Lorg/apache/poi/hssf/record/HeaderRecord;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 274
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    if-nez v2, :cond_1

    .line 275
    new-instance v2, Lorg/apache/poi/hssf/record/FooterRecord;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 279
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 280
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 281
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 282
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 283
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 284
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 285
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    .line 286
    .local v1, "pls":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    goto :goto_2

    .line 272
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pls":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-interface {p1, v2}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_1

    .line 288
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 289
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 290
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 291
    iget-object v2, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 292
    return-void
.end method
