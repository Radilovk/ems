.class public Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
.super Ljava/lang/Object;
.source "OldExcelExtractor.java"


# instance fields
.field private biffVersion:I

.field private fileType:I

.field private input:Ljava/io/Closeable;

.field private ris:Lorg/apache/poi/hssf/record/RecordInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_0
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "oe":Lorg/apache/poi/hssf/OldExcelFormatException;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    goto :goto_0

    .line 73
    .end local v1    # "oe":Lorg/apache/poi/hssf/OldExcelFormatException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 62
    .local v0, "bstream":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 79
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 104
    array-length v1, p0

    if-ge v1, v3, :cond_0

    .line 105
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "   OldExcelExtractor <filename>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 109
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;-><init>(Ljava/io/File;)V

    .line 110
    .local v0, "extractor":Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private open(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "biffStream"    # Ljava/io/InputStream;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    .line 86
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 87
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    .line 88
    return-void
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 3
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v1, "Book"

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 95
    .local v0, "book":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    if-nez v0, :cond_0

    .line 96
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No Excel 5/95 Book stream found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 100
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    .line 101
    return-void
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    .line 91
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 92
    return-void
.end method

.method private prepare()V
    .locals 5

    .prologue
    .line 114
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "File contains no records!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 119
    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v1

    .line 120
    .local v1, "bofSid":I
    sparse-switch v1, :sswitch_data_0

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File does not begin with a BOF, found sid of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :sswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 138
    :goto_0
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, v2}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 139
    .local v0, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    .line 140
    return-void

    .line 125
    .end local v0    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :sswitch_1
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    goto :goto_0

    .line 128
    :sswitch_2
    const/4 v2, 0x4

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    goto :goto_0

    .line 131
    :sswitch_3
    const/4 v2, 0x5

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    goto :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x209 -> :sswitch_1
        0x409 -> :sswitch_2
        0x809 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getBiffVersion()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xa

    .line 162
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v8, "text":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 169
    .local v0, "codepage":Lorg/apache/poi/hssf/record/CodepageRecord;
    :cond_0
    :goto_0
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 170
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v6

    .line 171
    .local v6, "sid":I
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 173
    sparse-switch v6, :sswitch_data_0

    .line 228
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v10}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v10

    new-array v10, v10, [B

    invoke-virtual {v9, v10}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto :goto_0

    .line 176
    :sswitch_0
    new-instance v5, Lorg/apache/poi/hssf/record/OldSheetRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v5, v9}, Lorg/apache/poi/hssf/record/OldSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 177
    .local v5, "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    invoke-virtual {v5, v0}, Lorg/apache/poi/hssf/record/OldSheetRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 178
    const-string v9, "Sheet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    .end local v5    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    :sswitch_1
    new-instance v2, Lorg/apache/poi/hssf/record/OldLabelRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v2, v9}, Lorg/apache/poi/hssf/record/OldLabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 186
    .local v2, "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/record/OldLabelRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 187
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 192
    .end local v2    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    :sswitch_2
    new-instance v7, Lorg/apache/poi/hssf/record/OldStringRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/OldStringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 193
    .local v7, "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    invoke-virtual {v7, v0}, Lorg/apache/poi/hssf/record/OldStringRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 194
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 199
    .end local v7    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    :sswitch_3
    new-instance v3, Lorg/apache/poi/hssf/record/NumberRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v9}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 200
    .local v3, "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v10

    invoke-virtual {p0, v8, v10, v11}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    goto :goto_0

    .line 206
    .end local v3    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    :sswitch_4
    iget v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    .line 207
    new-instance v1, Lorg/apache/poi/hssf/record/FormulaRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, v9}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 208
    .local v1, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v9

    if-nez v9, :cond_0

    .line 209
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v10

    invoke-virtual {p0, v8, v10, v11}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    goto/16 :goto_0

    .line 212
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_1
    new-instance v1, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, v9}, Lorg/apache/poi/hssf/record/OldFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 213
    .local v1, "fr":Lorg/apache/poi/hssf/record/OldFormulaRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getCachedResultType()I

    move-result v9

    if-nez v9, :cond_0

    .line 214
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v10

    invoke-virtual {p0, v8, v10, v11}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    goto/16 :goto_0

    .line 219
    .end local v1    # "fr":Lorg/apache/poi/hssf/record/OldFormulaRecord;
    :sswitch_5
    new-instance v4, Lorg/apache/poi/hssf/record/RKRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v4, v9}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 220
    .local v4, "rr":Lorg/apache/poi/hssf/record/RKRecord;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v10

    invoke-virtual {p0, v8, v10, v11}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    goto/16 :goto_0

    .line 224
    .end local v4    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :sswitch_6
    new-instance v0, Lorg/apache/poi/hssf/record/CodepageRecord;

    .end local v0    # "codepage":Lorg/apache/poi/hssf/record/CodepageRecord;
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, v9}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 225
    .restart local v0    # "codepage":Lorg/apache/poi/hssf/record/CodepageRecord;
    goto/16 :goto_0

    .line 232
    .end local v6    # "sid":I
    :cond_2
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    if-eqz v9, :cond_3

    .line 234
    :try_start_0
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    iput-object v13, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    .line 238
    :cond_3
    iput-object v13, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 240
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 235
    :catch_0
    move-exception v9

    goto :goto_1

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x6 -> :sswitch_4
        0x7 -> :sswitch_2
        0x42 -> :sswitch_6
        0x85 -> :sswitch_0
        0x203 -> :sswitch_3
        0x204 -> :sswitch_1
        0x206 -> :sswitch_4
        0x207 -> :sswitch_2
        0x27e -> :sswitch_5
        0x406 -> :sswitch_4
    .end sparse-switch
.end method

.method protected handleNumericCell(Ljava/lang/StringBuffer;D)V
    .locals 2
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # D

    .prologue
    .line 245
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 246
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    return-void
.end method
