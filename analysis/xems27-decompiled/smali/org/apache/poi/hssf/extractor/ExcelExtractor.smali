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

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    .line 58
    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    .line 59
    const/4 v1, 0x0

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

    .line 69
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 70
    return-void
.end method

.method public static _extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;
    .locals 3
    .param p0, "hf"    # Lorg/apache/poi/ss/usermodel/HeaderFooter;

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

    const-string v2, "\t"

    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 214
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;

    invoke-direct {v2, p0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 220
    .local v1, "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    nop

    .line 222
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->isRequestHelp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    .line 224
    return-void

    .line 229
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 230
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    .local v2, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 232
    .end local v2    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->getInputFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 234
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v3, "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    new-instance v4, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-direct {v4, v3}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    .line 237
    .local v4, "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowSheetNames()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeSheetNames(Z)V

    .line 238
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldEvaluateFormulas()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setFormulasNotResults(Z)V

    .line 239
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowCellComments()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeCellComments(Z)V

    .line 240
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldShowBlankCells()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeBlankCells(Z)V

    .line 241
    invoke-virtual {v1}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;->shouldIncludeHeadersFooters()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->setIncludeHeadersFooters(Z)V

    .line 242
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v4}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "wb":Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .end local v4    # "extractor":Lorg/apache/poi/hssf/extractor/ExcelExtractor;
    goto :goto_2

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 215
    .end local v1    # "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    :catch_1
    move-exception v2

    .line 216
    .restart local v1    # "cmdArgs":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandArgs;
    .local v2, "e":Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/extractor/ExcelExtractor$CommandParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->printUsageMessage(Ljava/io/PrintStream;)V

    .line 218
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 219
    return-void
.end method

.method private static printUsageMessage(Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "ps"    # Ljava/io/PrintStream;

    .line 195
    const-string v0, "Use:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/apache/poi/hssf/extractor/ExcelExtractor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [<flag> <value> [<flag> <value> [...]]] [-i <filename.xls>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 21

    .line 288
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v1, "text":Ljava/lang/StringBuffer;
    iget-object v2, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v3, Lorg/apache/poi/hssf/usermodel/HSSFRow;->RETURN_BLANK_AS_NULL:Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->setMissingCellPolicy(Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)V

    .line 295
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    iget-object v5, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v5

    if-ge v2, v5, :cond_17

    .line 296
    iget-object v5, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v5, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v5

    .line 297
    .local v5, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 299
    :cond_0
    iget-boolean v6, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    const-string v7, "\n"

    if-eqz v6, :cond_1

    .line 300
    iget-object v6, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_wb:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v6, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 302
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    iget-boolean v6, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    if-eqz v6, :cond_2

    .line 309
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v6

    .line 313
    .local v6, "firstRow":I
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v8

    .line 314
    .local v8, "lastRow":I
    move v9, v6

    .local v9, "j":I
    :goto_1
    if-gt v9, v8, :cond_15

    .line 315
    invoke-virtual {v5, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    .line 316
    .local v10, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    if-nez v10, :cond_3

    move/from16 v16, v6

    move/from16 v17, v8

    goto/16 :goto_7

    .line 319
    :cond_3
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getFirstCellNum()S

    move-result v11

    .line 320
    .local v11, "firstCell":I
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getLastCellNum()S

    move-result v12

    .line 321
    .local v12, "lastCell":I
    iget-boolean v13, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    if-eqz v13, :cond_4

    .line 322
    const/4 v11, 0x0

    .line 325
    :cond_4
    move v13, v11

    .local v13, "k":I
    :goto_2
    if-ge v13, v12, :cond_14

    .line 326
    invoke-virtual {v10, v13}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v14

    .line 327
    .local v14, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    const/4 v15, 0x1

    .line 329
    .local v15, "outputContents":Z
    if-nez v14, :cond_5

    .line 331
    iget-boolean v15, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    move/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_6

    .line 333
    :cond_5
    move/from16 v16, v6

    .end local v6    # "firstRow":I
    .local v16, "firstRow":I
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v6

    if-eqz v6, :cond_11

    move/from16 v17, v8

    .end local v8    # "lastRow":I
    .local v17, "lastRow":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_10

    const/4 v8, 0x2

    move-object/from16 v19, v10

    .end local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .local v19, "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    const/4 v10, 0x4

    if-eq v6, v8, :cond_8

    if-eq v6, v10, :cond_7

    const/4 v3, 0x5

    if-ne v6, v3, :cond_6

    .line 346
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    move/from16 v20, v11

    goto/16 :goto_5

    .line 384
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected cell type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_7
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 344
    move/from16 v20, v11

    goto/16 :goto_5

    .line 349
    :cond_8
    iget-boolean v6, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    if-nez v6, :cond_9

    .line 350
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellFormula()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v20, v11

    goto/16 :goto_5

    .line 352
    :cond_9
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()I

    move-result v6

    if-eqz v6, :cond_e

    const/4 v8, 0x1

    if-eq v6, v8, :cond_c

    if-eq v6, v10, :cond_b

    const/4 v8, 0x5

    if-eq v6, v8, :cond_a

    goto :goto_3

    .line 377
    .local v3, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .local v4, "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :cond_a
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v20, v11

    goto :goto_4

    .line 374
    :cond_b
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 375
    move/from16 v20, v11

    goto :goto_4

    .line 354
    .end local v3    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .end local v4    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    :cond_c
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v3

    .line 355
    .restart local v3    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v6

    if-lez v6, :cond_d

    .line 356
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    .end local v3    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :cond_d
    :goto_3
    move/from16 v20, v11

    goto :goto_4

    .line 360
    .restart local v3    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :cond_e
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v4

    .line 361
    .restart local v4    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    if-nez v4, :cond_f

    .line 362
    move v6, v11

    .end local v11    # "firstCell":I
    .local v6, "firstCell":I
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move/from16 v20, v6

    goto :goto_4

    .line 364
    .end local v6    # "firstCell":I
    .restart local v11    # "firstCell":I
    :cond_f
    move v6, v11

    .end local v11    # "firstCell":I
    .restart local v6    # "firstCell":I
    iget-object v8, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v10

    move-object/from16 v18, v3

    .end local v3    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    .local v18, "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormat()S

    move-result v3

    move/from16 v20, v6

    .end local v6    # "firstCell":I
    .local v20, "firstCell":I
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v10, v11, v3, v6}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    nop

    .line 382
    .end local v4    # "style":Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .end local v18    # "str":Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
    :goto_4
    goto :goto_5

    .line 335
    .end local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v20    # "firstCell":I
    .restart local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v11    # "firstCell":I
    :cond_10
    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v11    # "firstCell":I
    .restart local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v20    # "firstCell":I
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    goto :goto_5

    .line 338
    .end local v17    # "lastRow":I
    .end local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v20    # "firstCell":I
    .restart local v8    # "lastRow":I
    .restart local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v11    # "firstCell":I
    :cond_11
    move/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, v11

    .end local v8    # "lastRow":I
    .end local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v11    # "firstCell":I
    .restart local v17    # "lastRow":I
    .restart local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v20    # "firstCell":I
    iget-object v3, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_formatter:Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;

    invoke-virtual {v3, v14}, Lorg/apache/poi/hssf/usermodel/HSSFDataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    nop

    .line 388
    :goto_5
    invoke-virtual {v14}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellComment()Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v3

    .line 389
    .local v3, "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    iget-boolean v6, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    if-eqz v6, :cond_12

    if-eqz v3, :cond_12

    .line 392
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getString()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    const/16 v8, 0x20

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "commentText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Comment by "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    .end local v3    # "comment":Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .end local v4    # "commentText":Ljava/lang/String;
    :cond_12
    :goto_6
    if-eqz v15, :cond_13

    add-int/lit8 v6, v12, -0x1

    if-ge v13, v6, :cond_13

    .line 399
    const-string v6, "\t"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    .end local v14    # "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .end local v15    # "outputContents":Z
    :cond_13
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v16

    move/from16 v8, v17

    move-object/from16 v10, v19

    move/from16 v11, v20

    goto/16 :goto_2

    .end local v16    # "firstRow":I
    .end local v17    # "lastRow":I
    .end local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v20    # "firstCell":I
    .local v6, "firstRow":I
    .restart local v8    # "lastRow":I
    .restart local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v11    # "firstCell":I
    :cond_14
    move/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, v11

    .line 404
    .end local v6    # "firstRow":I
    .end local v8    # "lastRow":I
    .end local v10    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v11    # "firstCell":I
    .end local v13    # "k":I
    .restart local v16    # "firstRow":I
    .restart local v17    # "lastRow":I
    .restart local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .restart local v20    # "firstCell":I
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    .end local v12    # "lastCell":I
    .end local v19    # "row":Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .end local v20    # "firstCell":I
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v16

    move/from16 v8, v17

    goto/16 :goto_1

    .end local v16    # "firstRow":I
    .end local v17    # "lastRow":I
    .restart local v6    # "firstRow":I
    .restart local v8    # "lastRow":I
    :cond_15
    move/from16 v16, v6

    move/from16 v17, v8

    .line 408
    .end local v6    # "firstRow":I
    .end local v8    # "lastRow":I
    .end local v9    # "j":I
    .restart local v16    # "firstRow":I
    .restart local v17    # "lastRow":I
    iget-boolean v6, v0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    if-eqz v6, :cond_16

    .line 409
    invoke-virtual {v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_extractHeaderFooter(Lorg/apache/poi/ss/usermodel/HeaderFooter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    .end local v5    # "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .end local v16    # "firstRow":I
    .end local v17    # "lastRow":I
    :cond_16
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setFormulasNotResults(Z)V
    .locals 1
    .param p1, "formulasNotResults"    # Z

    .line 260
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_shouldEvaluateFormulas:Z

    .line 261
    return-void
.end method

.method public setIncludeBlankCells(Z)V
    .locals 0
    .param p1, "includeBlankCells"    # Z

    .line 274
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeBlankCells:Z

    .line 275
    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 0
    .param p1, "includeCellComments"    # Z

    .line 266
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeCellComments:Z

    .line 267
    return-void
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 0
    .param p1, "includeHeadersFooters"    # Z

    .line 281
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeHeadersFooters:Z

    .line 282
    return-void
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0
    .param p1, "includeSheetNames"    # Z

    .line 253
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/ExcelExtractor;->_includeSheetNames:Z

    .line 254
    return-void
.end method
