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

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/POITextExtractor;)V
    .locals 0
    .param p1, "mainExtractor"    # Lorg/apache/poi/POITextExtractor;

    .line 46
    invoke-direct {p0, p1}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POITextExtractor;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

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

    .line 52
    new-instance v0, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/HPSFPropertiesOnlyDocument;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/POITextExtractor;-><init>(Lorg/apache/poi/POIDocument;)V

    .line 53
    return-void
.end method

.method private static getPropertiesText(Lorg/apache/poi/hpsf/SpecialPropertySet;)Ljava/lang/String;
    .locals 9
    .param p0, "ps"    # Lorg/apache/poi/hpsf/SpecialPropertySet;

    .line 96
    if-nez p0, :cond_0

    .line 98
    const-string v0, ""

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "text":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v1

    .line 104
    .local v1, "idMap":Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v2

    .line 105
    .local v2, "props":[Lorg/apache/poi/hpsf/Property;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 106
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "type":Ljava/lang/String;
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    .line 108
    .local v5, "typeObj":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    :cond_1
    aget-object v6, v2, v3

    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor$HelperPropertySet;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "val":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "typeObj":Ljava/lang/Object;
    .end local v6    # "val":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 161
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;

    new-instance v5, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;-><init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    .line 164
    .local v4, "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->close()V

    .line 167
    nop

    .line 160
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v4    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->close()V

    throw v5

    .line 169
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "ext":Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;
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

    .line 137
    invoke-super {p0}, Lorg/apache/poi/POITextExtractor;->close()V

    .line 139
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->toClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 140
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

    .line 60
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    move-result-object v0

    .line 65
    .local v0, "dsi":Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v1, "text":Ljava/lang/StringBuffer;
    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/SpecialPropertySet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;

    move-result-object v2

    .line 72
    .local v2, "cps":Lorg/apache/poi/hpsf/CustomProperties;
    :goto_0
    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v2}, Lorg/apache/poi/hpsf/CustomProperties;->nameSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 74
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/apache/poi/hpsf/CustomProperties;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor$HelperPropertySet;->getPropertyValueText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "val":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    goto :goto_1

    .line 82
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMetadataTextExtractor()Lorg/apache/poi/POITextExtractor;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You already have the Metadata Text Extractor, not recursing!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummaryInformationText()Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    if-nez v0, :cond_0

    .line 86
    const-string v0, ""

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->document:Lorg/apache/poi/POIDocument;

    invoke-virtual {v0}, Lorg/apache/poi/POIDocument;->getSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;

    move-result-object v0

    .line 92
    .local v0, "si":Lorg/apache/poi/hpsf/SummaryInformation;
    invoke-static {v0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getPropertiesText(Lorg/apache/poi/hpsf/SpecialPropertySet;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/extractor/HPSFPropertiesExtractor;->getDocumentSummaryInformationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
