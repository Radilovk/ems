.class public abstract Lorg/apache/poi/hpsf/SpecialPropertySet;
.super Lorg/apache/poi/hpsf/MutablePropertySet;
.source "SpecialPropertySet.java"


# instance fields
.field private delegate:Lorg/apache/poi/hpsf/MutablePropertySet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hpsf/MutablePropertySet;)V
    .locals 0
    .param p1, "ps"    # Lorg/apache/poi/hpsf/MutablePropertySet;

    .line 91
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 1
    .param p1, "ps"    # Lorg/apache/poi/hpsf/PropertySet;

    .line 78
    invoke-direct {p0}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>()V

    .line 79
    new-instance v0, Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-direct {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    .line 80
    return-void
.end method

.method protected static getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "propertyValue"    # Ljava/lang/Object;

    .line 329
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 333
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    .line 334
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    .line 335
    .local v0, "b":[B
    array-length v1, v0

    if-nez v1, :cond_2

    .line 336
    const-string v1, ""

    return-object v1

    .line 338
    :cond_2
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 339
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 341
    :cond_3
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 342
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    :cond_4
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 345
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 348
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 350
    .end local v0    # "b":[B
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSection(Lorg/apache/poi/hpsf/Section;)V
    .locals 1
    .param p1, "section"    # Lorg/apache/poi/hpsf/Section;

    .line 191
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->addSection(Lorg/apache/poi/hpsf/Section;)V

    .line 192
    return-void
.end method

.method public clearSections()V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->clearSections()V

    .line 202
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getByteOrder()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getByteOrder()I

    move-result v0

    return v0
.end method

.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getClassID()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    return-object v0
.end method

.method public getFirstSection()Lorg/apache/poi/hpsf/Section;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getFormat()I

    move-result v0

    return v0
.end method

.method public getOSVersion()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getOSVersion()I

    move-result v0

    return v0
.end method

.method public getProperties()[Lorg/apache/poi/hpsf/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyBooleanValue(I)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method protected getPropertyIntValue(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public abstract getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
.end method

.method protected getPropertyStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "propertyId"    # I

    .line 324
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "propertyValue":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/poi/hpsf/SpecialPropertySet;->getPropertyStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSectionCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getSectionCount()I

    move-result v0

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/Section;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->getSections()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDocumentSummaryInformation()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->isDocumentSummaryInformation()Z

    move-result v0

    return v0
.end method

.method public isSummaryInformation()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->isSummaryInformation()Z

    move-result v0

    return v0
.end method

.method public setByteOrder(I)V
    .locals 1
    .param p1, "byteOrder"    # I

    .line 211
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->setByteOrder(I)V

    .line 212
    return-void
.end method

.method public setClassID(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 1
    .param p1, "classID"    # Lorg/apache/poi/hpsf/ClassID;

    .line 221
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->setClassID(Lorg/apache/poi/hpsf/ClassID;)V

    .line 222
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 231
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->setFormat(I)V

    .line 232
    return-void
.end method

.method public setOSVersion(I)V
    .locals 1
    .param p1, "osVersion"    # I

    .line 241
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->setOSVersion(I)V

    .line 242
    return-void
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/hpsf/WritingNotSupportedException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/NoSingleSectionException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutablePropertySet;->wasNull()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/MutablePropertySet;->write(Ljava/io/OutputStream;)V

    .line 270
    return-void
.end method

.method public write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/WritingNotSupportedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/apache/poi/hpsf/SpecialPropertySet;->delegate:Lorg/apache/poi/hpsf/MutablePropertySet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hpsf/MutablePropertySet;->write(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;)V

    .line 262
    return-void
.end method
