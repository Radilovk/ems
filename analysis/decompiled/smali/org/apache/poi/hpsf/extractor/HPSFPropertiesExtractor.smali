.class public Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
.super Lorg/apache/poi/POITextExtractor;
.source "HPSFPropertiesExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor$HelperPropertySet;
    }
.end annotation


# instance fields
.field private toClose:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/POIDocument;)V
    .locals 0
    .param p1, "doc"    # Lorg/apache/poi/POIDocument;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POITextExtractor;)V
    .locals 0
    .param p1, "mainExtractor"    # Lorg/apache/poi/POITextExtractor;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POITextExtractor;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    .prologue
    .line 55
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 56
    iput-object p1, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->toClose:Ljava/io/Closeable;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    .prologue
    .line 52
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 53
    return-void
.end method

.method private static getPropertiesText(Lorg/apache/poi/hpsf/SpecialPropertySet;)Ljava/lang/String;
    .locals 10
    .param p0, "ps"    # Lorg/apache/poi/hpsf/SpecialPropertySet;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 98
    const-string v7, ""

    .line 116
    :goto_0
    return-object v7

    .line 101
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v3, "text":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v1

    .line 104
    .local v1, "idMap":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 105
    .local v2, "props":[Lorg/apache/poi/hpsf/Property;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v2

    if-ge v0, v7, :cond_2

    .line 106
    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "type":Ljava/lang/String;
    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    .line 108
    .local v5, "typeObj":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    :cond_1
    aget-object v7, v2, v0

    invoke-virtual {v7}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor$HelperPropertySet;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "val":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "typeObj":Ljava/lang/Object;
    .end local v6    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 161
    .local v2, "file":Ljava/lang/String;
    new-instance v1, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    new-instance v5, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 164
    .local v1, "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->close()V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->close()V

    throw v5

    .line 169
    .end local v1    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    .end local v2    # "file":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0}, Lorg/apache/poi/POITextExtractor;->close()V

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->toClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->toClose:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->toClose:Ljava/io/Closeable;

    .line 143
    :cond_0
    return-void
.end method

.method public getDocumentSummaryInformationText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 60
    iget-object v6, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v6, :cond_0

    .line 61
    const-string v6, ""

    .line 82
    :goto_0
    return-object v6

    .line 64
    :cond_0
    iget-object v6, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v6}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v1

    .line 65
    .local v1, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v4, "text":Ljava/lang/StringBuffer;
    invoke-static {v1}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/SpecialPropertySet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 72
    .local v0, "cps":Lorg/apache/poi/hpsf/CustomProperties;
    :goto_1
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperties;->nameSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 74
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/CustomProperties;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor$HelperPropertySet;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "val":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 71
    .end local v0    # "cps":Lorg/apache/poi/hpsf/CustomProperties;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "val":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;

    move-result-object v0

    goto :goto_1

    .line 82
    .restart local v0    # "cps":Lorg/apache/poi/hpsf/CustomProperties;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummaryInformationText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v1, :cond_0

    .line 86
    const-string v1, ""

    .line 92
    :goto_0
    return-object v1

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v1}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    .line 92
    .local v0, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/SpecialPropertySet;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getDocumentSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
