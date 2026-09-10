.class final Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
.super Ljava/lang/Object;
.source "ExcelExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/extractor/ExcelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandArgs"
.end annotation


# instance fields
.field private final _evaluateFormulas:Z

.field private final _headersFooters:Z

.field private final _inputFile:Ljava/io/File;

.field private final _requestHelp:Z

.field private final _showBlankCells:Z

.field private final _showCellComments:Z

.field private final _showSheetNames:Z


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    array-length v0, p1

    .line 97
    .local v0, "nArgs":I
    const/4 v1, 0x0

    .line 98
    .local v1, "inputFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 99
    .local v2, "requestHelp":Z
    const/4 v3, 0x1

    .line 100
    .local v3, "showSheetNames":Z
    const/4 v4, 0x1

    .line 101
    .local v4, "evaluateFormulas":Z
    const/4 v5, 0x0

    .line 102
    .local v5, "showCellComments":Z
    const/4 v6, 0x0

    .line 103
    .local v6, "showBlankCells":Z
    const/4 v7, 0x1

    .line 104
    .local v7, "headersFooters":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_b

    .line 105
    aget-object v9, p1, v8

    .line 106
    .local v9, "arg":Ljava/lang/String;
    const-string v10, "-help"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    const/4 v2, 0x1

    .line 108
    goto/16 :goto_2

    .line 110
    :cond_0
    const-string v10, "-i"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 112
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v0, :cond_4

    .line 115
    aget-object v9, p1, v8

    .line 116
    if-nez v1, :cond_3

    .line 119
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v10

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    const-string v11, "Specified input file \'"

    if-eqz v10, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_1

    .line 124
    :cond_1
    new-instance v10, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' is a directory"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 121
    :cond_2
    new-instance v10, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' does not exist"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 117
    :cond_3
    new-instance v10, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    const-string v11, "Only one input file can be supplied"

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 113
    :cond_4
    new-instance v10, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    const-string v11, "Expected filename after \'-i\'"

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 128
    :cond_5
    const-string v10, "--show-sheet-names"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 129
    add-int/lit8 v8, v8, 0x1

    invoke-static {p1, v8}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    move-result v3

    .line 130
    goto :goto_1

    .line 132
    :cond_6
    const-string v10, "--evaluate-formulas"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 133
    add-int/lit8 v8, v8, 0x1

    invoke-static {p1, v8}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    move-result v4

    .line 134
    goto :goto_1

    .line 136
    :cond_7
    const-string v10, "--show-comments"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 137
    add-int/lit8 v8, v8, 0x1

    invoke-static {p1, v8}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    move-result v5

    .line 138
    goto :goto_1

    .line 140
    :cond_8
    const-string v10, "--show-blanks"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 141
    add-int/lit8 v8, v8, 0x1

    invoke-static {p1, v8}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    move-result v6

    .line 142
    goto :goto_1

    .line 144
    :cond_9
    const-string v10, "--headers-footers"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 145
    add-int/lit8 v8, v8, 0x1

    invoke-static {p1, v8}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->parseBoolArg([Ljava/lang/String;I)Z

    move-result v7

    .line 146
    nop

    .line 104
    .end local v9    # "arg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 148
    .restart local v9    # "arg":Ljava/lang/String;
    :cond_a
    new-instance v10, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid argument \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 150
    .end local v8    # "i":I
    .end local v9    # "arg":Ljava/lang/String;
    :cond_b
    :goto_2
    iput-boolean v2, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_requestHelp:Z

    .line 151
    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_inputFile:Ljava/io/File;

    .line 152
    iput-boolean v3, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showSheetNames:Z

    .line 153
    iput-boolean v4, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_evaluateFormulas:Z

    .line 154
    iput-boolean v5, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showCellComments:Z

    .line 155
    iput-boolean v6, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showBlankCells:Z

    .line 156
    iput-boolean v7, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_headersFooters:Z

    .line 157
    return-void
.end method

.method private static parseBoolArg([Ljava/lang/String;I)Z
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
        }
    .end annotation

    .line 159
    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 162
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "value":Ljava/lang/String;
    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, -0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Expected \'Y\' or \'N\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 160
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    new-instance v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected value after \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInputFile()Ljava/io/File;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_inputFile:Ljava/io/File;

    return-object v0
.end method

.method public isRequestHelp()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_requestHelp:Z

    return v0
.end method

.method public shouldEvaluateFormulas()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_evaluateFormulas:Z

    return v0
.end method

.method public shouldIncludeHeadersFooters()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_headersFooters:Z

    return v0
.end method

.method public shouldShowBlankCells()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showBlankCells:Z

    return v0
.end method

.method public shouldShowCellComments()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showCellComments:Z

    return v0
.end method

.method public shouldShowSheetNames()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->_showSheetNames:Z

    return v0
.end method
