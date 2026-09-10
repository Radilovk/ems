.class public final Lorg/apache/poi/ss/formula/FormulaParser;
.super Ljava/lang/Object;
.source "FormulaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    }
.end annotation


# static fields
.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final CR:C = '\r'

.field private static final LF:C = '\n'

.field private static final TAB:C = '\t'


# instance fields
.field private _book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

.field private final _formulaLength:I

.field private final _formulaString:Ljava/lang/String;

.field private _pointer:I

.field private _rootNode:Lorg/apache/poi/ss/formula/ParseNode;

.field private _sheetIndex:I

.field private _ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

.field private look:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 639
    const-string v0, "(\\$?[A-Za-z]+)?(\\$?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;I)V
    .locals 1
    .param p1, "formula"    # Ljava/lang/String;
    .param p2, "book"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p3, "sheetIndex"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 124
    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 125
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 126
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    .line 127
    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    .line 128
    return-void
.end method

.method private Arguments()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .line 1036
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1037
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ParseNode;>;"
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1038
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 1039
    sget-object v1, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object v1

    .line 1042
    :cond_0
    const/4 v1, 0x1

    .line 1044
    .local v1, "missedPrevArg":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1045
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1046
    if-eqz v1, :cond_1

    .line 1047
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_1
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v3, v2, :cond_2

    .line 1050
    nop

    .line 1063
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/ss/formula/ParseNode;

    .line 1064
    .local v2, "result":[Lorg/apache/poi/ss/formula/ParseNode;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1065
    return-object v2

    .line 1052
    .end local v2    # "result":[Lorg/apache/poi/ss/formula/ParseNode;
    :cond_2
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1053
    const/4 v1, 0x1

    .line 1054
    goto :goto_0

    .line 1056
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const/4 v1, 0x0

    .line 1058
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1059
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1060
    :cond_4
    const-string v2, "\',\' or \')\'"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private GetChar()V
    .locals 2

    .line 152
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt v0, v1, :cond_1

    .line 155
    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    goto :goto_0

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    .line 162
    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 164
    return-void

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "too far"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private GetNum()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v0, "value":Ljava/lang/StringBuffer;
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 231
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private static IsAlpha(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 193
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static IsDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 198
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private static IsWhite(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 203
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private Match(C)V
    .locals 2
    .param p1, "x"    # C

    .line 219
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v0, p1, :cond_0

    .line 222
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 223
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private SkipWhite()V
    .locals 1

    .line 208
    :goto_0
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method private Term()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1430
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1432
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1434
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2f

    .local v1, "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eq v2, v3, :cond_0

    .line 1444
    return-object v0

    .line 1440
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1441
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1442
    goto :goto_1

    .line 1436
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1437
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1438
    .restart local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    nop

    .line 1446
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1447
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1448
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1530
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1532
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1534
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    .local v1, "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eq v2, v3, :cond_0

    .line 1544
    return-object v0

    .line 1540
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1541
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1542
    goto :goto_1

    .line 1536
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1537
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1538
    .restart local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    nop

    .line 1546
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1547
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1548
    .end local v1    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v2    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private static augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2
    .param p0, "root"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 263
    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    .local v0, "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 266
    .end local v0    # "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(I)V

    .line 268
    .restart local v0    # "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1
.end method

.method private checkRowLengths([[Ljava/lang/Object;I)V
    .locals 5
    .param p1, "values2d"    # [[Ljava/lang/Object;
    .param p2, "nColumns"    # I

    .line 1183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1184
    aget-object v1, p1, v0

    array-length v1, v1

    .line 1185
    .local v1, "rowLen":I
    if-ne v1, p2, :cond_0

    .line 1183
    .end local v1    # "rowLen":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1186
    .restart local v1    # "rowLen":I
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " but row 0 has length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1190
    .end local v0    # "i":I
    .end local v1    # "rowLen":I
    :cond_1
    return-void
.end method

.method private static checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V
    .locals 3
    .param p0, "sideName"    # Ljava/lang/String;
    .param p1, "currentParsePosition"    # I
    .param p2, "pn"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 311
    invoke-static {p2}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-void

    .line 312
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of the range operator \':\' at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a proper reference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1471
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1473
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1474
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    packed-switch v1, :pswitch_data_0

    .line 1483
    return-object v0

    .line 1478
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 1479
    .local v1, "comparisonToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1480
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1481
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private concatExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1514
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1516
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1517
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 1518
    nop

    .line 1524
    return-object v0

    .line 1520
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1521
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1522
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    .line 1523
    .end local v1    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private static convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;
    .locals 3
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "isPositive"    # Z

    .line 1246
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_0

    .line 1247
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v0

    int-to-double v0, v0

    .local v0, "value":D
    goto :goto_0

    .line 1248
    .end local v0    # "value":D
    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_2

    .line 1249
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    .line 1253
    .restart local v0    # "value":D
    :goto_0
    if-nez p1, :cond_1

    .line 1254
    neg-double v0, v0

    .line 1256
    :cond_1
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 1251
    .end local v0    # "value":D
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ptg ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "part1"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .param p1, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 621
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->getWholeRow(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    return-object v0

    .line 628
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->getWholeColumn(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    return-object v0

    .line 631
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V

    return-object v0

    .line 622
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has incompatible parts: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2
    .param p1, "sheetIden"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "part1"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .param p3, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .line 601
    if-nez p3, :cond_1

    .line 602
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v0

    .line 603
    .local v0, "cr":Lorg/apache/poi/ss/util/CellReference;
    if-nez p1, :cond_0

    .line 604
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .local v1, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 606
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v1, v0, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 608
    .end local v0    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    goto :goto_1

    .line 609
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 611
    .local v0, "areaRef":Lorg/apache/poi/ss/util/AreaReference;
    if-nez p1, :cond_2

    .line 612
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_1

    .line 614
    .end local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v1, v0, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 617
    .end local v0    # "areaRef":Lorg/apache/poi/ss/util/AreaReference;
    .restart local v1    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_1
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0
.end method

.method private expected(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 180
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified formula \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' starts with an equals sign which is not allowed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error near char "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in specified formula \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'. Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .restart local v0    # "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "nameToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isBuiltInFunctionName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 919
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v1, :cond_3

    .line 923
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v1, p1, v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 924
    .local v1, "hName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-nez v1, :cond_1

    .line 925
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_0

    goto :goto_0

    .line 927
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is completely unknown in the current workbook"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 931
    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 938
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to use name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' as a function, but defined name in workbook does not refer to a function"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 921
    .end local v1    # "hName":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need book to evaluate name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_4
    :goto_0
    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 943
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Arguments()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 944
    .local v1, "args":[Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 946
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2
.end method

.method private getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    .line 1488
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 1489
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1490
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    .line 1492
    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1493
    .local v0, "isGreater":Z
    :goto_0
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1494
    if-eqz v0, :cond_3

    .line 1495
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v2, v1, :cond_2

    .line 1496
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1497
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v1

    .line 1499
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v1

    .line 1501
    :cond_3
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v3, v1, :cond_5

    if-eq v3, v2, :cond_4

    .line 1509
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v1

    .line 1506
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1507
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v1

    .line 1503
    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1504
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v1
.end method

.method private getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p3, "args"    # [Lorg/apache/poi/ss/formula/ParseNode;

    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    .line 959
    .local v0, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    array-length v1, p3

    .line 960
    .local v1, "numArgs":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 961
    if-eqz p2, :cond_0

    .line 965
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lorg/apache/poi/ss/formula/ParseNode;

    .line 966
    .local v3, "allArgs":[Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v4, p2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 967
    invoke-static {p3, v5, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    add-int/lit8 v4, v1, 0x1

    invoke-static {p1, v4}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v2

    .line 962
    .end local v3    # "allArgs":[Lorg/apache/poi/ss/formula/ParseNode;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NamePtg must be supplied for external functions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 971
    :cond_1
    if-nez p2, :cond_4

    .line 974
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v3

    xor-int/2addr v3, v2

    .line 975
    .local v3, "isVarArgs":Z
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v4

    .line 976
    .local v4, "funcIx":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    array-length v5, p3

    if-ne v5, v2, :cond_2

    .line 979
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v5

    invoke-direct {v2, v5, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v2

    .line 982
    :cond_2
    array-length v2, p3

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V

    .line 985
    if-eqz v3, :cond_3

    .line 986
    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v2

    .local v2, "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    goto :goto_0

    .line 988
    .end local v2    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :cond_3
    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object v2

    .line 990
    .restart local v2    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :goto_0
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v5, v2, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v5

    .line 972
    .end local v2    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v3    # "isVarArgs":Z
    .end local v4    # "funcIx":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NamePtg no applicable to internal functions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 5
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "exponent"    # Ljava/lang/String;

    .line 1372
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1374
    .local v0, "number":Ljava/lang/StringBuffer;
    const/16 v1, 0x45

    if-nez p1, :cond_2

    .line 1375
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    if-eqz p2, :cond_0

    .line 1378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1379
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1382
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "numberStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1388
    .local v2, "intVal":I
    nop

    .line 1389
    invoke-static {v2}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1390
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    return-object v3

    .line 1392
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v3, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 1386
    .end local v2    # "intVal":I
    :catch_0
    move-exception v2

    const/4 v3, 0x0

    .line 1387
    .local v2, "e":Ljava/lang/NumberFormatException;
    .local v3, "intVal":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v4, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 1395
    .end local v1    # "numberStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "intVal":I
    :cond_2
    if-eqz p0, :cond_3

    .line 1396
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    :cond_3
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1400
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1402
    if-eqz p2, :cond_4

    .line 1403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1404
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1407
    :cond_4
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getRPNPtg(I)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "formulaType"    # I

    .line 1582
    new-instance v0, Lorg/apache/poi/ss/formula/OperandClassTransformer;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;-><init>(I)V

    .line 1584
    .local v0, "oct":Lorg/apache/poi/ss/formula/OperandClassTransformer;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 1585
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ParseNode;->toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method private static isArgumentDelimiter(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 1030
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isUnquotedSheetNameChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 865
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 866
    return v1

    .line 868
    :cond_0
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    .line 873
    const/4 v0, 0x0

    return v0

    .line 871
    :cond_1
    return v1
.end method

.method private isValidCellReference(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 883
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 892
    .local v1, "isFunc":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 893
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 894
    .local v4, "savePointer":I
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 895
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 898
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x28

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v0, v2

    .line 899
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 902
    .end local v1    # "isFunc":Z
    .end local v4    # "savePointer":I
    :cond_3
    return v0
.end method

.method private static isValidDefinedNameChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    .line 579
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 580
    return v1

    .line 582
    :cond_0
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    .line 589
    const/4 v0, 0x0

    return v0

    .line 587
    :cond_1
    return v1
.end method

.method private static isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 5
    .param p0, "a"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 323
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 325
    .local v0, "tkn":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 327
    return v2

    .line 331
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 332
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 333
    .local v1, "afp":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v4

    .line 334
    .local v4, "returnClass":B
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 336
    .end local v1    # "afp":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v4    # "returnClass":B
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-eqz v1, :cond_3

    .line 337
    return v3

    .line 339
    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v1, :cond_4

    .line 340
    return v2

    .line 344
    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v1, :cond_5

    .line 346
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v1

    return v1

    .line 350
    :cond_5
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-ne v0, v1, :cond_6

    .line 351
    return v2

    .line 355
    :cond_6
    return v3
.end method

.method private static needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 8
    .param p0, "root"    # Lorg/apache/poi/ss/formula/ParseNode;

    .line 277
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 278
    .local v0, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 279
    return v2

    .line 281
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    if-eqz v1, :cond_1

    .line 282
    return v2

    .line 284
    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v1, :cond_2

    goto :goto_2

    .line 288
    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 297
    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v1, :cond_4

    .line 298
    return v3

    .line 300
    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v1, :cond_5

    .line 301
    return v2

    .line 304
    :cond_5
    return v3

    .line 290
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/poi/ss/formula/ParseNode;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_8

    aget-object v6, v1, v5

    .line 291
    .local v6, "child":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 292
    return v2

    .line 290
    .end local v6    # "child":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 295
    .end local v1    # "arr$":[Lorg/apache/poi/ss/formula/ParseNode;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_8
    return v3

    .line 285
    :cond_9
    :goto_2
    return v2
.end method

.method private parse()V
    .locals 3

    .line 1570
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 1571
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1572
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    .line 1574
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-le v0, v1, :cond_0

    .line 1579
    return-void

    .line 1575
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unused input ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] after attempting to parse the formula ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p2, "formulaType"    # I
    .param p3, "sheetIndex"    # I

    .line 144
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-direct {v0, p0, p1, p3}, Lorg/apache/poi/ss/formula/FormulaParser;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;I)V

    .line 145
    .local v0, "fp":Lorg/apache/poi/ss/formula/FormulaParser;
    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse()V

    .line 146
    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->getRPNPtg(I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method private parseArray()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    .line 1162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v0, "rowsData":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayRow()[Ljava/lang/Object;

    move-result-object v1

    .line 1165
    .local v1, "singleRowData":[Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_0

    .line 1167
    nop

    .line 1174
    .end local v1    # "singleRowData":[Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1175
    .local v1, "nRows":I
    new-array v2, v1, [[Ljava/lang/Object;

    .line 1176
    .local v2, "values2d":[[Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1177
    const/4 v3, 0x0

    aget-object v3, v2, v3

    array-length v3, v3

    .line 1178
    .local v3, "nColumns":I
    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->checkRowLengths([[Ljava/lang/Object;I)V

    .line 1180
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v5, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v5, v2}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>([[Ljava/lang/Object;)V

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v4

    .line 1169
    .end local v2    # "values2d":[[Ljava/lang/Object;
    .end local v3    # "nColumns":I
    .local v1, "singleRowData":[Ljava/lang/Object;
    :cond_0
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 1172
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1173
    .end local v1    # "singleRowData":[Ljava/lang/Object;
    goto :goto_0

    .line 1170
    .restart local v1    # "singleRowData":[Ljava/lang/Object;
    :cond_1
    const-string v2, "\'}\' or \';\'"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private parseArrayItem()Ljava/lang/Object;
    .locals 2

    .line 1217
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1218
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 1230
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1223
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseBooleanLiteral()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1225
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1226
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1227
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1220
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object v0

    return-object v0

    .line 1219
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseArrayRow()[Ljava/lang/Object;
    .locals 3

    .line 1193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayItem()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1197
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1205
    :cond_0
    const-string v1, "\'}\' or \',\'"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1200
    :cond_1
    :goto_1
    nop

    .line 1211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1212
    .local v1, "result":[Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1213
    return-object v1

    .line 1202
    .end local v1    # "result":[Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1203
    goto :goto_0
.end method

.method private parseAsName()Ljava/lang/String;
    .locals 3

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    const-string v1, "number, string, or defined name"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 565
    :cond_1
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidDefinedNameChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 569
    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseBooleanLiteral()Ljava/lang/Boolean;
    .locals 2

    .line 1234
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "iden":Ljava/lang/String;
    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 1238
    :cond_0
    const-string v1, "FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 1241
    :cond_1
    const-string v1, "\'TRUE\' or \'FALSE\'"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private parseErrorLiteral()I
    .locals 6

    .line 1296
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1297
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "part1":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 1302
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x44

    const/16 v4, 0x2f

    const/16 v5, 0x21

    if-eq v2, v3, :cond_b

    const/16 v3, 0x4e

    if-eq v2, v3, :cond_4

    const/16 v1, 0x52

    if-eq v2, v1, :cond_2

    const/16 v1, 0x56

    if-ne v2, v1, :cond_1

    .line 1304
    const-string v1, "VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1306
    const/16 v1, 0xf

    return v1

    .line 1308
    :cond_0
    const-string v1, "#VALUE!"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1348
    :cond_1
    const-string v1, "#VALUE!, #REF!, #DIV/0!, #NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1310
    :cond_2
    const-string v1, "REF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1311
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1312
    const/16 v1, 0x17

    return v1

    .line 1314
    :cond_3
    const-string v1, "#REF!"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1324
    :cond_4
    const-string v2, "NAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1325
    const/16 v1, 0x3f

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1326
    const/16 v1, 0x1d

    return v1

    .line 1328
    :cond_5
    const-string v2, "NUM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1329
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1330
    const/16 v1, 0x24

    return v1

    .line 1332
    :cond_6
    const-string v2, "NULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1333
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1334
    return v1

    .line 1336
    :cond_7
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1337
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1338
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x41

    if-eq v1, v2, :cond_9

    const/16 v2, 0x61

    if-ne v1, v2, :cond_8

    goto :goto_0

    .line 1339
    :cond_8
    const-string v1, "#N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1341
    :cond_9
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1343
    const/16 v1, 0x2a

    return v1

    .line 1345
    :cond_a
    const-string v1, "#NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1316
    :cond_b
    const-string v1, "DIV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1317
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1318
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1319
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1320
    const/4 v1, 0x7

    return v1

    .line 1322
    :cond_c
    const-string v1, "#DIV/0!"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1299
    :cond_d
    const-string v1, "remainder of error constant literal"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5
    .param p1, "savePointer"    # I

    .line 522
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 524
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 527
    :cond_0
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 528
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 533
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "name":Ljava/lang/String;
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 536
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    return-object v1

    .line 538
    :cond_2
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "FALSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 541
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v1, :cond_6

    .line 545
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v1, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 546
    .local v1, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-eqz v1, :cond_5

    .line 550
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 551
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2

    .line 554
    :cond_4
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is not a range as expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified named range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' does not exist in the current workbook."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    .end local v1    # "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need book to evaluate name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_7
    :goto_0
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2
.end method

.method private parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 7

    .line 1260
    const/4 v0, 0x0

    .line 1261
    .local v0, "number2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1262
    .local v1, "exponent":Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "number1":Ljava/lang/String;
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 1265
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1266
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v0

    .line 1269
    :cond_0
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v4, 0x45

    const-string v5, "Integer"

    if-ne v3, v4, :cond_4

    .line 1270
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1272
    const-string v3, ""

    .line 1273
    .local v3, "sign":Ljava/lang/String;
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x2b

    if-ne v4, v6, :cond_1

    .line 1274
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 1275
    :cond_1
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_2

    .line 1276
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1277
    const-string v3, "-"

    .line 1280
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v4

    .line 1281
    .local v4, "number":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1282
    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1287
    .end local v3    # "sign":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    :cond_4
    :goto_1
    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1288
    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1291
    :cond_6
    :goto_2
    invoke-static {v2, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    return-object v3
.end method

.method private parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 7

    .line 237
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 238
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 239
    .local v1, "hasRange":Z
    :goto_0
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 240
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 241
    .local v2, "pos":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 242
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    .line 248
    .local v3, "nextPart":Lorg/apache/poi/ss/formula/ParseNode;
    const-string v4, "LHS"

    invoke-static {v4, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    .line 249
    const-string v4, "RHS"

    invoke-static {v4, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    .line 251
    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 252
    .local v4, "children":[Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v6, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v5, v6, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v5

    .line 253
    const/4 v1, 0x1

    .line 254
    .end local v2    # "pos":I
    .end local v3    # "nextPart":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v4    # "children":[Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0

    .line 255
    :cond_0
    if-eqz v1, :cond_1

    .line 256
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2

    .line 258
    :cond_1
    return-object v0
.end method

.method private parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 12

    .line 385
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 386
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 387
    .local v0, "savePointer":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v1

    .line 389
    .local v1, "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    if-nez v1, :cond_0

    .line 390
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 393
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 396
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v2

    .line 397
    .local v2, "part1":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    const-string v3, "."

    if-nez v2, :cond_5

    .line 398
    if-eqz v1, :cond_4

    .line 399
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1

    .line 400
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v3

    .line 403
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 408
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v3, v4, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 409
    .local v3, "nameXPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-eqz v3, :cond_2

    .line 413
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v5

    .line 410
    :cond_2
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Specified name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' for sheet "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 405
    .end local v3    # "nameXPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_3
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cell reference or Named Range expected after sheet name at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 418
    :cond_5
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(C)Z

    move-result v4

    .line 419
    .local v4, "whiteAfterPart1":Z
    if-eqz v4, :cond_6

    .line 420
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 423
    :cond_6
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_b

    .line 424
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 425
    .local v3, "colonPos":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 426
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 427
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v5

    .line 428
    .local v5, "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    if-eqz v5, :cond_7

    invoke-virtual {v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 432
    const/4 v5, 0x0

    .line 434
    :cond_7
    if-nez v5, :cond_a

    .line 437
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 438
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v6

    if-nez v6, :cond_9

    .line 440
    if-nez v1, :cond_8

    .line 441
    const-string v6, ""

    .local v6, "prefix":Ljava/lang/String;
    goto :goto_1

    .line 443
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x21

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 445
    .restart local v6    # "prefix":Ljava/lang/String;
    :goto_1
    new-instance v7, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is not a proper reference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 447
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v1, v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v6

    return-object v6

    .line 449
    :cond_a
    invoke-direct {p0, v1, v2, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v6

    return-object v6

    .line 452
    .end local v3    # "colonPos":I
    .end local v5    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    :cond_b
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_16

    .line 453
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 454
    const/4 v5, 0x1

    .line 455
    .local v5, "dotCount":I
    :goto_2
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v7, v6, :cond_c

    .line 456
    add-int/lit8 v5, v5, 0x1

    .line 457
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_2

    .line 459
    :cond_c
    invoke-static {v7}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(C)Z

    move-result v6

    .line 461
    .local v6, "whiteBeforePart2":Z
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 462
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v7

    .line 463
    .local v7, "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    add-int/lit8 v9, v0, -0x1

    iget v10, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 464
    .local v8, "part1And2":Ljava/lang/String;
    if-nez v7, :cond_e

    .line 465
    if-nez v1, :cond_d

    .line 469
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 466
    :cond_d
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Complete area reference expected after sheet name at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 473
    :cond_e
    const-string v3, "Dotted range (full row or column) expression \'"

    if-nez v4, :cond_14

    if-eqz v6, :cond_f

    goto :goto_3

    .line 483
    :cond_f
    if-ne v5, v11, :cond_10

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 485
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 488
    :cond_10
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 489
    :cond_11
    const/4 v9, 0x2

    if-ne v5, v9, :cond_13

    .line 494
    :cond_12
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 490
    :cond_13
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' must have exactly 2 dots."

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 474
    :cond_14
    :goto_3
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v9

    if-nez v9, :cond_15

    .line 480
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 477
    :cond_15
    new-instance v9, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' must not contain whitespace."

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 496
    .end local v5    # "dotCount":I
    .end local v6    # "whiteBeforePart2":Z
    .end local v7    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .end local v8    # "part1And2":Ljava/lang/String;
    :cond_16
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 497
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 499
    :cond_17
    if-nez v1, :cond_18

    .line 504
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3

    .line 500
    :cond_18
    new-instance v5, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second part of cell reference expected after sheet name at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 10

    .line 778
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 781
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 786
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "bookName":Ljava/lang/String;
    goto :goto_1

    .line 788
    .end local v0    # "bookName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 791
    .restart local v0    # "bookName":Ljava/lang/String;
    :goto_1
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x3a

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x27

    if-ne v1, v6, :cond_8

    .line 792
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 794
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 795
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/4 v8, 0x1

    if-ne v7, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 796
    .local v7, "done":Z
    :cond_3
    :goto_2
    if-nez v7, :cond_5

    .line 797
    iget-char v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 798
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 799
    iget-char v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v9, v6, :cond_3

    .line 801
    invoke-direct {p0, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 802
    iget-char v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v9, v6, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    move v7, v9

    goto :goto_2

    .line 806
    :cond_5
    new-instance v4, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v8}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    .line 808
    .local v4, "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 809
    iget-char v6, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v6, v3, :cond_6

    .line 810
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 811
    new-instance v2, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v2

    .line 814
    :cond_6
    if-ne v6, v2, :cond_7

    .line 815
    invoke-direct {p0, v0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v2

    return-object v2

    .line 817
    :cond_7
    return-object v5

    .line 821
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    .end local v7    # "done":Z
    :cond_8
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_b

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 840
    :cond_9
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v1, v3, :cond_a

    if-eqz v0, :cond_a

    .line 842
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 843
    new-instance v1, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v1, v0, v5}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    .line 845
    :cond_a
    return-object v5

    .line 822
    :cond_b
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_5
    iget-char v6, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v6}, Lorg/apache/poi/ss/formula/FormulaParser;->isUnquotedSheetNameChar(C)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 825
    iget-char v6, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_5

    .line 828
    :cond_c
    new-instance v6, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    move-object v4, v6

    .line 829
    .restart local v4    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 830
    iget-char v6, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v6, v3, :cond_d

    .line 831
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 832
    new-instance v2, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v2

    .line 835
    :cond_d
    if-ne v6, v2, :cond_e

    .line 836
    invoke-direct {p0, v0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v2

    return-object v2

    .line 838
    :cond_e
    return-object v5
.end method

.method private parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 3
    .param p1, "bookname"    # Ljava/lang/String;
    .param p2, "sheet1Name"    # Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 853
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 854
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v0

    .line 855
    .local v0, "sheet2":Lorg/apache/poi/ss/formula/SheetIdentifier;
    if-eqz v0, :cond_0

    .line 856
    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    .line 858
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1099
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1100
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    .line 1122
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsAlpha(C)Z

    move-result v0

    if-nez v0, :cond_2

    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1125
    :cond_0
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 1126
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 1128
    :cond_1
    const-string v0, "cell ref or constant literal"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1123
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    .line 1100
    :cond_3
    move-object v0, v2

    .line 1117
    .local v0, "inside":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1118
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArray()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1119
    .local v1, "arrayNode":Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v2, 0x7d

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1120
    return-object v1

    .line 1104
    .end local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v1    # "arrayNode":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    .line 1110
    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1111
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1112
    .restart local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1113
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1

    .line 1102
    .end local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_7
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    .line 1100
    :cond_8
    move-object v0, v2

    .line 1115
    .restart local v0    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1
.end method

.method private parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .locals 9

    .line 647
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 648
    .local v0, "ptr":I
    const/4 v2, 0x0

    .line 649
    .local v2, "hasDigits":Z
    const/4 v3, 0x0

    .line 650
    .local v3, "hasLetters":Z
    :goto_0
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-ge v0, v4, :cond_3

    .line 651
    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 652
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 653
    const/4 v2, 0x1

    goto :goto_1

    .line 654
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 655
    const/4 v3, 0x1

    goto :goto_1

    .line 656
    :cond_1
    const/16 v5, 0x24

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_3

    .line 661
    :cond_2
    :goto_1
    nop

    .end local v4    # "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 662
    goto :goto_0

    .line 663
    :cond_3
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    if-gt v0, v5, :cond_4

    .line 664
    return-object v6

    .line 666
    :cond_4
    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "rep":Ljava/lang/String;
    sget-object v5, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_5

    .line 668
    return-object v6

    .line 671
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 672
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 673
    return-object v6

    .line 675
    :cond_6
    const-string v5, ""

    const-string v7, "$"

    if-eqz v3, :cond_7

    .line 676
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v1, v5}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 677
    return-object v6

    .line 679
    :cond_7
    if-eqz v2, :cond_b

    .line 682
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .local v5, "i":I
    nop

    .line 686
    if-lt v5, v1, :cond_a

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v1

    if-le v5, v1, :cond_8

    goto :goto_2

    .line 689
    .end local v5    # "i":I
    :cond_8
    nop

    .line 695
    :cond_9
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 696
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    invoke-direct {v1, v4, v3, v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;-><init>(Ljava/lang/String;ZZ)V

    return-object v1

    .line 687
    .restart local v5    # "i":I
    :cond_a
    :goto_2
    return-object v6

    .line 683
    .end local v5    # "i":I
    :catch_0
    move-exception v1

    move v5, v8

    .line 684
    .local v1, "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "i":I
    return-object v6

    .line 691
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "i":I
    :cond_b
    return-object v6
.end method

.method private parseStringLiteral()Ljava/lang/String;
    .locals 3

    .line 1412
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1414
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1416
    .local v1, "token":Ljava/lang/StringBuffer;
    :goto_0
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v2, v0, :cond_0

    .line 1417
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1418
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v2, v0, :cond_0

    .line 1419
    nop

    .line 1425
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1422
    :cond_0
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1423
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0
.end method

.method private parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 7
    .param p1, "isPlus"    # Z

    .line 1134
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1135
    .local v0, "numberFollows":Z
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1137
    .local v1, "factor":Lorg/apache/poi/ss/formula/ParseNode;
    if-eqz v0, :cond_5

    .line 1140
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 1141
    .local v2, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v3, :cond_3

    .line 1142
    if-eqz p1, :cond_2

    .line 1143
    return-object v1

    .line 1145
    :cond_2
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v4

    neg-double v4, v4

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    move-object v2, v3

    .line 1146
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v3

    .line 1148
    :cond_3
    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v3, :cond_5

    .line 1149
    if-eqz p1, :cond_4

    .line 1150
    return-object v1

    .line 1152
    :cond_4
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v3

    .line 1154
    .local v3, "intVal":I
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    neg-int v5, v3

    int-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    move-object v2, v4

    .line 1155
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v4, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v4

    .line 1158
    .end local v2    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v3    # "intVal":I
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    if-eqz p1, :cond_6

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_2

    :cond_6
    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    :goto_2
    invoke-direct {v2, v3, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v2
.end method

.method private parseUnquotedIdentifier()Ljava/lang/String;
    .locals 3

    .line 1352
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1360
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 1361
    const/4 v1, 0x0

    return-object v1

    .line 1364
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1357
    :cond_2
    :goto_1
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1358
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 1353
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v0, "unquoted identifier"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private percentFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    .line 1083
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1085
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1086
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    .line 1087
    return-object v0

    .line 1089
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1090
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private powerFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .line 1070
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1072
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1073
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    .line 1074
    return-object v0

    .line 1076
    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1077
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1078
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    .line 1079
    .end local v1    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private resetPointer(I)V
    .locals 2
    .param p1, "ptr"    # I

    .line 166
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 167
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    goto :goto_0

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    .line 174
    :goto_0
    return-void
.end method

.method private unionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .line 1451
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1452
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 1454
    .local v1, "hasUnions":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1455
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    .line 1463
    if-eqz v1, :cond_0

    .line 1464
    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    return-object v2

    .line 1466
    :cond_0
    return-object v0

    .line 1457
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1458
    const/4 v1, 0x1

    .line 1459
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1460
    .local v2, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v3, v4, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    .line 1461
    goto :goto_0
.end method

.method private validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V
    .locals 8
    .param p1, "numArgs"    # I
    .param p2, "fm"    # Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 994
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v0

    const-string v1, "."

    const-string v2, " but got "

    const-string v3, "Expected "

    const-string v4, " were expected"

    const-string v5, "\'. "

    if-ge p1, v0, :cond_1

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too few arguments to function \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 999
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "At least "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1001
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1006
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasUnlimitedVarags()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1007
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v0, :cond_2

    .line 1008
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    move-result v0

    .local v0, "maxArgs":I
    goto :goto_1

    .line 1011
    .end local v0    # "maxArgs":I
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    move-result v0

    .restart local v0    # "maxArgs":I
    goto :goto_1

    .line 1014
    .end local v0    # "maxArgs":I
    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    move-result v0

    .line 1017
    .restart local v0    # "maxArgs":I
    :goto_1
    if-le p1, v0, :cond_5

    .line 1018
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many arguments to function \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1019
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v5    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    goto :goto_2

    .line 1022
    .end local v3    # "msg":Ljava/lang/String;
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "At most "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    .end local v5    # "msg":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .end local v3    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1027
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    return-void
.end method
