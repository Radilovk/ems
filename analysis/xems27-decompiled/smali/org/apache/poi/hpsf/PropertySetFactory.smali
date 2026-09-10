.class public Lorg/apache/poi/hpsf/PropertySetFactory;
.super Ljava/lang/Object;
.source "PropertySetFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

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

    .line 92
    new-instance v0, Lorg/apache/poi/hpsf/PropertySet;

    invoke-direct {v0, p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v0, "ps":Lorg/apache/poi/hpsf/PropertySet;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/PropertySet;->isSummaryInformation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    return-object v1

    .line 97
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/PropertySet;->isDocumentSummaryInformation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    new-instance v1, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v1, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 100
    :cond_1
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 106
    .local v1, "ex":Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static create(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)Lorg/apache/poi/hpsf/PropertySet;
    .locals 4
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

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "inp":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 61
    .local v1, "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    new-instance v2, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 63
    :try_start_1
    invoke-static {v0}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v2
    :try_end_1
    .catch Lorg/apache/poi/hpsf/MarkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2

    .line 64
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/apache/poi/hpsf/MarkUnsupportedException;
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v3

    .end local v1    # "entry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .end local v2    # "e":Lorg/apache/poi/hpsf/MarkUnsupportedException;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static newDocumentSummaryInformation()Lorg/apache/poi/hpsf/DocumentSummaryInformation;
    .locals 4

    .line 138
    new-instance v0, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>()V

    .line 139
    .local v0, "ps":Lorg/apache/poi/hpsf/MutablePropertySet;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/MutableSection;

    .line 140
    .local v1, "s":Lorg/apache/poi/hpsf/MutableSection;
    sget-object v2, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID([B)V

    .line 143
    :try_start_0
    new-instance v2, Lorg/apache/poi/hpsf/DocumentSummaryInformation;

    invoke-direct {v2, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 145
    :catch_0
    move-exception v2

    .line 148
    .local v2, "ex":Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
    new-instance v3, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v3, v2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static newSummaryInformation()Lorg/apache/poi/hpsf/SummaryInformation;
    .locals 4

    .line 117
    new-instance v0, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>()V

    .line 118
    .local v0, "ps":Lorg/apache/poi/hpsf/MutablePropertySet;
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/MutableSection;

    .line 119
    .local v1, "s":Lorg/apache/poi/hpsf/MutableSection;
    sget-object v2, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->SUMMARY_INFORMATION_ID:[B

    invoke-virtual {v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID([B)V

    .line 122
    :try_start_0
    new-instance v2, Lorg/apache/poi/hpsf/SummaryInformation;

    invoke-direct {v2, v0}, Lorg/apache/poi/hpsf/SummaryInformation;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 124
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ex":Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
    new-instance v3, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    invoke-direct {v3, v2}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
