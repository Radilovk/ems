.class public Lorg/apache/poi/hpsf/PropertySetFactory;
.super Ljava/lang/Object;
.source "PropertySetFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Lorg/apache/poi/hpsf/MarkUnsupportedException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v1, p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v1, "ps":Lorg/apache/poi/hpsf/PropertySet;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->isSummaryInformation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v2, v1}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    move-object v1, v2

    .line 100
    .end local v1    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    :cond_0
    :goto_0
    return-object v1

    .line 97
    .restart local v1    # "ps":Lorg/apache/poi/hpsf/PropertySet;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/PropertySet;->isDocumentSummaryInformation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v2, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 5
    .param p0, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/apache/poi/hpsf/NoPropertySetStreamException;,
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, "inp":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 61
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    new-instance v3, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v3, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v2    # "inp":Ljava/io/InputStream;
    .local v3, "inp":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;
    :try_end_1
    .catch Lorg/apache/poi/hpsf/MarkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 66
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_0
    return-object v4

    .line 64
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/apache/poi/hpsf/MarkUnsupportedException;
    const/4 v4, 0x0

    .line 66
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .end local v0    # "e":Lorg/apache/poi/hpsf/MarkUnsupportedException;
    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .end local v3    # "inp":Ljava/io/InputStream;
    .restart local v2    # "inp":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v4

    .end local v2    # "inp":Ljava/io/InputStream;
    .restart local v1    # "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .restart local v3    # "inp":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "inp":Ljava/io/InputStream;
    .restart local v2    # "inp":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 5

    .prologue
    .line 138
    new-instance v1, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>()V

    .line 139
    .local v1, "ps":Lorg/apache/poi/hpsf/MutablePropertySet;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/MutableSection;

    .line 140
    .local v2, "s":Lorg/apache/poi/hpsf/MutableSection;
    sget-object v3, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID([B)V

    .line 143
    :try_start_0
    new-instance v3, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v3, v1}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 145
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
    new-instance v3, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v3, v0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>()V

    .line 118
    .local v1, "ps":Lorg/apache/poi/hpsf/MutablePropertySet;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/MutableSection;

    .line 119
    .local v2, "s":Lorg/apache/poi/hpsf/MutableSection;
    sget-object v3, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:[B

    invoke-virtual {v2, v3}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID([B)V

    .line 122
    :try_start_0
    new-instance v3, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v3, v1}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 124
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
    new-instance v3, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v3, v0}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
