.class public final Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "AxisOptionsRecord.java"


# static fields
.field private static final defaultBase:Lorg/apache/poi/util/BitField;

.field private static final defaultCross:Lorg/apache/poi/util/BitField;

.field private static final defaultDateSettings:Lorg/apache/poi/util/BitField;

.field private static final defaultMajor:Lorg/apache/poi/util/BitField;

.field private static final defaultMaximum:Lorg/apache/poi/util/BitField;

.field private static final defaultMinimum:Lorg/apache/poi/util/BitField;

.field private static final defaultMinorUnit:Lorg/apache/poi/util/BitField;

.field private static final isDate:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1062s


# instance fields
.field private field_1_minimumCategory:S

.field private field_2_maximumCategory:S

.field private field_3_majorUnitValue:S

.field private field_4_majorUnit:S

.field private field_5_minorUnitValue:S

.field private field_6_minorUnit:S

.field private field_7_baseUnit:S

.field private field_8_crossingPoint:S

.field private field_9_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    .line 40
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    .line 41
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 61
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    .line 67
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    .line 68
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    .line 70
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 149
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>()V

    .line 151
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    .line 152
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    .line 153
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    .line 154
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    .line 155
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    .line 156
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    .line 157
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    .line 158
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    .line 159
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 160
    return-object v0
.end method

.method public getBaseUnit()S
    .locals 1

    .line 267
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    return v0
.end method

.method public getCrossingPoint()S
    .locals 1

    .line 283
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    return v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 140
    const/16 v0, 0x12

    return v0
.end method

.method public getMajorUnit()S
    .locals 1

    .line 219
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    return v0
.end method

.method public getMajorUnitValue()S
    .locals 1

    .line 203
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    return v0
.end method

.method public getMaximumCategory()S
    .locals 1

    .line 187
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    return v0
.end method

.method public getMinimumCategory()S
    .locals 1

    .line 171
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    return v0
.end method

.method public getMinorUnit()S
    .locals 1

    .line 251
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    return v0
.end method

.method public getMinorUnitValue()S
    .locals 1

    .line 235
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    .line 299
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 145
    const/16 v0, 0x1062

    return v0
.end method

.method public isDefaultBase()Z
    .locals 2

    .line 415
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultCross()Z
    .locals 2

    .line 433
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultDateSettings()Z
    .locals 2

    .line 451
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMajor()Z
    .locals 2

    .line 361
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMaximum()Z
    .locals 2

    .line 343
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMinimum()Z
    .locals 2

    .line 325
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMinorUnit()Z
    .locals 2

    .line 379
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIsDate()Z
    .locals 2

    .line 397
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 128
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 129
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 130
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 131
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 132
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 133
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 134
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 135
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 136
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 137
    return-void
.end method

.method public setBaseUnit(S)V
    .locals 0
    .param p1, "field_7_baseUnit"    # S

    .line 275
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    .line 276
    return-void
.end method

.method public setCrossingPoint(S)V
    .locals 0
    .param p1, "field_8_crossingPoint"    # S

    .line 291
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    .line 292
    return-void
.end method

.method public setDefaultBase(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 406
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 407
    return-void
.end method

.method public setDefaultCross(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 424
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 425
    return-void
.end method

.method public setDefaultDateSettings(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 442
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 443
    return-void
.end method

.method public setDefaultMajor(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 352
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 353
    return-void
.end method

.method public setDefaultMaximum(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 334
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 335
    return-void
.end method

.method public setDefaultMinimum(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 316
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 317
    return-void
.end method

.method public setDefaultMinorUnit(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 370
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 371
    return-void
.end method

.method public setIsDate(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 388
    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 389
    return-void
.end method

.method public setMajorUnit(S)V
    .locals 0
    .param p1, "field_4_majorUnit"    # S

    .line 227
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    .line 228
    return-void
.end method

.method public setMajorUnitValue(S)V
    .locals 0
    .param p1, "field_3_majorUnitValue"    # S

    .line 211
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    .line 212
    return-void
.end method

.method public setMaximumCategory(S)V
    .locals 0
    .param p1, "field_2_maximumCategory"    # S

    .line 195
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    .line 196
    return-void
.end method

.method public setMinimumCategory(S)V
    .locals 0
    .param p1, "field_1_minimumCategory"    # S

    .line 179
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    .line 180
    return-void
.end method

.method public setMinorUnit(S)V
    .locals 0
    .param p1, "field_6_minorUnit"    # S

    .line 259
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    .line 260
    return-void
.end method

.method public setMinorUnitValue(S)V
    .locals 0
    .param p1, "field_5_minorUnitValue"    # S

    .line 243
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    .line 244
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_9_options"    # S

    .line 307
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    .line 308
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[AXCEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "    .minimumCategory      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinimumCategory()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinimumCategory()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " )"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v5, "    .maximumCategory      = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMaximumCategory()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMaximumCategory()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v5, "    .majorUnitValue       = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnitValue()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnitValue()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v5, "    .majorUnit            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnit()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnit()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v5, "    .minorUnitValue       = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnitValue()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnitValue()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v5, "    .minorUnit            = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnit()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnit()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v5, "    .baseUnit             = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getBaseUnit()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getBaseUnit()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v5, "    .crossingPoint        = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getCrossingPoint()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getCrossingPoint()S

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v5, "    .options              = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getOptions()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, "         .defaultMinimum           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMinimum()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    const-string v2, "         .defaultMaximum           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMaximum()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    const-string v2, "         .defaultMajor             = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMajor()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    const-string v2, "         .defaultMinorUnit         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMinorUnit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    const-string v2, "         .isDate                   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isIsDate()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    const-string v2, "         .defaultBase              = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultBase()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    const-string v2, "         .defaultCross             = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultCross()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    const-string v2, "         .defaultDateSettings      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultDateSettings()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "[/AXCEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
