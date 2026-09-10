.class public final Lorg/apache/poi/hssf/record/FormulaRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "FormulaRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;
    }
.end annotation


# static fields
.field private static FIXED_SIZE:I = 0x0

.field private static final alwaysCalc:Lorg/apache/poi/util/BitField;

.field private static final calcOnLoad:Lorg/apache/poi/util/BitField;

.field private static final sharedFormula:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x6s


# instance fields
.field private field_4_value:D

.field private field_5_options:S

.field private field_6_zero:I

.field private field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

.field private specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/16 v0, 0xe

    sput v0, Lorg/apache/poi/hssf/record/FormulaRecord;->FIXED_SIZE:I

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    .line 42
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    .line 43
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    .line 188
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6
    .param p1, "ris"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 192
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 193
    move-object v0, p1

    .line 194
    .local v0, "in":Lorg/apache/poi/util/LittleEndianInput;
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readLong()J

    move-result-wide v1

    .line 195
    .local v1, "valueLongBits":J
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v3

    iput-short v3, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 196
    invoke-static {v1, v2}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 197
    if-nez v3, :cond_0

    .line 198
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 201
    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    .line 203
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v3

    .line 204
    .local v3, "field_7_expression_len":I
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->available()I

    move-result v4

    .line 205
    .local v4, "nBytesAvailable":I
    invoke-static {v3, v0, v4}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 206
    return-void
.end method


# virtual methods
.method protected appendValueText(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 354
    const-string v0, "  .value\t = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    const-string v1, "\n"

    if-nez v0, :cond_0

    .line 356
    iget-wide v2, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->formatDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_0
    const-string v0, "  .options   = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v0, "    .alwaysCalc= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isAlwaysCalc()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v0, "    .calcOnLoad= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isCalcOnLoad()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v0, "    .shared    = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->isSharedFormula()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v0, "  .zero      = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 367
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 368
    if-lez v2, :cond_1

    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    const-string v3, "    Ptg["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    aget-object v3, v0, v2

    .line 373
    .local v3, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    .end local v3    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    .end local v2    # "k":I
    :cond_2
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 379
    new-instance v0, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>()V

    .line 380
    .local v0, "rec":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/FormulaRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    .line 381
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 382
    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 383
    iget v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    iput v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    .line 384
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 385
    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 386
    return-object v0
.end method

.method public getCachedBooleanValue()Z
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getCachedErrorValue()I
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getCachedResultType()I
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getValueType()I

    move-result v0

    return v0
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getOptions()S
    .locals 1

    .line 281
    iget-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    return v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method protected getRecordName()Ljava/lang/String;
    .locals 1

    .line 349
    const-string v0, "FORMULA"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 325
    const/4 v0, 0x6

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    return-wide v0
.end method

.method protected getValueDataSize()I
    .locals 2

    .line 330
    sget v0, Lorg/apache/poi/hssf/record/FormulaRecord;->FIXED_SIZE:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasCachedResultString()Z
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    return v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getTypeCode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isAlwaysCalc()Z
    .locals 2

    .line 293
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isCalcOnLoad()Z
    .locals 2

    .line 301
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isSharedFormula()Z
    .locals 2

    .line 285
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method protected serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 335
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v0, :cond_0

    .line 336
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 341
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 343
    iget v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_6_zero:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 344
    iget-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 345
    return-void
.end method

.method public setAlwaysCalc(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 296
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->alwaysCalc:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 298
    return-void
.end method

.method public setCachedResultBoolean(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 228
    invoke-static {p1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createCachedBoolean(Z)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 229
    return-void
.end method

.method public setCachedResultErrorCode(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 225
    invoke-static {p1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createCachedErrorCode(I)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 226
    return-void
.end method

.method public setCachedResultTypeEmptyString()V
    .locals 1

    .line 219
    invoke-static {}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createCachedEmptyValue()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 220
    return-void
.end method

.method public setCachedResultTypeString()V
    .locals 1

    .line 222
    invoke-static {}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->createForString()Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 223
    return-void
.end method

.method public setCalcOnLoad(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 304
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->calcOnLoad:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 306
    return-void
.end method

.method public setOptions(S)V
    .locals 0
    .param p1, "options"    # S

    .line 263
    iput-short p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 264
    return-void
.end method

.method public setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 320
    invoke-static {p1}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_8_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 321
    return-void
.end method

.method public setSharedFormula(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 288
    sget-object v0, Lorg/apache/poi/hssf/record/FormulaRecord;->sharedFormula:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_5_options:S

    .line 290
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .param p1, "value"    # D

    .line 214
    iput-wide p1, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->field_4_value:D

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/FormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    .line 216
    return-void
.end method
