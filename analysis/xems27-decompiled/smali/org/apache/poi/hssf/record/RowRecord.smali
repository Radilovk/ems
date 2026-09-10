.class public final Lorg/apache/poi/hssf/record/RowRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "RowRecord.java"


# static fields
.field public static final ENCODED_SIZE:I = 0x14

.field private static final OPTION_BITS_ALWAYS_SET:I = 0x100

.field private static final badFontHeight:Lorg/apache/poi/util/BitField;

.field private static final bottomBorder:Lorg/apache/poi/util/BitField;

.field private static final colapsed:Lorg/apache/poi/util/BitField;

.field private static final formatted:Lorg/apache/poi/util/BitField;

.field private static final outlineLevel:Lorg/apache/poi/util/BitField;

.field private static final phoeneticGuide:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x208s

.field private static final topBorder:Lorg/apache/poi/util/BitField;

.field private static final xfIndex:Lorg/apache/poi/util/BitField;

.field private static final zeroHeight:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_row_number:I

.field private field_2_first_col:I

.field private field_3_last_col:I

.field private field_4_height:S

.field private field_5_optimize:S

.field private field_6_reserved:S

.field private field_7_option_flags:I

.field private field_8_option_flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    .line 53
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->colapsed:Lorg/apache/poi/util/BitField;

    .line 54
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    .line 55
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    .line 56
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    .line 60
    const/16 v0, 0xfff

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    .line 61
    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    .line 62
    const/16 v0, 0x2000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    .line 63
    const/16 v0, 0x4000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoeneticGuide:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "rowNumber"    # I

    .line 66
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 67
    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    .line 68
    const/16 v0, 0xff

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    .line 69
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    .line 70
    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    .line 71
    const/16 v0, 0x100

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 73
    const/16 v0, 0xf

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->setEmpty()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 77
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 78
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    .line 79
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    .line 82
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 86
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 409
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    .line 410
    .local v0, "rec":Lorg/apache/poi/hssf/record/RowRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    .line 411
    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    .line 412
    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    .line 413
    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    .line 414
    iget-short v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    .line 415
    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 416
    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    iput v1, v0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 417
    return-object v0
.end method

.method public getBadFontHeight()Z
    .locals 2

    .line 304
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getBottomBorder()Z
    .locals 2

    .line 351
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getColapsed()Z
    .locals 2

    .line 286
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->colapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 401
    const/16 v0, 0x10

    return v0
.end method

.method public getFirstCol()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    return v0
.end method

.method public getFormatted()Z
    .locals 2

    .line 313
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getHeight()S
    .locals 1

    .line 249
    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    return v0
.end method

.method public getLastCol()I
    .locals 1

    .line 241
    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    return v0
.end method

.method public getOptimize()S
    .locals 1

    .line 257
    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    return v0
.end method

.method public getOptionFlags()S
    .locals 1

    .line 266
    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    int-to-short v0, v0

    return v0
.end method

.method public getOptionFlags2()S
    .locals 1

    .line 324
    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()S
    .locals 2

    .line 277
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPhoeneticGuide()Z
    .locals 2

    .line 360
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoeneticGuide:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getRowNumber()I
    .locals 1

    .line 225
    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 405
    const/16 v0, 0x208

    return v0
.end method

.method public getTopBorder()Z
    .locals 2

    .line 342
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getXFIndex()S
    .locals 2

    .line 333
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result v0

    return v0
.end method

.method public getZeroHeight()Z
    .locals 2

    .line 295
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 97
    iget v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 390
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 391
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 392
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    :goto_1
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 393
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 394
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptimize()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 395
    iget-short v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 396
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 397
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags2()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 398
    return-void
.end method

.method public setBadFontHeight(Z)V
    .locals 2
    .param p1, "f"    # Z

    .line 170
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->badFontHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 171
    return-void
.end method

.method public setBottomBorder(Z)V
    .locals 2
    .param p1, "f"    # Z

    .line 208
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->bottomBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 209
    return-void
.end method

.method public setColapsed(Z)V
    .locals 2
    .param p1, "c"    # Z

    .line 154
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->colapsed:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 155
    return-void
.end method

.method public setEmpty()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    .line 94
    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    .line 95
    return-void
.end method

.method public setFirstCol(I)V
    .locals 0
    .param p1, "col"    # I

    .line 113
    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_2_first_col:I

    .line 114
    return-void
.end method

.method public setFormatted(Z)V
    .locals 2
    .param p1, "f"    # Z

    .line 178
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->formatted:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 179
    return-void
.end method

.method public setHeight(S)V
    .locals 0
    .param p1, "height"    # S

    .line 128
    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_4_height:S

    .line 129
    return-void
.end method

.method public setLastCol(I)V
    .locals 0
    .param p1, "col"    # I

    .line 120
    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_3_last_col:I

    .line 121
    return-void
.end method

.method public setOptimize(S)V
    .locals 0
    .param p1, "optimize"    # S

    .line 136
    iput-short p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_5_optimize:S

    .line 137
    return-void
.end method

.method public setOutlineLevel(S)V
    .locals 2
    .param p1, "ol"    # S

    .line 146
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->outlineLevel:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 147
    return-void
.end method

.method public setPhoeneticGuide(Z)V
    .locals 2
    .param p1, "f"    # Z

    .line 217
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->phoeneticGuide:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 218
    return-void
.end method

.method public setRowNumber(I)V
    .locals 0
    .param p1, "row"    # I

    .line 105
    iput p1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_1_row_number:I

    .line 106
    return-void
.end method

.method public setTopBorder(Z)V
    .locals 2
    .param p1, "f"    # Z

    .line 198
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->topBorder:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 199
    return-void
.end method

.method public setXFIndex(S)V
    .locals 2
    .param p1, "index"    # S

    .line 189
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->xfIndex:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_8_option_flags:I

    .line 190
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 2
    .param p1, "z"    # Z

    .line 162
    sget-object v0, Lorg/apache/poi/hssf/record/RowRecord;->zeroHeight:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_7_option_flags:I

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 364
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ROW]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v1, "    .rownumber      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v2, "    .firstcol       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    const-string v2, "    .lastcol        = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v2, "    .height         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    const-string v2, "    .optimize       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptimize()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v2, "    .reserved       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lorg/apache/poi/hssf/record/RowRecord;->field_6_reserved:S

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const-string v2, "    .optionflags    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v2, "        .outlinelvl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    const-string v2, "        .colapsed   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getColapsed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    const-string v2, "        .zeroheight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v2, "        .badfontheig= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getBadFontHeight()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v2, "        .formatted  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getFormatted()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v2, "    .optionsflags2  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getOptionFlags2()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v2, "        .xfindex       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v2, "        .topBorder     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getTopBorder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    const-string v2, "        .bottomBorder  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getBottomBorder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v2, "        .phoeneticGuide= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/RowRecord;->getPhoeneticGuide()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    const-string v1, "[/ROW]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
