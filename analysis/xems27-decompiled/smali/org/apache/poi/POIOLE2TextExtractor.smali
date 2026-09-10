.class public abstract Lorg/apache/poi/POIOLE2TextExtractor;
.super Lorg/apache/poi/POITextExtractor;
.source "POIOLE2TextExtractor.java"


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/poi/POIDocument;

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getDocSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    iget-object v0, v0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getFileSystem()Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/POITextExtractor;)V

    return-object v0
.end method

.method public getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    iget-object v0, v0, Lorg/apache/poi/POIDocument;->directory:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    return-object v0
.end method

.method public getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/POIOLE2TextExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    return-object v0
.end method
