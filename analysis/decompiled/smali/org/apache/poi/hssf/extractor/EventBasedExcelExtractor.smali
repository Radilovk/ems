.class public Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;
.super Lorg/apache/poi/POIOLE2TextExtractor;
.source "EventBasedExcelExtractor.java"

# interfaces
.implements Lorg/apache/poi/ss/extractor/ExcelExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    }
.end annotation


# instance fields
.field private _dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field _formulasNotResults:Z

.field _includeSheetNames:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/POIOLE2TextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    .line 79
    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 0
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .param p2, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 84
    return-void
.end method

.method private triggerExtraction()Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v3, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;

    invoke-direct {v3, p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;-><init>(Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;)V

    .line 165
    .local v3, "tl":Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    new-instance v1, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    invoke-direct {v1, v3}, Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;-><init>(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    .line 166
    .local v1, "ft":Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;
    iput-object v1, v3, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_ft:Lorg/apache/poi/hssf/eventusermodel/FormatTrackingHSSFListener;

    .line 169
    new-instance v0, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;

    invoke-direct {v0}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;-><init>()V

    .line 170
    .local v0, "factory":Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;
    new-instance v2, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;

    invoke-direct {v2}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;-><init>()V

    .line 171
    .local v2, "request":Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;
    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->addListenerForAllRecords(Lorg/apache/poi/hssf/eventusermodel/HSSFListener;)V

    .line 173
    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0, v2, v4}, Lorg/apache/poi/hssf/eventusermodel/HSSFEventFactory;->processWorkbookEvents(Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    .line 175
    return-object v3
.end method


# virtual methods
.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Metadata extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Metadata extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->triggerExtraction()Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;

    move-result-object v2

    .line 152
    .local v2, "tl":Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    iget-object v3, v2, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :cond_0
    return-object v1

    .line 156
    .end local v2    # "tl":Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor$TextListener;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setFormulasNotResults(Z)V
    .locals 0
    .param p1, "formulasNotResults"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_formulasNotResults:Z

    .line 141
    return-void
.end method

.method public setIncludeCellComments(Z)V
    .locals 2
    .param p1, "includeComments"    # Z

    .prologue
    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Comment extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIncludeHeadersFooters(Z)V
    .locals 2
    .param p1, "includeHeadersFooters"    # Z

    .prologue
    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Header/Footer extraction not supported in streaming mode, please use ExcelExtractor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIncludeSheetNames(Z)V
    .locals 0
    .param p1, "includeSheetNames"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lorg/apache/poi/hssf/extractor/EventBasedExcelExtractor;->_includeSheetNames:Z

    .line 134
    return-void
.end method
