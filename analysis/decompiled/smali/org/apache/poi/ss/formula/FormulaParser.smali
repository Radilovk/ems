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

    .prologue
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

    .prologue
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

    .line 125
    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v0

    goto :goto_0
.end method

.method private Arguments()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    .prologue
    const/16 v5, 0x29

    .line 1036
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1037
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/formula/ParseNode;>;"
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1038
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v3, v5, :cond_0

    .line 1039
    sget-object v1, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    .line 1065
    :goto_0
    return-object v1

    .line 1042
    :cond_0
    const/4 v0, 0x1

    .line 1044
    .local v0, "missedPrevArg":Z
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1045
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1046
    if-eqz v0, :cond_2

    .line 1047
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_2
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v3, v5, :cond_3

    .line 1063
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Lorg/apache/poi/ss/formula/ParseNode;

    .line 1064
    .local v1, "result":[Lorg/apache/poi/ss/formula/ParseNode;
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 1052
    .end local v1    # "result":[Lorg/apache/poi/ss/formula/ParseNode;
    :cond_3
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1053
    const/4 v0, 0x1

    .line 1054
    goto :goto_1

    .line 1056
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    const/4 v0, 0x0

    .line 1058
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1059
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1060
    const-string v3, "\',\' or \')\'"

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private GetChar()V
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-le v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "too far"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-ge v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    .line 162
    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 164
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    goto :goto_0
.end method

.method private GetNum()Ljava/lang/String;
    .locals 2

    .prologue
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

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static IsAlpha(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 193
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static IsDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 198
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private static IsWhite(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 203
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Match(C)V
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 219
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v0, p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 222
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 223
    return-void
.end method

.method private SkipWhite()V
    .locals 1

    .prologue
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
    .locals 5

    .prologue
    .line 1430
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1432
    .local v2, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1434
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    sparse-switch v4, :sswitch_data_0

    .line 1444
    return-object v2

    .line 1436
    :sswitch_0
    const/16 v4, 0x2a

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1437
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1446
    .local v0, "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1447
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v3, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v2, v3

    .line 1448
    .end local v3    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0

    .line 1440
    .end local v0    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v1    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    :sswitch_1
    const/16 v4, 0x2f

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1441
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1442
    .restart local v0    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_1

    .line 1434
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method private additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .prologue
    .line 1530
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1532
    .local v2, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1534
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    packed-switch v4, :pswitch_data_0

    .line 1544
    :pswitch_0
    return-object v2

    .line 1536
    :pswitch_1
    const/16 v4, 0x2b

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1537
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1546
    .local v0, "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1547
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v3, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v2, v3

    .line 1548
    .end local v3    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0

    .line 1540
    .end local v0    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .end local v1    # "other":Lorg/apache/poi/ss/formula/ParseNode;
    :pswitch_2
    const/16 v4, 0x2d

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1541
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1542
    .restart local v0    # "operator":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_1

    .line 1534
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2
    .param p0, "root"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 263
    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    .line 268
    .local v0, "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1

    .line 266
    .end local v0    # "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(I)V

    .restart local v0    # "memPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0
.end method

.method private checkRowLengths([[Ljava/lang/Object;I)V
    .locals 5
    .param p1, "values2d"    # [[Ljava/lang/Object;
    .param p2, "nColumns"    # I

    .prologue
    .line 1183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1184
    aget-object v2, p1, v0

    array-length v1, v2

    .line 1185
    .local v1, "rowLen":I
    if-eq v1, p2, :cond_0

    .line 1186
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but row 0 has length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    .end local v1    # "rowLen":I
    :cond_1
    return-void
.end method

.method private static checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V
    .locals 3
    .param p0, "sideName"    # Ljava/lang/String;
    .param p1, "currentParsePosition"    # I
    .param p2, "pn"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    .line 311
    invoke-static {p2}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of the range operator \':\' at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a proper reference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    return-void
.end method

.method private comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .prologue
    .line 1471
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1473
    .local v2, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1474
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    packed-switch v4, :pswitch_data_0

    .line 1483
    return-object v2

    .line 1478
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 1479
    .local v0, "comparisonToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1480
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v3, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v2, v3

    .line 1481
    .end local v3    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0

    .line 1474
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private concatExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .prologue
    const/16 v4, 0x26

    .line 1514
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1516
    .local v1, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1517
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v3, v4, :cond_0

    .line 1524
    return-object v1

    .line 1520
    :cond_0
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1521
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1522
    .local v0, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v1    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v2, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v1, v2

    .line 1523
    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v1    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private static convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;
    .locals 5
    .param p0, "ptg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p1, "isPositive"    # Z

    .prologue
    .line 1246
    instance-of v2, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v2, :cond_1

    .line 1247
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    .end local p0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v2

    int-to-double v0, v2

    .line 1253
    .local v0, "value":D
    :goto_0
    if-nez p1, :cond_0

    .line 1254
    neg-double v0, v0

    .line 1256
    :cond_0
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2

    .line 1248
    .end local v0    # "value":D
    .restart local p0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    instance-of v2, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v2, :cond_2

    .line 1249
    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    .end local p0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    .restart local v0    # "value":D
    goto :goto_0

    .line 1251
    .end local v0    # "value":D
    .restart local p0    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected ptg ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3
    .param p0, "part1"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .param p1, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has incompatible parts: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->getWholeRow(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 631
    :goto_0
    return-object v0

    .line 628
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isColumn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/AreaReference;->getWholeColumn(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    goto :goto_0

    .line 631
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V

    goto :goto_0
.end method

.method private createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4
    .param p1, "sheetIden"    # Lorg/apache/poi/ss/formula/SheetIdentifier;
    .param p2, "part1"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .param p3, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/FormulaParseException;
        }
    .end annotation

    .prologue
    .line 601
    if-nez p3, :cond_1

    .line 602
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v1

    .line 603
    .local v1, "cr":Lorg/apache/poi/ss/util/CellReference;
    if-nez p1, :cond_0

    .line 604
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    .line 617
    .end local v1    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .local v2, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :goto_0
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v3

    .line 606
    .end local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .restart local v1    # "cr":Lorg/apache/poi/ss/util/CellReference;
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v3, v1, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .restart local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 609
    .end local v1    # "cr":Lorg/apache/poi/ss/util/CellReference;
    .end local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object v0

    .line 611
    .local v0, "areaRef":Lorg/apache/poi/ss/util/AreaReference;
    if-nez p1, :cond_2

    .line 612
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    .restart local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0

    .line 614
    .end local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v3, v0, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .restart local v2    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    goto :goto_0
.end method

.method private expected(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The specified formula \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' starts with an equals sign which is not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 184
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error near char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in specified formula \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method private function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 914
    const/4 v2, 0x0

    .line 915
    .local v2, "nameToken":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isBuiltInFunctionName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 919
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-nez v3, :cond_0

    .line 921
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need book to evaluate name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 923
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v3, p1, v4}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v1

    .line 924
    .local v1, "hName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-nez v1, :cond_1

    .line 925
    iget-object v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 926
    if-nez v2, :cond_3

    .line 927
    new-instance v3, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is completely unknown in the current workbook"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    move-result v3

    if-nez v3, :cond_2

    .line 932
    new-instance v3, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to use name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as a function, but defined name in workbook does not refer to a function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 938
    :cond_2
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v2

    .line 942
    .end local v1    # "hName":Lorg/apache/poi/ss/formula/EvaluationName;
    :cond_3
    const/16 v3, 0x28

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 943
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Arguments()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 944
    .local v0, "args":[Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v3, 0x29

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 946
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    return-object v3
.end method

.method private getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    .prologue
    const/16 v3, 0x3e

    const/16 v2, 0x3d

    .line 1488
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v1, v2, :cond_0

    .line 1489
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1490
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    .line 1509
    :goto_0
    return-object v1

    .line 1492
    :cond_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 1493
    .local v0, "isGreater":Z
    :goto_1
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1494
    if-eqz v0, :cond_3

    .line 1495
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v1, v2, :cond_2

    .line 1496
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1497
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_0

    .line 1492
    .end local v0    # "isGreater":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1499
    .restart local v0    # "isGreater":Z
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_0

    .line 1501
    :cond_3
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    packed-switch v1, :pswitch_data_0

    .line 1509
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_0

    .line 1503
    :pswitch_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1504
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_0

    .line 1506
    :pswitch_1
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1507
    sget-object v1, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_0

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p3, "args"    # [Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    .line 959
    .local v1, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    array-length v4, p3

    .line 960
    .local v4, "numArgs":I
    if-nez v1, :cond_1

    .line 961
    if-nez p2, :cond_0

    .line 962
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "NamePtg must be supplied for external functions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 965
    :cond_0
    add-int/lit8 v7, v4, 0x1

    new-array v0, v7, [Lorg/apache/poi/ss/formula/ParseNode;

    .line 966
    .local v0, "allArgs":[Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v7, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v7, p2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    aput-object v7, v0, v3

    .line 967
    invoke-static {p3, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 968
    new-instance v6, Lorg/apache/poi/ss/formula/ParseNode;

    add-int/lit8 v7, v4, 0x1

    invoke-static {p1, v7}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 990
    .end local v0    # "allArgs":[Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    return-object v6

    .line 971
    :cond_1
    if-eqz p2, :cond_2

    .line 972
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "NamePtg no applicable to internal functions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 974
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v6

    .line 975
    .local v3, "isVarArgs":Z
    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v2

    .line 976
    .local v2, "funcIx":I
    const/4 v7, 0x4

    if-ne v2, v7, :cond_4

    array-length v7, p3

    if-ne v7, v6, :cond_4

    .line 979
    new-instance v6, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object v7

    invoke-direct {v6, v7, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    goto :goto_0

    .line 982
    :cond_4
    array-length v6, p3

    invoke-direct {p0, v6, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V

    .line 985
    if-eqz v3, :cond_5

    .line 986
    invoke-static {p1, v4}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v5

    .line 990
    .local v5, "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :goto_1
    new-instance v6, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v6, v5, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    goto :goto_0

    .line 988
    .end local v5    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    :cond_5
    invoke-static {v2}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object v5

    .restart local v5    # "retval":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    goto :goto_1
.end method

.method private static getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "exponent"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x45

    .line 1372
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1374
    .local v2, "number":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    .line 1375
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    if-eqz p2, :cond_0

    .line 1378
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1379
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1382
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1385
    .local v3, "numberStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1389
    .local v1, "intVal":I
    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1390
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-direct {v4, v1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    .line 1407
    .end local v1    # "intVal":I
    .end local v3    # "numberStr":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1386
    .restart local v3    # "numberStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1387
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v4, v3}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "intVal":I
    :cond_1
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {v4, v3}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    .end local v1    # "intVal":I
    .end local v3    # "numberStr":Ljava/lang/String;
    :cond_2
    if-eqz p0, :cond_3

    .line 1396
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    :cond_3
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1400
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1402
    if-eqz p2, :cond_4

    .line 1403
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1404
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1407
    :cond_4
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRPNPtg(I)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "formulaType"    # I

    .prologue
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

    .prologue
    .line 1030
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnquotedSheetNameChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 865
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    :goto_0
    :sswitch_0
    return v0

    .line 868
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 873
    const/4 v0, 0x0

    goto :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private isValidCellReference(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 881
    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p1, v5}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    if-ne v5, v6, :cond_1

    move v1, v3

    .line 883
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 892
    .local v0, "isFunc":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 893
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 894
    .local v2, "savePointer":I
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

    if-eq v5, v6, :cond_3

    move v1, v3

    .line 899
    :goto_2
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 902
    .end local v0    # "isFunc":Z
    .end local v2    # "savePointer":I
    :cond_0
    return v1

    .end local v1    # "result":Z
    :cond_1
    move v1, v4

    .line 881
    goto :goto_0

    .restart local v1    # "result":Z
    :cond_2
    move v0, v4

    .line 891
    goto :goto_1

    .restart local v0    # "isFunc":Z
    .restart local v2    # "savePointer":I
    :cond_3
    move v1, v4

    .line 898
    goto :goto_2
.end method

.method private static isValidDefinedNameChar(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 579
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    :goto_0
    :sswitch_0
    return v0

    .line 582
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 589
    const/4 v0, 0x0

    goto :goto_0

    .line 582
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 6
    .param p0, "a"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 323
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    .line 325
    .local v2, "tkn":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v2, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v5, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v3

    .line 331
    :cond_1
    instance-of v5, v2, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v5, :cond_2

    move-object v0, v2

    .line 332
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    .line 333
    .local v0, "afp":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result v1

    .line 334
    .local v1, "returnClass":B
    if-eqz v1, :cond_0

    move v3, v4

    goto :goto_0

    .line 336
    .end local v0    # "afp":Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
    .end local v1    # "returnClass":B
    :cond_2
    instance-of v5, v2, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-eqz v5, :cond_3

    move v3, v4

    .line 337
    goto :goto_0

    .line 339
    :cond_3
    instance-of v5, v2, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-nez v5, :cond_0

    .line 344
    instance-of v5, v2, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v5, :cond_4

    .line 346
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v3

    goto :goto_0

    .line 350
    :cond_4
    sget-object v5, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-eq v2, v5, :cond_0

    move v3, v4

    .line 355
    goto :goto_0
.end method

.method private static needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 8
    .param p0, "root"    # Lorg/apache/poi/ss/formula/ParseNode;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 277
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v4

    .line 278
    .local v4, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    if-eqz v7, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v5

    .line 281
    :cond_1
    instance-of v7, v4, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    if-nez v7, :cond_0

    .line 284
    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-nez v7, :cond_0

    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-nez v7, :cond_0

    .line 288
    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-nez v7, :cond_2

    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v7, :cond_4

    .line 290
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/ParseNode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 291
    .local v1, "child":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "child":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_3
    move v5, v6

    .line 295
    goto :goto_0

    .line 297
    .end local v0    # "arr$":[Lorg/apache/poi/ss/formula/ParseNode;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz v7, :cond_5

    move v5, v6

    .line 298
    goto :goto_0

    .line 300
    :cond_5
    instance-of v7, v4, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-nez v7, :cond_0

    move v5, v6

    .line 304
    goto :goto_0
.end method

.method private parse()V
    .locals 4

    .prologue
    .line 1570
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 1571
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1572
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    .line 1574
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt v1, v2, :cond_0

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unused input ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] after attempting to parse the formula ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1579
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "workbook"    # Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;
    .param p2, "formulaType"    # I
    .param p3, "sheetIndex"    # I

    .prologue
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
    .locals 8

    .prologue
    const/16 v7, 0x3b

    .line 1162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v2, "rowsData":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayRow()[Ljava/lang/Object;

    move-result-object v3

    .line 1165
    .local v3, "singleRowData":[Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_0

    .line 1174
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1175
    .local v1, "nRows":I
    new-array v4, v1, [[Ljava/lang/Object;

    .line 1176
    .local v4, "values2d":[[Ljava/lang/Object;
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1177
    const/4 v5, 0x0

    aget-object v5, v4, v5

    array-length v0, v5

    .line 1178
    .local v0, "nColumns":I
    invoke-direct {p0, v4, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->checkRowLengths([[Ljava/lang/Object;I)V

    .line 1180
    new-instance v5, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v6, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v6, v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>([[Ljava/lang/Object;)V

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v5

    .line 1169
    .end local v0    # "nColumns":I
    .end local v1    # "nRows":I
    .end local v4    # "values2d":[[Ljava/lang/Object;
    :cond_0
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v5, v7, :cond_1

    .line 1170
    const-string v5, "\'}\' or \';\'"

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1172
    :cond_1
    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    goto :goto_0
.end method

.method private parseArrayItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1217
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1218
    iget-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    sparse-switch v0, :sswitch_data_0

    .line 1230
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1219
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1220
    :sswitch_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object v0

    goto :goto_0

    .line 1223
    :sswitch_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseBooleanLiteral()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1225
    :sswitch_3
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1226
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1227
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1218
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2d -> :sswitch_3
        0x46 -> :sswitch_2
        0x54 -> :sswitch_2
        0x66 -> :sswitch_2
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseArrayRow()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayItem()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1197
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    sparse-switch v2, :sswitch_data_0

    .line 1205
    const-string v2, "\'}\' or \',\'"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1202
    :sswitch_0
    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    goto :goto_0

    .line 1211
    :sswitch_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 1212
    .local v0, "result":[Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1213
    return-object v0

    .line 1197
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAsName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    .line 563
    const-string v1, "number, string, or defined name"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 565
    :cond_0
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidDefinedNameChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 567
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 569
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseBooleanLiteral()Ljava/lang/Boolean;
    .locals 2

    .prologue
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

    .line 1239
    :goto_0
    return-object v1

    .line 1238
    :cond_0
    const-string v1, "FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1241
    :cond_1
    const-string v1, "\'TRUE\' or \'FALSE\'"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private parseErrorLiteral()I
    .locals 5

    .prologue
    const/16 v4, 0x2f

    const/4 v1, 0x0

    const/16 v3, 0x21

    .line 1296
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1297
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, "part1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1299
    const-string v1, "remainder of error constant literal"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1302
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1348
    const-string v1, "#VALUE!, #REF!, #DIV/0!, #NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1304
    :sswitch_0
    const-string v1, "VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1306
    const/16 v1, 0xf

    .line 1343
    :goto_0
    return v1

    .line 1308
    :cond_1
    const-string v1, "#VALUE!"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1310
    :sswitch_1
    const-string v1, "REF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1311
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1312
    const/16 v1, 0x17

    goto :goto_0

    .line 1314
    :cond_2
    const-string v1, "#REF!"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1316
    :sswitch_2
    const-string v1, "DIV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1317
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1318
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1319
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1320
    const/4 v1, 0x7

    goto :goto_0

    .line 1322
    :cond_3
    const-string v1, "#DIV/0!"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1324
    :sswitch_3
    const-string v2, "NAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1325
    const/16 v1, 0x3f

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1326
    const/16 v1, 0x1d

    goto :goto_0

    .line 1328
    :cond_4
    const-string v2, "NUM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1329
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1330
    const/16 v1, 0x24

    goto :goto_0

    .line 1332
    :cond_5
    const-string v2, "NULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1333
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    goto :goto_0

    .line 1336
    :cond_6
    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1337
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1338
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x41

    if-eq v1, v2, :cond_7

    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x61

    if-eq v1, v2, :cond_7

    .line 1339
    const-string v1, "#N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1341
    :cond_7
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1343
    const/16 v1, 0x2a

    goto/16 :goto_0

    .line 1345
    :cond_8
    const-string v1, "#NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1302
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4e -> :sswitch_3
        0x52 -> :sswitch_1
        0x56 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5
    .param p1, "savePointer"    # I

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 524
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 551
    :goto_0
    return-object v2

    .line 527
    :cond_0
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 528
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v3, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "name":Ljava/lang/String;
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 536
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    goto :goto_0

    .line 538
    :cond_2
    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "FALSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 539
    :cond_3
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    const-string v3, "TRUE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0

    .line 541
    :cond_4
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-nez v2, :cond_5

    .line 543
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need book to evaluate name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_5
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v2, v1, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    .line 546
    .local v0, "evalName":Lorg/apache/poi/ss/formula/EvaluationName;
    if-nez v0, :cond_6

    .line 547
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified named range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist in the current workbook."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_6
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 551
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto/16 :goto_0

    .line 554
    :cond_7
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a range as expected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 7

    .prologue
    .line 1260
    const/4 v3, 0x0

    .line 1261
    .local v3, "number2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1262
    .local v0, "exponent":Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v2

    .line 1264
    .local v2, "number1":Ljava/lang/String;
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_0

    .line 1265
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1266
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v3

    .line 1269
    :cond_0
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x45

    if-ne v5, v6, :cond_4

    .line 1270
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1272
    const-string v4, ""

    .line 1273
    .local v4, "sign":Ljava/lang/String;
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    .line 1274
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1280
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v1

    .line 1281
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1282
    const-string v5, "Integer"

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1275
    .end local v1    # "number":Ljava/lang/String;
    :cond_2
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    .line 1276
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1277
    const-string v4, "-"

    goto :goto_0

    .line 1284
    .restart local v1    # "number":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    .end local v1    # "number":Ljava/lang/String;
    .end local v4    # "sign":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    if-nez v3, :cond_5

    .line 1288
    const-string v5, "Integer"

    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1291
    :cond_5
    invoke-static {v2, v3, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    return-object v5
.end method

.method private parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 7

    .prologue
    .line 237
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v4

    .line 238
    .local v4, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x0

    .line 239
    .local v1, "hasRange":Z
    :goto_0
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_0

    .line 240
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 241
    .local v3, "pos":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 242
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 248
    .local v2, "nextPart":Lorg/apache/poi/ss/formula/ParseNode;
    const-string v5, "LHS"

    invoke-static {v5, v3, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    .line 249
    const-string v5, "RHS"

    invoke-static {v5, v3, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    .line 251
    const/4 v5, 0x2

    new-array v0, v5, [Lorg/apache/poi/ss/formula/ParseNode;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v5, 0x1

    aput-object v2, v0, v5

    .line 252
    .local v0, "children":[Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    .end local v4    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    sget-object v5, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v4, v5, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    .line 253
    .restart local v4    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v1, 0x1

    .line 254
    goto :goto_0

    .line 255
    .end local v0    # "children":[Lorg/apache/poi/ss/formula/ParseNode;
    .end local v2    # "nextPart":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v3    # "pos":I
    :cond_0
    if-eqz v1, :cond_1

    .line 256
    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v4

    .line 258
    .end local v4    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_1
    return-object v4
.end method

.method private parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 15

    .prologue
    const/16 v14, 0x2e

    .line 385
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 386
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 387
    .local v8, "savePointer":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v9

    .line 389
    .local v9, "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    if-nez v9, :cond_0

    .line 390
    invoke-direct {p0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 396
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v4

    .line 397
    .local v4, "part1":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    if-nez v4, :cond_5

    .line 398
    if-eqz v9, :cond_4

    .line 399
    iget-char v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v13, 0x23

    if-ne v12, v13, :cond_1

    .line 400
    new-instance v12, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v13

    invoke-static {v13}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 504
    :goto_1
    return-object v12

    .line 392
    .end local v4    # "part1":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 393
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    goto :goto_0

    .line 403
    .restart local v4    # "part1":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 405
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cell reference or Named Range expected after sheet name at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 408
    :cond_2
    iget-object v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v12, v2, v9}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 409
    .local v3, "nameXPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    if-nez v3, :cond_3

    .line 410
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Specified name \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' for sheet "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 413
    :cond_3
    new-instance v12, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v12, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_1

    .line 416
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameXPtg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_4
    invoke-direct {p0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto :goto_1

    .line 418
    :cond_5
    iget-char v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v12}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(C)Z

    move-result v10

    .line 419
    .local v10, "whiteAfterPart1":Z
    if-eqz v10, :cond_6

    .line 420
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 423
    :cond_6
    iget-char v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v13, 0x3a

    if-ne v12, v13, :cond_b

    .line 424
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 425
    .local v0, "colonPos":I
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 426
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 427
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v6

    .line 428
    .local v6, "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    if-eqz v6, :cond_7

    invoke-virtual {v4, v6}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 432
    const/4 v6, 0x0

    .line 434
    :cond_7
    if-nez v6, :cond_a

    .line 437
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 438
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v12

    if-nez v12, :cond_9

    .line 440
    if-nez v9, :cond_8

    .line 441
    const-string v7, ""

    .line 445
    .local v7, "prefix":Ljava/lang/String;
    :goto_2
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' is not a proper reference."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 443
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x21

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "prefix":Ljava/lang/String;
    goto :goto_2

    .line 447
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v9, v4, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 449
    :cond_a
    invoke-direct {p0, v9, v4, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 452
    .end local v0    # "colonPos":I
    .end local v6    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    :cond_b
    iget-char v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v12, v14, :cond_16

    .line 453
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 454
    const/4 v1, 0x1

    .line 455
    .local v1, "dotCount":I
    :goto_3
    iget-char v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v12, v14, :cond_c

    .line 456
    add-int/lit8 v1, v1, 0x1

    .line 457
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_3

    .line 459
    :cond_c
    iget-char v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v12}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(C)Z

    move-result v11

    .line 461
    .local v11, "whiteBeforePart2":Z
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 462
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    move-result-object v6

    .line 463
    .restart local v6    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    iget-object v12, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    add-int/lit8 v13, v8, -0x1

    iget v14, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "part1And2":Ljava/lang/String;
    if-nez v6, :cond_e

    .line 465
    if-eqz v9, :cond_d

    .line 466
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Complete area reference expected after sheet name at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 469
    :cond_d
    invoke-direct {p0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 473
    :cond_e
    if-nez v10, :cond_f

    if-eqz v11, :cond_12

    .line 474
    :cond_f
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 477
    :cond_10
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Dotted range (full row or column) expression \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' must not contain whitespace."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 480
    :cond_11
    invoke-direct {p0, v9, v4, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 483
    :cond_12
    const/4 v12, 0x1

    if-ne v1, v12, :cond_13

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 485
    invoke-direct {p0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 488
    :cond_13
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 489
    :cond_14
    const/4 v12, 0x2

    if-eq v1, v12, :cond_15

    .line 490
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Dotted range (full row or column) expression \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' must have exactly 2 dots."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 494
    :cond_15
    invoke-direct {p0, v9, v4, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 496
    .end local v1    # "dotCount":I
    .end local v5    # "part1And2":Ljava/lang/String;
    .end local v6    # "part2":Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .end local v11    # "whiteBeforePart2":Z
    :cond_16
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 497
    const/4 v12, 0x0

    invoke-direct {p0, v9, v4, v12}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1

    .line 499
    :cond_17
    if-eqz v9, :cond_18

    .line 500
    new-instance v12, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Second part of cell reference expected after sheet name at index "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 504
    :cond_18
    invoke-direct {p0, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v12

    goto/16 :goto_1
.end method

.method private parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 11

    .prologue
    const/16 v10, 0x21

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x27

    .line 778
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v8, 0x5b

    if-ne v7, v8, :cond_2

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 781
    :goto_0
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_0

    .line 782
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 786
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v0, "bookName":Ljava/lang/String;
    :goto_1
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v7, v9, :cond_8

    .line 792
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 794
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-direct {p0, v9}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 795
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v7, v9, :cond_3

    move v1, v4

    .line 796
    .local v1, "done":Z
    :cond_1
    :goto_2
    if-nez v1, :cond_5

    .line 797
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 798
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 799
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v7, v9, :cond_1

    .line 801
    invoke-direct {p0, v9}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 802
    iget-char v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v7, v9, :cond_4

    move v1, v4

    :goto_3
    goto :goto_2

    .line 788
    .end local v0    # "bookName":Ljava/lang/String;
    .end local v1    # "done":Z
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bookName":Ljava/lang/String;
    goto :goto_1

    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    move v1, v5

    .line 795
    goto :goto_2

    .restart local v1    # "done":Z
    :cond_4
    move v1, v5

    .line 802
    goto :goto_3

    .line 806
    :cond_5
    new-instance v2, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    .line 808
    .local v2, "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 809
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v4, v10, :cond_6

    .line 810
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 811
    new-instance v4, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v4, v0, v2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    .line 845
    .end local v1    # "done":Z
    .end local v2    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :goto_4
    return-object v4

    .line 814
    .restart local v1    # "done":Z
    .restart local v2    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_7

    .line 815
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v6

    .line 817
    goto :goto_4

    .line 821
    .end local v1    # "done":Z
    .end local v2    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v7, 0x5f

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 822
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_5
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isUnquotedSheetNameChar(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 825
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 826
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_5

    .line 828
    :cond_a
    new-instance v2, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    .line 829
    .restart local v2    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 830
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v4, v10, :cond_b

    .line 831
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 832
    new-instance v4, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v4, v0, v2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    goto :goto_4

    .line 835
    :cond_b
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_c

    .line 836
    invoke-direct {p0, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v4

    goto :goto_4

    :cond_c
    move-object v4, v6

    .line 838
    goto :goto_4

    .line 840
    .end local v2    # "iden":Lorg/apache/poi/ss/formula/NameIdentifier;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_d
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v4, v10, :cond_e

    if-eqz v0, :cond_e

    .line 842
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 843
    new-instance v4, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v4, v0, v6}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    goto :goto_4

    :cond_e
    move-object v4, v6

    .line 845
    goto :goto_4
.end method

.method private parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 3
    .param p1, "bookname"    # Ljava/lang/String;
    .param p2, "sheet1Name"    # Lorg/apache/poi/ss/formula/NameIdentifier;

    .prologue
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

    .line 858
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .prologue
    .line 1099
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1100
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    sparse-switch v2, :sswitch_data_0

    .line 1122
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v2}, Lorg/apache/poi/ss/formula/FormulaParser;->IsAlpha(C)Z

    move-result v2

    if-nez v2, :cond_0

    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x27

    if-eq v2, v3, :cond_0

    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 1123
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1126
    :goto_0
    return-object v0

    .line 1102
    :sswitch_0
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0

    .line 1104
    :sswitch_1
    const/16 v2, 0x2d

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1105
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    goto :goto_0

    .line 1107
    :sswitch_2
    const/16 v2, 0x2b

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1108
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    goto :goto_0

    .line 1110
    :sswitch_3
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1111
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1112
    .local v1, "inside":Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1113
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    goto :goto_0

    .line 1115
    .end local v1    # "inside":Lorg/apache/poi/ss/formula/ParseNode;
    :sswitch_4
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0

    .line 1117
    :sswitch_5
    const/16 v2, 0x7b

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1118
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArray()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1119
    .local v0, "arrayNode":Lorg/apache/poi/ss/formula/ParseNode;
    const/16 v2, 0x7d

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    goto :goto_0

    .line 1125
    .end local v0    # "arrayNode":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_1
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 1126
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_0

    .line 1128
    :cond_2
    const-string v2, "cell ref or constant literal"

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x23 -> :sswitch_0
        0x28 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 647
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v5, v8, -0x1

    .line 648
    .local v5, "ptr":I
    const/4 v2, 0x0

    .line 649
    .local v2, "hasDigits":Z
    const/4 v3, 0x0

    .line 650
    .local v3, "hasLetters":Z
    :goto_0
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-ge v5, v8, :cond_3

    .line 651
    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 652
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 653
    const/4 v2, 0x1

    .line 661
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 662
    goto :goto_0

    .line 654
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 655
    const/4 v3, 0x1

    goto :goto_1

    .line 656
    :cond_2
    const/16 v8, 0x24

    if-eq v0, v8, :cond_0

    const/16 v8, 0x5f

    if-eq v0, v8, :cond_0

    .line 663
    .end local v0    # "ch":C
    :cond_3
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v8, v8, -0x1

    if-gt v5, v8, :cond_5

    .line 696
    :cond_4
    :goto_2
    return-object v7

    .line 666
    :cond_5
    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 667
    .local v6, "rep":Ljava/lang/String;
    sget-object v8, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 671
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 672
    invoke-direct {p0, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 695
    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 696
    new-instance v7, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    invoke-direct {v7, v6, v3, v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 675
    :cond_7
    if-eqz v3, :cond_8

    .line 676
    const-string v8, "$"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v8, v9}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    .line 679
    :cond_8
    if-eqz v2, :cond_4

    .line 682
    :try_start_0
    const-string v8, "$"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 686
    .local v4, "i":I
    const/4 v8, 0x1

    if-lt v4, v8, :cond_4

    iget-object v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v8}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v8

    if-le v4, v8, :cond_6

    goto :goto_2

    .line 683
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 684
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method private parseStringLiteral()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 1412
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1414
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1416
    .local v0, "token":Ljava/lang/StringBuffer;
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-ne v1, v2, :cond_0

    .line 1417
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1418
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v1, v2, :cond_0

    .line 1425
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1422
    :cond_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1423
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0
.end method

.method private parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 8
    .param p1, "isPlus"    # Z

    .prologue
    .line 1134
    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v5}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    iget-char v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 1135
    .local v2, "numberFollows":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1137
    .local v0, "factor":Lorg/apache/poi/ss/formula/ParseNode;
    if-eqz v2, :cond_5

    .line 1140
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 1141
    .local v3, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v5, v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v5, :cond_4

    .line 1142
    if-eqz p1, :cond_3

    .line 1158
    .end local v0    # "factor":Lorg/apache/poi/ss/formula/ParseNode;
    .end local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    :goto_1
    return-object v0

    .line 1134
    .end local v2    # "numberFollows":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1145
    .restart local v0    # "factor":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v2    # "numberFollows":Z
    .restart local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_3
    new-instance v4, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    check-cast v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    .end local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v6

    neg-double v6, v6

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    .line 1146
    .local v4, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    .end local v0    # "factor":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-direct {v0, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_1

    .line 1148
    .end local v4    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .restart local v0    # "factor":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_4
    instance-of v5, v3, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v5, :cond_5

    .line 1149
    if-nez p1, :cond_1

    .line 1152
    check-cast v3, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    .end local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result v1

    .line 1154
    .local v1, "intVal":I
    new-instance v3, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    neg-int v5, v1

    int-to-double v6, v5

    invoke-direct {v3, v6, v7}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    .line 1155
    .restart local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    .end local v0    # "factor":Lorg/apache/poi/ss/formula/ParseNode;
    invoke-direct {v0, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    goto :goto_1

    .line 1158
    .end local v1    # "intVal":I
    .end local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    .restart local v0    # "factor":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_5
    new-instance v6, Lorg/apache/poi/ss/formula/ParseNode;

    if-eqz p1, :cond_6

    sget-object v5, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    :goto_2
    invoke-direct {v6, v5, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v6

    goto :goto_1

    :cond_6
    sget-object v5, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_2
.end method

.method private parseUnquotedIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1352
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 1353
    const-string/jumbo v1, "unquoted identifier"

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1356
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 1357
    :cond_1
    iget-char v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1358
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    .line 1360
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1361
    const/4 v1, 0x0

    .line 1364
    :goto_1
    return-object v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private percentFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    .prologue
    const/16 v3, 0x25

    .line 1083
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1085
    .local v0, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1086
    iget-char v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v2, v3, :cond_0

    .line 1087
    return-object v0

    .line 1089
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1090
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v0    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v1, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v0, v1

    .end local v1    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v0    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private powerFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .prologue
    const/16 v4, 0x5e

    .line 1070
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1072
    .local v1, "result":Lorg/apache/poi/ss/formula/ParseNode;
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1073
    iget-char v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    if-eq v3, v4, :cond_0

    .line 1074
    return-object v1

    .line 1076
    :cond_0
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(C)V

    .line 1077
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    .line 1078
    .local v0, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v1    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v2, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v1, v2

    .line 1079
    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v1    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0
.end method

.method private resetPointer(I)V
    .locals 2
    .param p1, "ptr"    # I

    .prologue
    .line 166
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 167
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-char v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    goto :goto_0
.end method

.method private unionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    .prologue
    .line 1451
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1452
    .local v2, "result":Lorg/apache/poi/ss/formula/ParseNode;
    const/4 v0, 0x0

    .line 1454
    .local v0, "hasUnions":Z
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 1455
    iget-char v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:C

    packed-switch v4, :pswitch_data_0

    .line 1463
    if-eqz v0, :cond_0

    .line 1464
    invoke-static {v2}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    .line 1466
    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    :cond_0
    return-object v2

    .line 1457
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 1458
    const/4 v0, 0x1

    .line 1459
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    .line 1460
    .local v1, "other":Lorg/apache/poi/ss/formula/ParseNode;
    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    .end local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .local v3, "result":Lorg/apache/poi/ss/formula/ParseNode;
    move-object v2, v3

    .line 1461
    .end local v3    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    .restart local v2    # "result":Lorg/apache/poi/ss/formula/ParseNode;
    goto :goto_0

    .line 1455
    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method private validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V
    .locals 4
    .param p1, "numArgs"    # I
    .param p2, "fm"    # Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .prologue
    .line 994
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too few arguments to function \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1001
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 999
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "At least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1006
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasUnlimitedVarags()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1007
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-eqz v2, :cond_2

    .line 1008
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    move-result v0

    .line 1017
    .local v0, "maxArgs":I
    :goto_1
    if-le p1, v0, :cond_5

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many arguments to function \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .restart local v1    # "msg":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    .end local v0    # "maxArgs":I
    .end local v1    # "msg":Ljava/lang/String;
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

    .restart local v0    # "maxArgs":I
    goto :goto_1

    .line 1022
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "At most "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1027
    .end local v1    # "msg":Ljava/lang/String;
    :cond_5
    return-void
.end method
