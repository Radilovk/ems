.class public final Lorg/apache/poi/hssf/record/SharedFormulaRecord;
.super Lorg/apache/poi/hssf/record/SharedValueRecordBase;
.source "SharedFormulaRecord.java"


# static fields
.field public static final sid:S = 0x4bcs


# instance fields
.field private field_5_reserved:I

.field private field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 58
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    .line 60
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    .line 61
    .local v0, "field_6_expression_len":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    .line 62
    .local v1, "nAvailableBytes":I
    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 63
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V
    .locals 1
    .param p1, "range"    # Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    .line 50
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/SharedValueRecordBase;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 51
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/Ptg;->EMPTY_PTG_ARRAY:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/Formula;->create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 117
    new-instance v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;-><init>(Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;)V

    .line 118
    .local v0, "result":Lorg/apache/poi/hssf/record/SharedFormulaRecord;
    iget v1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    iput v1, v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    .line 119
    iget-object v1, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/Formula;->copy()Lorg/apache/poi/ss/formula/Formula;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    .line 120
    return-object v0
.end method

.method protected getExtraDataSize()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getEncodedSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFormulaTokens(Lorg/apache/poi/hssf/record/FormulaRecord;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4
    .param p1, "formula"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 105
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v0

    .line 106
    .local v0, "formulaRow":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getColumn()S

    move-result v1

    .line 108
    .local v1, "formulaColumn":I
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Lorg/apache/poi/ss/formula/SharedFormula;

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/SharedFormula;-><init>(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 113
    .local v2, "sf":Lorg/apache/poi/ss/formula/SharedFormula;
    iget-object v3, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/SharedFormula;->convertSharedFormulas([Lorg/apache/poi/ss/formula/ptg/Ptg;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    return-object v3

    .line 109
    .end local v2    # "sf":Lorg/apache/poi/ss/formula/SharedFormula;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Shared Formula Conversion: Coding Error"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSid()S
    .locals 1

    .line 98
    const/16 v0, 0x4bc

    return v0
.end method

.method public isFormulaSame(Lorg/apache/poi/hssf/record/SharedFormulaRecord;)Z
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/hssf/record/SharedFormulaRecord;

    .line 123
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    iget-object v1, p1, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/Formula;->isSame(Lorg/apache/poi/ss/formula/Formula;)Z

    move-result v0

    return v0
.end method

.method protected serializeExtraData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 66
    iget v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/Formula;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[SHARED FORMULA ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x4bc

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v1, "    .range      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->getRange()Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/CellRangeAddress8Bit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v2, "    .reserved    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_5_reserved:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SharedFormulaRecord;->field_7_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 87
    .local v2, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 88
    const-string v4, "Formula["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    aget-object v4, v2, v3

    .line 90
    .local v4, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getRVAType()C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .end local v4    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "k":I
    :cond_0
    const-string v1, "[/SHARED FORMULA]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
