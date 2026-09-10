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
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    goto :goto_1

    .line 71
    .end local v0    # "e":Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "oe":Lorg/apache/poi/hssf/OldExcelFormatException;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    .line 75
    .end local v0    # "oe":Lorg/apache/poi/hssf/OldExcelFormatException;
    :goto_0
    nop

    .line 76
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    .line 67
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0
    .param p1, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 79
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "   OldExcelExtractor <filename>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

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

    .line 94
    const-string v0, "Book"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    .line 95
    .local v0, "book":Lorg/apache/poi/poifs/filesystem/DocumentNode;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 100
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    .line 101
    return-void

    .line 96
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No Excel 5/95 Book stream found"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .locals 4

    .line 114
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 119
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    .line 120
    .local v0, "bofSid":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0x209

    if-eq v0, v1, :cond_2

    const/16 v1, 0x409

    if-eq v0, v1, :cond_1

    const/16 v1, 0x809

    if-ne v0, v1, :cond_0

    .line 131
    const/4 v1, 0x5

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not begin with a BOF, found sid of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 129
    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 126
    goto :goto_0

    .line 122
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 123
    nop

    .line 138
    :goto_0
    new-instance v1, Lorg/apache/poi/hssf/record/BOFRecord;

    iget-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 139
    .local v1, "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    .line 140
    return-void

    .line 115
    .end local v0    # "bofSid":I
    .end local v1    # "bof":Lorg/apache/poi/hssf/record/BOFRecord;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File contains no records!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBiffVersion()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 11

    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v0, "text":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "codepage":Lorg/apache/poi/hssf/record/CodepageRecord;
    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 169
    :goto_0
    iget-object v8, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 170
    iget-object v8, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v8

    .line 171
    .local v8, "sid":I
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 173
    const/4 v9, 0x4

    const/16 v10, 0xa

    if-eq v8, v9, :cond_9

    const/16 v9, 0x42

    if-eq v8, v9, :cond_8

    const/16 v9, 0x85

    if-eq v8, v9, :cond_7

    const/16 v9, 0x27e

    if-eq v8, v9, :cond_6

    const/16 v9, 0x406

    if-eq v8, v9, :cond_2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    const/16 v9, 0x203

    if-eq v8, v9, :cond_0

    const/16 v9, 0x204

    if-eq v8, v9, :cond_9

    const/16 v9, 0x206

    if-eq v8, v9, :cond_2

    const/16 v9, 0x207

    if-eq v8, v9, :cond_1

    .line 228
    .local v3, "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .local v4, "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .local v5, "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .local v6, "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .local v7, "rr":Lorg/apache/poi/hssf/record/RKRecord;
    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v10

    new-array v10, v10, [B

    invoke-virtual {v9, v10}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto/16 :goto_1

    .line 199
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_0
    new-instance v5, Lorg/apache/poi/hssf/record/NumberRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v5, v9}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 200
    .restart local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 201
    goto/16 :goto_1

    .line 192
    .end local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    :cond_1
    new-instance v4, Lorg/apache/poi/hssf/record/OldStringRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v4, v9}, Lorg/apache/poi/hssf/record/OldStringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 193
    .restart local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/OldStringRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 194
    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    goto/16 :goto_1

    .line 206
    .restart local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    :cond_2
    iget v7, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    const/4 v9, 0x5

    if-ne v7, v9, :cond_4

    .line 207
    new-instance v7, Lorg/apache/poi/hssf/record/FormulaRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 208
    .local v7, "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v9

    if-nez v9, :cond_3

    .line 209
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 211
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/FormulaRecord;
    :cond_3
    goto :goto_1

    .line 212
    :cond_4
    new-instance v7, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/OldFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 213
    .local v7, "fr":Lorg/apache/poi/hssf/record/OldFormulaRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getCachedResultType()I

    move-result v9

    if-nez v9, :cond_5

    .line 214
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 217
    .end local v7    # "fr":Lorg/apache/poi/hssf/record/OldFormulaRecord;
    :cond_5
    goto :goto_1

    .line 219
    :cond_6
    new-instance v7, Lorg/apache/poi/hssf/record/RKRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v7, v9}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 220
    .local v7, "rr":Lorg/apache/poi/hssf/record/RKRecord;
    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v9

    invoke-virtual {p0, v0, v9, v10}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    .line 221
    goto :goto_1

    .line 176
    .end local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .end local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .end local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_7
    new-instance v3, Lorg/apache/poi/hssf/record/OldSheetRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v9}, Lorg/apache/poi/hssf/record/OldSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 177
    .restart local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/record/OldSheetRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 178
    const-string v9, "Sheet: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    goto :goto_1

    .line 224
    .restart local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .restart local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .restart local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .restart local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_8
    new-instance v9, Lorg/apache/poi/hssf/record/CodepageRecord;

    iget-object v10, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v9, v10}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    move-object v1, v9

    .line 225
    goto :goto_1

    .line 185
    .end local v4    # "sr":Lorg/apache/poi/hssf/record/OldStringRecord;
    .end local v5    # "nr":Lorg/apache/poi/hssf/record/NumberRecord;
    .end local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .end local v7    # "rr":Lorg/apache/poi/hssf/record/RKRecord;
    :cond_9
    new-instance v6, Lorg/apache/poi/hssf/record/OldLabelRecord;

    iget-object v9, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v6, v9}, Lorg/apache/poi/hssf/record/OldLabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 186
    .restart local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    invoke-virtual {v6, v1}, Lorg/apache/poi/hssf/record/OldLabelRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    .line 187
    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    nop

    .line 230
    .end local v3    # "shr":Lorg/apache/poi/hssf/record/OldSheetRecord;
    .end local v6    # "lr":Lorg/apache/poi/hssf/record/OldLabelRecord;
    .end local v8    # "sid":I
    :goto_1
    goto/16 :goto_0

    .line 232
    :cond_a
    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    if-eqz v3, :cond_b

    .line 234
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 235
    :catch_0
    move-exception v3

    :goto_2
    nop

    .line 236
    iput-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->input:Ljava/io/Closeable;

    .line 238
    :cond_b
    iput-object v2, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected handleNumericCell(Ljava/lang/StringBuffer;D)V
    .locals 1
    .param p1, "text"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # D

    .line 245
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 246
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    return-void
.end method
