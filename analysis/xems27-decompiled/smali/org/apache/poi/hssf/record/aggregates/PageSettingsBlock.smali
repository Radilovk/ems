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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    nop

    .line 108
    return-void

    .line 104
    :cond_0
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    .line 38
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    return-object v0
.end method

.method private checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V
    .locals 3
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/Record;

    .line 223
    if-nez p1, :cond_0

    .line 227
    return-void

    .line 224
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate PageSettingsBlock record (sid=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 2

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
    .locals 4

    .line 335
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>()V

    .line 337
    .local v0, "retval":Lorg/apache/poi/hssf/record/PrintSetupRecord;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPaperSize(S)V

    .line 338
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setScale(S)V

    .line 339
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setPageStart(S)V

    .line 340
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitWidth(S)V

    .line 341
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFitHeight(S)V

    .line 342
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setOptions(S)V

    .line 343
    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHResolution(S)V

    .line 344
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setVResolution(S)V

    .line 345
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    .line 346
    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    .line 347
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setCopies(S)V

    .line 348
    return-object v0
.end method

.method private static createVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;
    .locals 2

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

    .line 408
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown margin constant:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    return-object v0

    .line 410
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    return-object v0

    .line 409
    :cond_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    return-object v0
.end method

.method private getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 1

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

    .line 129
    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x89c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    const/16 v0, 0x84

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z
    .locals 2
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 151
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->peekNextSid()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x33

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x89c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x83

    if-eq v0, v1, :cond_1

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 217
    .local v0, "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    const/4 v1, 0x0

    return v1

    .line 189
    .end local v0    # "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    :pswitch_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 190
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 191
    goto/16 :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 186
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/TopMarginRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 187
    goto/16 :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 182
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/RightMarginRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 183
    goto/16 :goto_0

    .line 177
    :pswitch_3
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 178
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 179
    goto/16 :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 174
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/VCenterRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    .line 175
    goto/16 :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 170
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/HCenterRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    .line 171
    goto/16 :goto_0

    .line 209
    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 210
    .restart local v0    # "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->isCurrentSheet()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    goto/16 :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    goto :goto_0

    .line 200
    .end local v0    # "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    :cond_4
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 201
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    .line 202
    goto :goto_0

    .line 196
    :cond_5
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 197
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    .line 198
    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$PLSAggregate;-><init>(Lorg/apache/poi/hssf/model/RecordStream;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    goto :goto_0

    .line 204
    :cond_7
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 205
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    .line 206
    goto :goto_0

    .line 153
    :cond_8
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 154
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PageBreakRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 155
    goto :goto_0

    .line 157
    :cond_9
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 158
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/PageBreakRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    .line 159
    goto :goto_0

    .line 165
    :cond_a
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 166
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/FooterRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    .line 167
    goto :goto_0

    .line 161
    :cond_b
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->checkNotPresent(Lorg/apache/poi/hssf/record/Record;)V

    .line 162
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/RecordStream;->getNext()Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    .line 163
    nop

    .line 219
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V
    .locals 7
    .param p0, "breaks"    # Lorg/apache/poi/hssf/record/PageBreakRecord;
    .param p1, "start"    # I
    .param p2, "stop"    # I
    .param p3, "count"    # I

    .line 478
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 479
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v1, "shiftedBreak":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/PageBreakRecord$Break;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 482
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 483
    .local v2, "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v3, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    .line 484
    .local v3, "breakLocation":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 485
    .local v6, "inStart":Z
    :goto_1
    if-gt v3, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 486
    .local v4, "inEnd":Z
    :goto_2
    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    .line 487
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .end local v2    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    .end local v3    # "breakLocation":I
    .end local v4    # "inEnd":Z
    .end local v6    # "inStart":Z
    :cond_2
    goto :goto_0

    .line 490
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 491
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    .line 493
    .restart local v2    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    iget v3, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    .line 494
    iget v3, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    add-int/2addr v3, p3

    int-to-short v3, v3

    iget v4, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iget v5, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    .line 495
    .end local v2    # "breakItem":Lorg/apache/poi/hssf/record/PageBreakRecord$Break;
    goto :goto_3

    .line 496
    :cond_4
    return-void
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 1
    .param p0, "r"    # Lorg/apache/poi/hssf/record/PageBreakRecord;
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 299
    if-eqz p0, :cond_1

    .line 300
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 306
    :cond_1
    return-void
.end method

.method private static visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 0
    .param p0, "r"    # Lorg/apache/poi/hssf/record/Record;
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

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

    .line 597
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    if-nez v0, :cond_1

    .line 600
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getSid()S

    move-result v0

    const/16 v1, 0x89c

    if-ne v0, v1, :cond_0

    .line 603
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 604
    return-void

    .line 601
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header-footer record sid: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getSid()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This page settings block already has a header/footer record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addLateRecords(Lorg/apache/poi/hssf/model/RecordStream;)V
    .locals 1
    .param p1, "rs"    # Lorg/apache/poi/hssf/model/RecordStream;

    .line 636
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->readARecord(Lorg/apache/poi/hssf/model/RecordStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    nop

    .line 640
    return-void

    .line 636
    :cond_0
    goto :goto_0
.end method

.method public getColumnBreaks()[I
    .locals 1

    .line 574
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getFooter()Lorg/apache/poi/hssf/record/FooterRecord;
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    return-object v0
.end method

.method public getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;
    .locals 1

    .line 589
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    return-object v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/record/HeaderRecord;
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    return-object v0
.end method

.method public getMargin(S)D
    .locals 4
    .param p1, "margin"    # S

    .line 424
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;

    move-result-object v0

    .line 425
    .local v0, "m":Lorg/apache/poi/hssf/record/Margin;
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0}, Lorg/apache/poi/hssf/record/Margin;->getMargin()D

    move-result-wide v1

    return-wide v1

    .line 428
    :cond_0
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 432
    return-wide v2

    .line 434
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown margin constant:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_2
    return-wide v2

    .line 430
    :cond_3
    return-wide v1

    .line 429
    :cond_4
    return-wide v1
.end method

.method public getNumColumnBreaks()I
    .locals 1

    .line 581
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    return v0
.end method

.method public getNumRowBreaks()I
    .locals 1

    .line 567
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getNumBreaks()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    return-object v0
.end method

.method public getRowBreaks()[I
    .locals 1

    .line 560
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    return-object v0
.end method

.method public isColumnBroken(I)Z
    .locals 1
    .param p1, "column"    # I

    .line 533
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRowBroken(I)Z
    .locals 1
    .param p1, "row"    # I

    .line 523
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreak(I)Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public positionRecords(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/RecordBase;",
            ">;)V"
        }
    .end annotation

    .line 656
    .local p1, "sheetRecords":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/RecordBase;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_sviewHeaderFooters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .local v0, "hfRecordsToIterate":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/HeaderFooterRecord;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 660
    .local v1, "hfGuidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/hssf/record/HeaderFooterRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    .line 661
    .local v3, "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/HeaderFooterRecord;->getGuid()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .end local v3    # "hf":Lorg/apache/poi/hssf/record/HeaderFooterRecord;
    goto :goto_0

    .line 666
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/RecordBase;

    .line 667
    .local v3, "rb":Lorg/apache/poi/hssf/record/RecordBase;
    instance-of v4, v3, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    if-eqz v4, :cond_1

    .line 668
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;

    .line 669
    .local v4, "cv":Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;
    new-instance v5, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;

    invoke-direct {v5, p0, v1, v4}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock$1;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;Ljava/util/Map;Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;)V

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 683
    .end local v3    # "rb":Lorg/apache/poi/hssf/record/RecordBase;
    .end local v4    # "cv":Lorg/apache/poi/hssf/record/aggregates/CustomViewSettingsRecordAggregate;
    :cond_1
    goto :goto_1

    .line 684
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public removeColumnBreak(I)V
    .locals 1
    .param p1, "column"    # I

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

    .line 512
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 514
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/PageBreakRecord;->removeBreak(I)V

    .line 515
    return-void

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sheet does not define any row breaks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnBreak(SSS)V
    .locals 1
    .param p1, "column"    # S
    .param p2, "fromRow"    # S
    .param p3, "toRow"    # S

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

    .line 385
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    .line 386
    return-void
.end method

.method public setHeader(Lorg/apache/poi/hssf/record/HeaderRecord;)V
    .locals 0
    .param p1, "newHeader"    # Lorg/apache/poi/hssf/record/HeaderRecord;

    .line 367
    iput-object p1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    .line 368
    return-void
.end method

.method public setMargin(SD)V
    .locals 4
    .param p1, "margin"    # S
    .param p2, "size"    # D

    .line 443
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMarginRec(I)Lorg/apache/poi/hssf/record/Margin;

    move-result-object v0

    .line 444
    .local v0, "m":Lorg/apache/poi/hssf/record/Margin;
    if-nez v0, :cond_4

    .line 445
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 459
    new-instance v1, Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/BottomMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 460
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    .line 461
    goto :goto_0

    .line 463
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown margin constant:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/TopMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 456
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    .line 457
    goto :goto_0

    .line 451
    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/RightMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 452
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    .line 453
    goto :goto_0

    .line 447
    :cond_3
    new-instance v1, Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/LeftMarginRecord;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 448
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    .line 466
    :cond_4
    :goto_0
    invoke-interface {v0, p2, p3}, Lorg/apache/poi/hssf/record/Margin;->setMargin(D)V

    .line 467
    return-void
.end method

.method public setPrintSetup(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V
    .locals 0
    .param p1, "newPrintSetup"    # Lorg/apache/poi/hssf/record/PrintSetupRecord;

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

    .line 543
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaksRecord()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftBreaks(Lorg/apache/poi/hssf/record/PageBreakRecord;III)V

    .line 544
    return-void
.end method

.method public visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V
    .locals 2
    .param p1, "rv"    # Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;

    .line 266
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rowBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 267
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_columnBreaksRecord:Lorg/apache/poi/hssf/record/PageBreakRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/PageBreakRecord;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 269
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_header:Lorg/apache/poi/hssf/record/HeaderRecord;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/poi/hssf/record/HeaderRecord;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/HeaderRecord;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 274
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_footer:Lorg/apache/poi/hssf/record/FooterRecord;

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    goto :goto_1

    .line 277
    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;->visitRecord(Lorg/apache/poi/hssf/record/Record;)V

    .line 279
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_hCenter:Lorg/apache/poi/hssf/record/HCenterRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 280
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_vCenter:Lorg/apache/poi/hssf/record/VCenterRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_leftMargin:Lorg/apache/poi/hssf/record/LeftMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 282
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_rightMargin:Lorg/apache/poi/hssf/record/RightMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 283
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_topMargin:Lorg/apache/poi/hssf/record/TopMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 284
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bottomMargin:Lorg/apache/poi/hssf/record/BottomMarginRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 285
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_plsRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;

    .line 286
    .local v1, "pls":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 287
    .end local v1    # "pls":Lorg/apache/poi/hssf/record/aggregates/RecordAggregate;
    goto :goto_2

    .line 288
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSetup:Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 289
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_printSize:Lorg/apache/poi/hssf/record/Record;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 290
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_headerFooter:Lorg/apache/poi/hssf/record/HeaderFooterRecord;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 291
    iget-object v0, p0, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->_bitmap:Lorg/apache/poi/hssf/record/Record;

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->visitIfPresent(Lorg/apache/poi/hssf/record/Record;Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    .line 292
    return-void
.end method
