.class public Lorg/apache/poi/ss/util/CellReference;
.super Ljava/lang/Object;
.source "CellReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellReference$NameType;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_REFERENCE_MARKER:C = '$'

.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROW_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHEET_NAME_DELIMITER:C = '!'

.field private static final SPECIAL_NAME_DELIMITER:C = '\''


# instance fields
.field private final _colIndex:I

.field private final _isColAbs:Z

.field private final _isRowAbs:Z

.field private final _rowIndex:I

.field private final _sheetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-string v0, "\\$?([A-Za-z]+)\\$?([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "\\$?([A-Za-z]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    const-string v0, "\\$?([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->ROW_REF_PATTERN:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "[_A-Za-z][_.A-Za-z0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "pRow"    # I
    .param p2, "pCol"    # I

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6
    .param p1, "pRow"    # I
    .param p2, "pCol"    # I
    .param p3, "pAbsRow"    # Z
    .param p4, "pAbsCol"    # Z

    .line 130
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    .line 131
    return-void
.end method

.method public constructor <init>(IS)V
    .locals 2
    .param p1, "pRow"    # I
    .param p2, "pCol"    # S

    .line 122
    const v0, 0xffff

    and-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "cellRef"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "#REF!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 92
    invoke-static {p1}, Lorg/apache/poi/ss/util/CellReference;->separateRefParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    .line 95
    const/4 v2, 0x1

    aget-object v3, v0, v2

    .line 96
    .local v3, "colRef":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x24

    if-lez v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    .line 97
    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, -0x1

    if-nez v4, :cond_2

    .line 101
    iput v6, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v3}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    .line 106
    :goto_1
    const/4 v4, 0x2

    aget-object v4, v0, v4

    .line 107
    .local v4, "rowRef":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    .line 108
    if-eqz v1, :cond_4

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 112
    iput v6, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    goto :goto_2

    .line 114
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    .line 116
    :goto_2
    return-void

    .line 89
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v3    # "colRef":Ljava/lang/String;
    .end local v4    # "rowRef":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell reference invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 3
    .param p1, "pSheetName"    # Ljava/lang/String;
    .param p2, "pRow"    # I
    .param p3, "pCol"    # I
    .param p4, "pAbsRow"    # Z
    .param p5, "pAbsCol"    # Z

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 138
    if-lt p3, v0, :cond_0

    .line 141
    iput-object p1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    .line 142
    iput p2, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    .line 143
    iput p3, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    .line 144
    iput-boolean p4, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    .line 145
    iput-boolean p5, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    .line 146
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column index may not be negative, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row index may not be negative, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .line 126
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    .line 127
    return-void
.end method

.method public static cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 1
    .param p0, "colStr"    # Ljava/lang/String;
    .param p1, "rowStr"    # Ljava/lang/String;
    .param p2, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 296
    invoke-static {p0, p2}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/CellReference;->isRowWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    return v0
.end method

.method public static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    .local v0, "len":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    .line 199
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 200
    .local v2, "firstChar":C
    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_1

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_1

    .line 206
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first char ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ") of cell reference or named range.  Letter expected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_1
    nop

    .line 211
    :cond_2
    :goto_0
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 213
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v1

    return-object v1

    .line 215
    :cond_3
    sget-object v4, Lorg/apache/poi/ss/util/CellReference;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 216
    .local v4, "cellRefPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_4

    .line 217
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v1

    return-object v1

    .line 219
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "lettersGroup":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "digitsGroup":Ljava/lang/String;
    invoke-static {v1, v5, p1}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 230
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_6

    .line 232
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 234
    :cond_6
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 197
    .end local v1    # "lettersGroup":Ljava/lang/String;
    .end local v2    # "firstChar":C
    .end local v4    # "cellRefPatternMatcher":Ljava/util/regex/Matcher;
    .end local v5    # "digitsGroup":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty string not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static convertColStringToIndex(Ljava/lang/String;)I
    .locals 7
    .param p0, "ref"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "retval":I
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 175
    .local v1, "refs":[C
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 176
    aget-char v3, v1, v2

    .line 177
    .local v3, "thechar":C
    const/16 v4, 0x24

    if-ne v3, v4, :cond_1

    .line 178
    if-nez v2, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad col ref format \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    mul-int/lit8 v4, v0, 0x1a

    add-int/lit8 v5, v3, -0x41

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    move v0, v4

    .line 175
    .end local v3    # "thechar":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "k":I
    :cond_2
    add-int/lit8 v2, v0, -0x1

    return v2
.end method

.method public static convertNumToColString(I)Ljava/lang/String;
    .locals 6
    .param p0, "col"    # I

    .line 418
    add-int/lit8 v0, p0, 0x1

    .line 420
    .local v0, "excelColNum":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    .local v1, "colRef":Ljava/lang/StringBuilder;
    move v2, v0

    .line 423
    .local v2, "colRemain":I
    :goto_0
    if-lez v2, :cond_1

    .line 424
    rem-int/lit8 v3, v2, 0x1a

    .line 425
    .local v3, "thisPart":I
    if-nez v3, :cond_0

    const/16 v3, 0x1a

    .line 426
    :cond_0
    sub-int v4, v2, v3

    div-int/lit8 v2, v4, 0x1a

    .line 429
    add-int/lit8 v4, v3, 0x40

    int-to-char v4, v4

    .line 430
    .local v4, "colChar":C
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 431
    .end local v3    # "thisPart":I
    .end local v4    # "colChar":C
    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isColumnWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 5
    .param p0, "colStr"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 303
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "lastCol":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 306
    .local v1, "lastColLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 307
    .local v2, "numberOfLetters":I
    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    .line 309
    return v3

    .line 311
    :cond_0
    if-ne v2, v1, :cond_1

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 313
    return v3

    .line 319
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isPartAbsolute(Ljava/lang/String;)Z
    .locals 3
    .param p0, "part"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRowWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 4
    .param p0, "rowStr"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 323
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "rowNum":I
    if-ltz v0, :cond_2

    .line 328
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    return v1

    .line 333
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v2

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 326
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rowStr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseSheetName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "reference"    # Ljava/lang/String;
    .param p1, "indexOfSheetNameDelimiter"    # I

    .line 369
    if-gez p1, :cond_0

    .line 370
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 374
    .local v1, "isQuoted":Z
    :goto_0
    if-nez v1, :cond_2

    .line 375
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 377
    :cond_2
    add-int/lit8 v0, p1, -0x1

    .line 378
    .local v0, "lastQuotePos":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, ")"

    if-ne v4, v2, :cond_6

    .line 389
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 391
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_5

    .line 392
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 393
    .local v7, "ch":C
    if-eq v7, v2, :cond_3

    .line 394
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 395
    goto :goto_2

    .line 397
    :cond_3
    if-ge v6, v0, :cond_4

    .line 398
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_4

    .line 400
    add-int/lit8 v6, v6, 0x1

    .line 401
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    nop

    .line 391
    .end local v7    # "ch":C
    :goto_2
    add-int/2addr v6, v3

    goto :goto_1

    .line 405
    .restart local v7    # "ch":C
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad sheet name quote escaping: ("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    .end local v6    # "i":I
    .end local v7    # "ch":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 379
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatched quotes: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static separateRefParts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "reference"    # Ljava/lang/String;

    .line 342
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 343
    .local v0, "plingPos":I
    invoke-static {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->parseSheetName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "sheetName":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    .line 346
    .local v2, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 349
    .local v3, "length":I
    move v4, v2

    .line 351
    .local v4, "loc":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-ne v5, v6, :cond_0

    .line 352
    add-int/lit8 v4, v4, 0x1

    .line 355
    :cond_0
    :goto_0
    if-ge v4, v3, :cond_2

    .line 356
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 357
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    if-ne v5, v6, :cond_1

    .line 358
    goto :goto_1

    .line 355
    .end local v5    # "ch":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 361
    :cond_2
    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    return-object v5
.end method

.method private static validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ssVersion"    # Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 238
    sget-object v0, Lorg/apache/poi/ss/util/CellReference;->COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 239
    .local v0, "colMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "colStr":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v2

    .line 245
    .end local v1    # "colStr":Ljava/lang/String;
    :cond_0
    sget-object v1, Lorg/apache/poi/ss/util/CellReference;->ROW_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 246
    .local v1, "rowMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "rowStr":Ljava/lang/String;
    invoke-static {v2, p1}, Lorg/apache/poi/ss/util/CellReference;->isRowWithnRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    sget-object v3, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v3

    .line 252
    .end local v2    # "rowStr":Ljava/lang/String;
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/util/CellReference;->NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v2

    .line 255
    :cond_2
    sget-object v2, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object v2
.end method


# virtual methods
.method appendCellReference(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 488
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    const/16 v1, 0x24

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 489
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 492
    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    if-eq v0, v2, :cond_3

    .line 495
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 500
    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 511
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 512
    return v0

    .line 514
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 515
    return v2

    .line 517
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ss/util/CellReference;

    .line 518
    .local v1, "cr":Lorg/apache/poi/ss/util/CellReference;
    iget v3, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    iget v4, v1, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    iget v4, v1, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    iget-boolean v4, v1, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    iget-boolean v4, v1, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 450
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 451
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 452
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    .line 455
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCellRefParts()[Ljava/lang/String;
    .locals 3

    .line 476
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getCol()S
    .locals 1

    .line 149
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 526
    const/16 v0, 0x11

    .line 527
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/2addr v1, v2

    .line 528
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    add-int/2addr v0, v2

    .line 529
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    add-int/2addr v1, v2

    .line 530
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    add-int/2addr v0, v2

    .line 531
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isColAbsolute()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    return v0
.end method

.method public isRowAbsolute()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 461
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
