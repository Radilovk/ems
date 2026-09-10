.class public final Lorg/apache/poi/hssf/record/PrintSetupRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "PrintSetupRecord.java"


# static fields
.field private static final draft:Lorg/apache/poi/util/BitField;

.field private static final landscape:Lorg/apache/poi/util/BitField;

.field private static final lefttoright:Lorg/apache/poi/util/BitField;

.field private static final noOrientation:Lorg/apache/poi/util/BitField;

.field private static final nocolor:Lorg/apache/poi/util/BitField;

.field private static final notes:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0xa1s

.field private static final usepage:Lorg/apache/poi/util/BitField;

.field private static final validsettings:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_10_footermargin:D

.field private field_11_copies:S

.field private field_1_paper_size:S

.field private field_2_scale:S

.field private field_3_page_start:S

.field private field_4_fit_width:S

.field private field_5_fit_height:S

.field private field_6_options:S

.field private field_7_hresolution:S

.field private field_8_vresolution:S

.field private field_9_headermargin:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    .line 47
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    .line 52
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    .line 54
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    .line 56
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    .line 58
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    .line 60
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 73
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    .line 76
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    .line 77
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    .line 78
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    .line 79
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    .line 85
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 352
    new-instance v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;-><init>()V

    .line 353
    .local v0, "rec":Lorg/apache/poi/hssf/record/PrintSetupRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    .line 354
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    .line 355
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    .line 356
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    .line 357
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    .line 358
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 359
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    .line 360
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    .line 361
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    .line 362
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    .line 363
    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    .line 364
    return-object v0
.end method

.method public getCopies()S
    .locals 1

    .line 278
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 343
    const/16 v0, 0x22

    return v0
.end method

.method public getDraft()Z
    .locals 2

    .line 237
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getFitHeight()S
    .locals 1

    .line 206
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    return v0
.end method

.method public getFitWidth()S
    .locals 1

    .line 201
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    return v0
.end method

.method public getFooterMargin()D
    .locals 2

    .line 273
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    return-wide v0
.end method

.method public getHResolution()S
    .locals 1

    .line 258
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    return v0
.end method

.method public getHeaderMargin()D
    .locals 2

    .line 268
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    return-wide v0
.end method

.method public getLandscape()Z
    .locals 2

    .line 222
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getLeftToRight()Z
    .locals 2

    .line 217
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getNoColor()Z
    .locals 2

    .line 232
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getNoOrientation()Z
    .locals 2

    .line 247
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getNotes()Z
    .locals 2

    .line 242
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 211
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    return v0
.end method

.method public getPageStart()S
    .locals 1

    .line 196
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    return v0
.end method

.method public getPaperSize()S
    .locals 1

    .line 186
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    return v0
.end method

.method public getScale()S
    .locals 1

    .line 191
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 348
    const/16 v0, 0xa1

    return v0
.end method

.method public getUsePage()Z
    .locals 2

    .line 252
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getVResolution()S
    .locals 1

    .line 263
    iget-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    return v0
.end method

.method public getValidSettings()Z
    .locals 2

    .line 227
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 329
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPaperSize()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 330
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getScale()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 331
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPageStart()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 332
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitWidth()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 333
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 334
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHResolution()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 336
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getVResolution()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 337
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 338
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 339
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getCopies()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 340
    return-void
.end method

.method public setCopies(S)V
    .locals 0
    .param p1, "copies"    # S

    .line 181
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_11_copies:S

    .line 182
    return-void
.end method

.method public setDraft(Z)V
    .locals 2
    .param p1, "d"    # Z

    .line 140
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->draft:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 141
    return-void
.end method

.method public setFitHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .line 109
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_5_fit_height:S

    .line 110
    return-void
.end method

.method public setFitWidth(S)V
    .locals 0
    .param p1, "width"    # S

    .line 104
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_4_fit_width:S

    .line 105
    return-void
.end method

.method public setFooterMargin(D)V
    .locals 0
    .param p1, "footermargin"    # D

    .line 176
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_10_footermargin:D

    .line 177
    return-void
.end method

.method public setHResolution(S)V
    .locals 0
    .param p1, "resolution"    # S

    .line 161
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_7_hresolution:S

    .line 162
    return-void
.end method

.method public setHeaderMargin(D)V
    .locals 0
    .param p1, "headermargin"    # D

    .line 171
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_9_headermargin:D

    .line 172
    return-void
.end method

.method public setLandscape(Z)V
    .locals 2
    .param p1, "ls"    # Z

    .line 125
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->landscape:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 126
    return-void
.end method

.method public setLeftToRight(Z)V
    .locals 2
    .param p1, "ltor"    # Z

    .line 120
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->lefttoright:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 121
    return-void
.end method

.method public setNoColor(Z)V
    .locals 2
    .param p1, "mono"    # Z

    .line 135
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->nocolor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 136
    return-void
.end method

.method public setNoOrientation(Z)V
    .locals 2
    .param p1, "orientation"    # Z

    .line 150
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->noOrientation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 151
    return-void
.end method

.method public setNotes(Z)V
    .locals 2
    .param p1, "printnotes"    # Z

    .line 145
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->notes:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 146
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 114
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 115
    return-void
.end method

.method public setPageStart(S)V
    .locals 0
    .param p1, "start"    # S

    .line 99
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_3_page_start:S

    .line 100
    return-void
.end method

.method public setPaperSize(S)V
    .locals 0
    .param p1, "size"    # S

    .line 89
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_1_paper_size:S

    .line 90
    return-void
.end method

.method public setScale(S)V
    .locals 0
    .param p1, "scale"    # S

    .line 94
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_2_scale:S

    .line 95
    return-void
.end method

.method public setUsePage(Z)V
    .locals 2
    .param p1, "page"    # Z

    .line 155
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->usepage:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 156
    return-void
.end method

.method public setVResolution(S)V
    .locals 0
    .param p1, "resolution"    # S

    .line 166
    iput-short p1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_8_vresolution:S

    .line 167
    return-void
.end method

.method public setValidSettings(Z)V
    .locals 2
    .param p1, "valid"    # Z

    .line 130
    sget-object v0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->validsettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PrintSetupRecord;->field_6_options:S

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[PRINTSETUP]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const-string v1, "    .papersize      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPaperSize()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v2, "    .scale          = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getScale()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v2, "    .pagestart      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getPageStart()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v2, "    .fitwidth       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitWidth()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v2, "    .fitheight      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFitHeight()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v2, "    .options        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getOptions()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v2, "        .ltor       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getLeftToRight()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v2, "        .landscape  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getLandscape()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v2, "        .valid      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getValidSettings()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v2, "        .mono       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getNoColor()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v2, "        .draft      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getDraft()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v2, "        .notes      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getNotes()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v2, "        .noOrientat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getNoOrientation()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v2, "        .usepage    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getUsePage()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v2, "    .hresolution    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHResolution()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v2, "    .vresolution    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getVResolution()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v2, "    .headermargin   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string v2, "    .footermargin   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v2, "    .copies         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getCopies()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "[/PRINTSETUP]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
