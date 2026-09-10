.class public final Lorg/apache/poi/ss/formula/SheetNameFormatter;
.super Ljava/lang/Object;
.source "SheetNameFormatter.java"


# static fields
.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final DELIMITER:C = '\''


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "([A-Za-z]+)([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/SheetNameFormatter;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static appendAndEscape(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "rawSheetName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 89
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 91
    .local v0, "ch":C
    if-ne v0, v3, :cond_0

    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "ch":C
    :cond_1
    return-void
.end method

.method public static appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/lang/StringBuffer;
    .param p1, "rawSheetName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x27

    .line 61
    invoke-static {p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->needsDelimiting(Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "needsQuotes":Z
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendAndEscape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "out"    # Ljava/lang/StringBuffer;
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "rawSheetName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x27

    const/16 v3, 0x5d

    const/16 v2, 0x5b

    .line 71
    invoke-static {p1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->needsDelimiting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->needsDelimiting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 72
    .local v0, "needsQuotes":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    const/16 v1, 0x28

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendAndEscape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    invoke-static {p0, p2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendAndEscape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    :goto_1
    return-void

    .line 71
    .end local v0    # "needsQuotes":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    .restart local v0    # "needsQuotes":Z
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lettersPrefix"    # Ljava/lang/String;
    .param p1, "numbersSuffix"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    return v0
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rawSheetName"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static isSpecialChar(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :goto_0
    :sswitch_0
    return v0

    .line 148
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :sswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found in sheet name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x2e -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static nameLooksLikeBooleanLiteral(Ljava/lang/String;)Z
    .locals 2
    .param p0, "rawSheetName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 136
    :goto_0
    return v0

    .line 132
    :sswitch_0
    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 134
    :sswitch_1
    const-string v0, "FALSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_1
        0x54 -> :sswitch_0
        0x66 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method static nameLooksLikePlainCellReference(Ljava/lang/String;)Z
    .locals 4
    .param p0, "rawSheetName"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v3, Lorg/apache/poi/ss/formula/SheetNameFormatter;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 214
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    const/4 v3, 0x0

    .line 221
    :goto_0
    return v3

    .line 219
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "lettersPrefix":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "numbersSuffix":Ljava/lang/String;
    invoke-static {v0, v2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private static needsDelimiting(Ljava/lang/String;)Z
    .locals 6
    .param p0, "rawSheetName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    .local v2, "len":I
    if-ge v2, v3, :cond_0

    .line 102
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Zero length string is an invalid sheet name"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    :cond_1
    :goto_0
    return v3

    .line 108
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->isSpecialChar(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 117
    invoke-static {p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->nameLooksLikePlainCellReference(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    :cond_4
    invoke-static {p0}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->nameLooksLikeBooleanLiteral(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 126
    goto :goto_0
.end method
