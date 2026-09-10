.class public Lorg/apache/poi/hpsf/MutablePropertySet;
.super Lorg/apache/poi/hpsf/PropertySet;
.source "MutablePropertySet.java"


# instance fields
.field private final OFFSET_HEADER:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>()V

    .line 103
    sget-object v0, Lorg/apache/poi/hpsf/MutablePropertySet;->BYTE_ORDER_ASSERTION:[B

    array-length v0, v0

    sget-object v1, Lorg/apache/poi/hpsf/MutablePropertySet;->FORMAT_ASSERTION:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->OFFSET_HEADER:I

    .line 54
    sget-object v0, Lorg/apache/poi/hpsf/MutablePropertySet;->BYTE_ORDER_ASSERTION:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->byteOrder:I

    .line 57
    sget-object v0, Lorg/apache/poi/hpsf/MutablePropertySet;->FORMAT_ASSERTION:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->format:I

    .line 61
    const v0, 0x20a04

    iput v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->osVersion:I

    .line 64
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/ClassID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    new-instance v1, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 5
    .param p1, "ps"    # Lorg/apache/poi/hpsf/PropertySet;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/poi/hpsf/PropertySet;-><init>()V

    .line 103
    sget-object v3, Lorg/apache/poi/hpsf/MutablePropertySet;->BYTE_ORDER_ASSERTION:[B

    array-length v3, v3

    sget-object v4, Lorg/apache/poi/hpsf/MutablePropertySet;->FORMAT_ASSERTION:[B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->OFFSET_HEADER:I

    .line 84
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getByteOrder()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->byteOrder:I

    .line 85
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getFormat()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->format:I

    .line 86
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getOSVersion()I

    move-result v3

    iput v3, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->osVersion:I

    .line 87
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hpsf/MutablePropertySet;->setClassID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 88
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;->clearSections()V

    .line 89
    iget-object v3, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    if-nez v3, :cond_0

    .line 90
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    .line 91
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/PropertySet;->getSections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hpsf/Section;

    .line 93
    .local v2, "section":Lorg/apache/poi/hpsf/Section;
    new-instance v1, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/MutableSection;-><init>(Lorg/apache/poi/hpsf/Section;)V

    .line 94
    .local v1, "s":Lorg/apache/poi/hpsf/MutableSection;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/MutablePropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    goto :goto_0

    .line 96
    .end local v1    # "s":Lorg/apache/poi/hpsf/MutableSection;
    .end local v2    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_1
    return-void
.end method


# virtual methods
.method public addSection(Lorg/apache/poi/hpsf/Section;)V
    .locals 1
    .param p1, "section"    # Lorg/apache/poi/hpsf/Section;

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public clearSections()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    .line 169
    return-void
.end method

.method public setByteOrder(I)V
    .locals 0
    .param p1, "byteOrder"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->byteOrder:I

    .line 120
    return-void
.end method

.method public setClassID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0
    .param p1, "classID"    # Lorg/apache/poi/hpsf/ClassID;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->classID:Lorg/apache/poi/hpsf/ClassID;

    .line 159
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 131
    iput p1, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->format:I

    .line 132
    return-void
.end method

.method public setOSVersion(I)V
    .locals 0
    .param p1, "osVersion"    # I

    .prologue
    .line 143
    iput p1, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->osVersion:I

    .line 144
    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    .local v0, "psStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 277
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 278
    .local v1, "streamData":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v2

    .line 275
    .end local v1    # "streamData":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v2
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v10, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 203
    .local v5, "nrSections":I
    const/4 v4, 0x0

    .line 206
    .local v4, "length":I
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getByteOrder()I

    move-result v10

    int-to-short v10, v10

    invoke-static {p1, v10}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;S)I

    move-result v10

    add-int/2addr v4, v10

    .line 207
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFormat()I

    move-result v10

    int-to-short v10, v10

    invoke-static {p1, v10}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;S)I

    move-result v10

    add-int/2addr v4, v10

    .line 208
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getOSVersion()I

    move-result v10

    invoke-static {p1, v10}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    move-result v10

    add-int/2addr v4, v10

    .line 209
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v10

    invoke-static {p1, v10}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)I

    move-result v10

    add-int/2addr v4, v10

    .line 210
    invoke-static {p1, v5}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;I)I

    move-result v10

    add-int/2addr v4, v10

    .line 211
    iget v6, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->OFFSET_HEADER:I

    .line 216
    .local v6, "offset":I
    mul-int/lit8 v10, v5, 0x14

    add-int/2addr v6, v10

    .line 217
    move v9, v6

    .line 218
    .local v9, "sectionsBegin":I
    iget-object v10, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hpsf/Section;

    .local v8, "section":Lorg/apache/poi/hpsf/Section;
    move-object v7, v8

    .line 220
    check-cast v7, Lorg/apache/poi/hpsf/MutableSection;

    .line 221
    .local v7, "s":Lorg/apache/poi/hpsf/MutableSection;
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/MutableSection;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    .line 222
    .local v2, "formatID":Lorg/apache/poi/hpsf/ClassID;
    if-nez v2, :cond_0

    .line 223
    new-instance v10, Lorg/apache/poi/hpsf/NoFormatIDException;

    invoke-direct {v10}, Lorg/apache/poi/hpsf/NoFormatIDException;-><init>()V

    throw v10

    .line 224
    :cond_0
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/MutableSection;->getFormatID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v10

    invoke-static {p1, v10}, Lorg/apache/poi/hpsf/TypeWriter;->writeToStream(Ljava/io/OutputStream;Lorg/apache/poi/hpsf/ClassID;)I

    move-result v10

    add-int/2addr v4, v10

    .line 225
    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lorg/apache/poi/hpsf/TypeWriter;->writeUIntToStream(Ljava/io/OutputStream;J)I

    move-result v10

    add-int/2addr v4, v10

    .line 228
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/poi/hpsf/MutableSection;->getSize()I
    :try_end_0
    .catch Lorg/apache/poi/hpsf/HPSFRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    add-int/2addr v6, v10

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 232
    .local v1, "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;->getReason()Ljava/lang/Throwable;

    move-result-object v0

    .line 233
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v10, v0, Ljava/io/UnsupportedEncodingException;

    if-eqz v10, :cond_1

    .line 234
    new-instance v10, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    invoke-direct {v10, v0}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 236
    :cond_1
    throw v1

    .line 241
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "ex":Lorg/apache/poi/hpsf/HPSFRuntimeException;
    .end local v2    # "formatID":Lorg/apache/poi/hpsf/ClassID;
    .end local v7    # "s":Lorg/apache/poi/hpsf/MutableSection;
    .end local v8    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_2
    move v6, v9

    .line 242
    iget-object v10, p0, Lorg/apache/poi/hpsf/MutablePropertySet;->sections:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hpsf/Section;

    .restart local v8    # "section":Lorg/apache/poi/hpsf/Section;
    move-object v7, v8

    .line 244
    check-cast v7, Lorg/apache/poi/hpsf/MutableSection;

    .line 245
    .restart local v7    # "s":Lorg/apache/poi/hpsf/MutableSection;
    invoke-virtual {v7, p1}, Lorg/apache/poi/hpsf/MutableSection;->write(Ljava/io/OutputStream;)I

    move-result v10

    add-int/2addr v6, v10

    .line 246
    goto :goto_1

    .line 249
    .end local v7    # "s":Lorg/apache/poi/hpsf/MutableSection;
    .end local v8    # "section":Lorg/apache/poi/hpsf/Section;
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 250
    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    .line 298
    .local v0, "e":Lorg/apache/poi/poifs/filesystem/Entry;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "e":Lorg/apache/poi/poifs/filesystem/Entry;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;->toInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 306
    return-void

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method
