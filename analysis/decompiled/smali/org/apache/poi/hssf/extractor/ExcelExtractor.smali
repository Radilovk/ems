.class public Lorg/apache/poi/hssf/extractor/ExcelExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "ExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;,
        Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    }
.end annotation


# instance fields
.field private _formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

.field private _includeBlankCells:Z

.field private _includeCellComments:Z

.field private _includeHeadersFooters:Z

.field private _includeSheetNames:Z

.field private _shouldEvaluateFormulas:Z

.field private _wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 2
    .param p1, "wb"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 57
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    .line 58
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    .line 59
    iput-boolean v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    .line 60
    iput-boolean v1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    .line 61
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    .line 65
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 66
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Z)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 70
    return-void
.end method

.method public static _extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 2
    .param p0, "hf"    # Lorg/apache/poi/ss/usermodel/HeaderFooter;

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 419
    .local v0, "text":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getLeft()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getCenter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 424
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getCenter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :cond_2
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getRight()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 429
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :cond_3
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/HeaderFooter;->getRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 433
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 214
    :try_start_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .local v0, "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->isRequestHelp()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 223
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    .line 248
    .end local v0    # "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    .line 218
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 229
    .end local v1    # "e":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    .restart local v0    # "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    .line 230
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 234
    .local v3, "is":Ljava/io/InputStream;
    :goto_1
    new-instance v4, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v4, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v4, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    new-instance v2, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {v2, v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 237
    .local v2, "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowSheetNames()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeSheetNames(Z)V

    .line 238
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldEvaluateFormulas()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_2
    invoke-virtual {v2, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setFormulasNotResults(Z)V

    .line 239
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowCellComments()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeCellComments(Z)V

    .line 240
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowBlankCells()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeBlankCells(Z)V

    .line 241
    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldIncludeHeadersFooters()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeHeadersFooters(Z)V

    .line 242
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    .end local v2    # "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :catch_1
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 232
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 238
    .restart local v2    # "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    .restart local v4    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static printUsageMessage(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "ps"    # Ljava/io/PrintStream;

    .prologue
    .line 195
    const-string v0, "Use:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [<flag> <value> [<flag> <value> [...]]] [-i <filename.xls>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    const-string v0, "       -i <filename.xls> specifies input file (default is to use stdin)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    const-string v0, "       Flags can be set on or off by using the values \'Y\' or \'N\'."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    const-string v0, "       Following are available flags and their default values:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    const-string v0, "       --show-sheet-names  Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    const-string v0, "       --evaluate-formulas Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    const-string v0, "       --show-comments     N"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    const-string v0, "       --show-blanks       Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    const-string v0, "       --headers-footers   Y"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 26

    .prologue
    .line 288
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v20, "text":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v21, v0

    sget-object v22, Lorg/apache/poi/hssf/usermodel/HSSFRow;->RETURN_BLANK_AS_NULL:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual/range {v21 .. v22}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    .line 295
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_e

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v17

    .line 297
    .local v17, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    if-nez v17, :cond_1

    .line 295
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "name":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 302
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    .end local v14    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 309
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v8

    .line 313
    .local v8, "firstRow":I
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v13

    .line 314
    .local v13, "lastRow":I
    move v10, v8

    .local v10, "j":I
    :goto_2
    if-gt v10, v13, :cond_d

    .line 315
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v16

    .line 316
    .local v16, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v16, :cond_4

    .line 314
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 319
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getFirstCellNum()S

    move-result v7

    .line 320
    .local v7, "firstCell":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getLastCellNum()S

    move-result v12

    .line 321
    .local v12, "lastCell":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 322
    const/4 v7, 0x0

    .line 325
    :cond_5
    move v11, v7

    .local v11, "k":I
    :goto_4
    if-ge v11, v12, :cond_c

    .line 326
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v4

    .line 327
    .local v4, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    const/4 v15, 0x1

    .line 329
    .local v15, "outputContents":Z
    if-nez v4, :cond_8

    .line 331
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    .line 398
    :cond_6
    :goto_5
    if-eqz v15, :cond_7

    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    if-ge v11, v0, :cond_7

    .line 399
    const-string v21, "\t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 333
    :cond_8
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 384
    :pswitch_0
    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unexpected cell type ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 335
    :pswitch_1
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :cond_9
    :goto_6
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v5

    .line 389
    .local v5, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    if-eqz v5, :cond_6

    .line 392
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0xa

    const/16 v23, 0x20

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "commentText":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Comment by "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 338
    .end local v5    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .end local v6    # "commentText":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 343
    :pswitch_3
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 346
    :pswitch_4
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 349
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 350
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 352
    :cond_a
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()I

    move-result v21

    packed-switch v21, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_6

    .line 360
    :pswitch_7
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v19

    .line 361
    .local v19, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    if-nez v19, :cond_b

    .line 362
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 354
    .end local v19    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :pswitch_8
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v18

    .line 355
    .local v18, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v21

    if-lez v21, :cond_9

    .line 356
    invoke-virtual/range {v18 .. v18}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 364
    .end local v18    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .restart local v19    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v22

    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v24

    invoke-virtual/range {v19 .. v19}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v21 .. v25}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 374
    .end local v19    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :pswitch_9
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 377
    :pswitch_a
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 404
    .end local v4    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v15    # "outputContents":Z
    :cond_c
    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 408
    .end local v7    # "firstCell":I
    .end local v11    # "k":I
    .end local v12    # "lastCell":I
    .end local v16    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 409
    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 413
    .end local v8    # "firstRow":I
    .end local v10    # "j":I
    .end local v13    # "lastRow":I
    .end local v17    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 352
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setFormulasNotResults(Z)V
    .locals 1
    .param p1, "formulasNotResults"    # Z

    .prologue
    .line 260
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    .line 261
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIncludeBlankCells(Z)V
    .locals 0
    .param p1, "includeBlankCells"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    .line 275
    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0
    .param p1, "includeCellComments"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    .line 267
    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0
    .param p1, "includeHeadersFooters"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    .line 282
    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0
    .param p1, "includeSheetNames"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    .line 254
    return-void
.end method
