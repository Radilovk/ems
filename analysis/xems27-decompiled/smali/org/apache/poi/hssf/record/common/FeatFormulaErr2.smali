.class public final Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;
.super Ljava/lang/Object;
.source "FeatFormulaErr2.java"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/SharedFeature;


# static fields
.field static checkCalculationErrors:Lorg/apache/poi/util/BitField;

.field static checkDateTimeFormats:Lorg/apache/poi/util/BitField;

.field static checkEmptyCellRef:Lorg/apache/poi/util/BitField;

.field static checkInconsistentFormulas:Lorg/apache/poi/util/BitField;

.field static checkInconsistentRanges:Lorg/apache/poi/util/BitField;

.field static checkNumbersAsText:Lorg/apache/poi/util/BitField;

.field static checkUnprotectedFormulas:Lorg/apache/poi/util/BitField;

.field static performDataValidation:Lorg/apache/poi/util/BitField;


# instance fields
.field private errorCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkCalculationErrors:Lorg/apache/poi/util/BitField;

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkEmptyCellRef:Lorg/apache/poi/util/BitField;

    .line 42
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkNumbersAsText:Lorg/apache/poi/util/BitField;

    .line 44
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkInconsistentRanges:Lorg/apache/poi/util/BitField;

    .line 46
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkInconsistentFormulas:Lorg/apache/poi/util/BitField;

    .line 48
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkDateTimeFormats:Lorg/apache/poi/util/BitField;

    .line 50
    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkUnprotectedFormulas:Lorg/apache/poi/util/BitField;

    .line 52
    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->performDataValidation:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    .line 65
    return-void
.end method


# virtual methods
.method public _getRawErrorCheckValue()I
    .locals 1

    .line 91
    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return v0
.end method

.method public getCheckCalculationErrors()Z
    .locals 2

    .line 95
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkCalculationErrors:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckDateTimeFormats()Z
    .locals 2

    .line 136
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkDateTimeFormats:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckEmptyCellRef()Z
    .locals 2

    .line 103
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkEmptyCellRef:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckInconsistentFormulas()Z
    .locals 2

    .line 127
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkInconsistentFormulas:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckInconsistentRanges()Z
    .locals 2

    .line 119
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkInconsistentRanges:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckNumbersAsText()Z
    .locals 2

    .line 111
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkNumbersAsText:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckUnprotectedFormulas()Z
    .locals 2

    .line 144
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkUnprotectedFormulas:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    .line 87
    const/4 v0, 0x4

    return v0
.end method

.method public getPerformDataValidation()Z
    .locals 2

    .line 152
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->performDataValidation:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 83
    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 84
    return-void
.end method

.method public setCheckCalculationErrors(Z)V
    .locals 2
    .param p1, "checkCalculationErrors"    # Z

    .line 98
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkCalculationErrors:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 100
    return-void
.end method

.method public setCheckDateTimeFormats(Z)V
    .locals 2
    .param p1, "checkDateTimeFormats"    # Z

    .line 139
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkDateTimeFormats:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 141
    return-void
.end method

.method public setCheckEmptyCellRef(Z)V
    .locals 2
    .param p1, "checkEmptyCellRef"    # Z

    .line 106
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkEmptyCellRef:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 108
    return-void
.end method

.method public setCheckInconsistentFormulas(Z)V
    .locals 2
    .param p1, "checkInconsistentFormulas"    # Z

    .line 131
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkInconsistentFormulas:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 133
    return-void
.end method

.method public setCheckInconsistentRanges(Z)V
    .locals 2
    .param p1, "checkInconsistentRanges"    # Z

    .line 122
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkInconsistentRanges:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 124
    return-void
.end method

.method public setCheckNumbersAsText(Z)V
    .locals 2
    .param p1, "checkNumbersAsText"    # Z

    .line 114
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkNumbersAsText:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 116
    return-void
.end method

.method public setCheckUnprotectedFormulas(Z)V
    .locals 2
    .param p1, "checkUnprotectedFormulas"    # Z

    .line 147
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->checkUnprotectedFormulas:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 149
    return-void
.end method

.method public setPerformDataValidation(Z)V
    .locals 2
    .param p1, "performDataValidation"    # Z

    .line 155
    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->performDataValidation:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, " [FEATURE FORMULA ERRORS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "  checkCalculationErrors    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "  checkEmptyCellRef         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "  checkNumbersAsText        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, "  checkInconsistentRanges   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "  checkInconsistentFormulas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, "  checkDateTimeFormats      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "  checkUnprotectedFormulas  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, "  performDataValidation     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " [/FEATURE FORMULA ERRORS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
