.class public final Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "ValueRangeRecord.java"


# static fields
.field private static final automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

.field private static final automaticMajor:Lorg/apache/poi/util/BitField;

.field private static final automaticMaximum:Lorg/apache/poi/util/BitField;

.field private static final automaticMinimum:Lorg/apache/poi/util/BitField;

.field private static final automaticMinor:Lorg/apache/poi/util/BitField;

.field private static final crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

.field private static final logarithmicScale:Lorg/apache/poi/util/BitField;

.field private static final reserved:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x101fs

.field private static final valuesInReverse:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_minimumAxisValue:D

.field private field_2_maximumAxisValue:D

.field private field_3_majorIncrement:D

.field private field_4_minorIncrement:D

.field private field_5_categoryAxisCross:D

.field private field_6_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    .line 36
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    .line 38
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    .line 40
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    .line 41
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    .line 42
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 59
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    .line 61
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    .line 62
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    .line 65
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 67
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 126
    new-instance v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;-><init>()V

    .line 128
    .local v0, "rec":Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    .line 129
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    .line 130
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    .line 131
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    .line 132
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    .line 133
    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 134
    return-object v0
.end method

.method public getCategoryAxisCross()D
    .locals 2

    .line 209
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    return-wide v0
.end method

.method protected getDataSize()I
    .locals 1

    .line 117
    const/16 v0, 0x2a

    return v0
.end method

.method public getMajorIncrement()D
    .locals 2

    .line 177
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    return-wide v0
.end method

.method public getMaximumAxisValue()D
    .locals 2

    .line 161
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    return-wide v0
.end method

.method public getMinimumAxisValue()D
    .locals 2

    .line 145
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    return-wide v0
.end method

.method public getMinorIncrement()D
    .locals 2

    .line 193
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    return-wide v0
.end method

.method public getOptions()S
    .locals 1

    .line 225
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    .line 122
    const/16 v0, 0x101f

    return v0
.end method

.method public isAutomaticCategoryCrossing()Z
    .locals 2

    .line 323
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutomaticMajor()Z
    .locals 2

    .line 287
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutomaticMaximum()Z
    .locals 2

    .line 269
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutomaticMinimum()Z
    .locals 2

    .line 251
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutomaticMinor()Z
    .locals 2

    .line 305
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isCrossCategoryAxisAtMaximum()Z
    .locals 2

    .line 377
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isLogarithmicScale()Z
    .locals 2

    .line 341
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isReserved()Z
    .locals 2

    .line 395
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isValuesInReverse()Z
    .locals 2

    .line 359
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 108
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 109
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 110
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 111
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 112
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 113
    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 114
    return-void
.end method

.method public setAutomaticCategoryCrossing(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 314
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticCategoryCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 315
    return-void
.end method

.method public setAutomaticMajor(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 278
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 279
    return-void
.end method

.method public setAutomaticMaximum(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 260
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 261
    return-void
.end method

.method public setAutomaticMinimum(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 242
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 243
    return-void
.end method

.method public setAutomaticMinor(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 296
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->automaticMinor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 297
    return-void
.end method

.method public setCategoryAxisCross(D)V
    .locals 0
    .param p1, "field_5_categoryAxisCross"    # D

    .line 217
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_5_categoryAxisCross:D

    .line 218
    return-void
.end method

.method public setCrossCategoryAxisAtMaximum(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 368
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->crossCategoryAxisAtMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 369
    return-void
.end method

.method public setLogarithmicScale(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 332
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->logarithmicScale:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 333
    return-void
.end method

.method public setMajorIncrement(D)V
    .locals 0
    .param p1, "field_3_majorIncrement"    # D

    .line 185
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_3_majorIncrement:D

    .line 186
    return-void
.end method

.method public setMaximumAxisValue(D)V
    .locals 0
    .param p1, "field_2_maximumAxisValue"    # D

    .line 169
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_2_maximumAxisValue:D

    .line 170
    return-void
.end method

.method public setMinimumAxisValue(D)V
    .locals 0
    .param p1, "field_1_minimumAxisValue"    # D

    .line 153
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_1_minimumAxisValue:D

    .line 154
    return-void
.end method

.method public setMinorIncrement(D)V
    .locals 0
    .param p1, "field_4_minorIncrement"    # D

    .line 201
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_4_minorIncrement:D

    .line 202
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "field_6_options"    # S

    .line 233
    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 234
    return-void
.end method

.method public setReserved(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 386
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->reserved:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 387
    return-void
.end method

.method public setValuesInReverse(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 350
    sget-object v0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->valuesInReverse:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->field_6_options:S

    .line 351
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[VALUERANGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "    .minimumAxisValue     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getMinimumAxisValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v4, "    .maximumAxisValue     = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getMaximumAxisValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v4, "    .majorIncrement       = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getMajorIncrement()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v4, "    .minorIncrement       = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getMinorIncrement()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v4, "    .categoryAxisCross    = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getCategoryAxisCross()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v4, "    .options              = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getOptions()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v1, "         .automaticMinimum         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isAutomaticMinimum()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    const-string v2, "         .automaticMaximum         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isAutomaticMaximum()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    const-string v2, "         .automaticMajor           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isAutomaticMajor()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    const-string v2, "         .automaticMinor           = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isAutomaticMinor()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    const-string v2, "         .automaticCategoryCrossing     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isAutomaticCategoryCrossing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    const-string v2, "         .logarithmicScale         = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isLogarithmicScale()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    const-string v2, "         .valuesInReverse          = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isValuesInReverse()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    const-string v2, "         .crossCategoryAxisAtMaximum     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isCrossCategoryAxisAtMaximum()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    const-string v2, "         .reserved                 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ValueRangeRecord;->isReserved()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "[/VALUERANGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
