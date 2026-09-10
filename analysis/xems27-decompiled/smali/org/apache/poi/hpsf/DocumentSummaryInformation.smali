.class public Lorg/apache/poi/hpsf/DocumentSummaryInformation;
.super Lorg/apache/poi/hpsf/SpecialPropertySet;
.source "DocumentSummaryInformation.java"


# static fields
.field public static final DEFAULT_STREAM_NAME:Ljava/lang/String; = "\u0005DocumentSummaryInformation"


# direct methods
.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 3
    .param p1, "ps"    # Lorg/apache/poi/hpsf/PropertySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 60
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->isDocumentSummaryInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 61
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureSection2()V
    .locals 3

    .line 630
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 632
    new-instance v0, Lorg/apache/poi/hpsf/MutableSection;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/MutableSection;-><init>()V

    .line 633
    .local v0, "s2":Lorg/apache/poi/hpsf/MutableSection;
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/SectionIDMap;->DOCUMENT_SUMMARY_INFORMATION_ID:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->setFormatID([B)V

    .line 634
    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->addSection(Lorg/apache/poi/hpsf/Section;)V

    .line 636
    .end local v0    # "s2":Lorg/apache/poi/hpsf/MutableSection;
    :cond_0
    return-void
.end method

.method private notYetImplemented(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 659
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not yet implemented."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    .line 139
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 506
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomProperties()Lorg/apache/poi/hpsf/CustomProperties;
    .locals 12

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "cps":Lorg/apache/poi/hpsf/CustomProperties;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSectionCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 571
    new-instance v1, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-direct {v1}, Lorg/apache/poi/hpsf/CustomProperties;-><init>()V

    move-object v0, v1

    .line 572
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/Section;

    .line 573
    .local v1, "section":Lorg/apache/poi/hpsf/Section;
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getDictionary()Ljava/util/Map;

    move-result-object v2

    .line 574
    .local v2, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Section;->getProperties()[Lorg/apache/poi/hpsf/Property;

    move-result-object v3

    .line 575
    .local v3, "properties":[Lorg/apache/poi/hpsf/Property;
    const/4 v4, 0x0

    .line 576
    .local v4, "propertyCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 578
    aget-object v6, v3, v5

    .line 579
    .local v6, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v6}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v7

    .line 580
    .local v7, "id":J
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_0

    const-wide/16 v9, 0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_0

    .line 582
    add-int/lit8 v4, v4, 0x1

    .line 583
    new-instance v9, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v9, v6, v10}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    .line 585
    .local v9, "cp":Lorg/apache/poi/hpsf/CustomProperty;
    invoke-virtual {v9}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    .line 576
    .end local v6    # "p":Lorg/apache/poi/hpsf/Property;
    .end local v7    # "id":J
    .end local v9    # "cp":Lorg/apache/poi/hpsf/CustomProperty;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 588
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/CustomProperties;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 589
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/apache/poi/hpsf/CustomProperties;->setPure(Z)V

    .line 591
    .end local v1    # "section":Lorg/apache/poi/hpsf/Section;
    .end local v2    # "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v3    # "properties":[Lorg/apache/poi/hpsf/Property;
    .end local v4    # "propertyCount":I
    :cond_2
    return-object v0
.end method

.method public getDocparts()[B
    .locals 1

    .line 440
    const-string v0, "Reading byte arrays"

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 441
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getHeadingPair()[B
    .locals 1

    .line 406
    const-string v0, "Reading byte arrays "

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 407
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getHiddenCount()I
    .locals 1

    .line 305
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 172
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getLinksDirty()Z
    .locals 1

    .line 537
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getMMClipCount()I
    .locals 1

    .line 339
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getManager()Ljava/lang/String;
    .locals 1

    .line 474
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteCount()I
    .locals 1

    .line 271
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getParCount()I
    .locals 1

    .line 205
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getPresentationFormat()Ljava/lang/String;
    .locals 1

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 43
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public getScale()Z
    .locals 1

    .line 372
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyBooleanValue(I)Z

    move-result v0

    return v0
.end method

.method public getSlideCount()I
    .locals 1

    .line 238
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public removeByteCount()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 159
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 160
    return-void
.end method

.method public removeCategory()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 93
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 94
    return-void
.end method

.method public removeCompany()V
    .locals 3

    .line 525
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 526
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 527
    return-void
.end method

.method public removeCustomProperties()V
    .locals 2

    .line 643
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSectionCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 644
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 647
    return-void

    .line 646
    :cond_0
    new-instance v0, Lorg/apache/poi/hpsf/HPSFRuntimeException;

    const-string v1, "Illegal internal format of Document SummaryInformation stream: second section is missing."

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/HPSFRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDocparts()V
    .locals 3

    .line 461
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 462
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 463
    return-void
.end method

.method public removeHeadingPair()V
    .locals 3

    .line 425
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 426
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 427
    return-void
.end method

.method public removeHiddenCount()V
    .locals 3

    .line 324
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 325
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 326
    return-void
.end method

.method public removeLineCount()V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 192
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 193
    return-void
.end method

.method public removeLinksDirty()V
    .locals 3

    .line 556
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 557
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 558
    return-void
.end method

.method public removeMMClipCount()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 359
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 360
    return-void
.end method

.method public removeManager()V
    .locals 3

    .line 493
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 494
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 495
    return-void
.end method

.method public removeNoteCount()V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 291
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 292
    return-void
.end method

.method public removeParCount()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 225
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 226
    return-void
.end method

.method public removePresentationFormat()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 126
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 127
    return-void
.end method

.method public removeScale()V
    .locals 3

    .line 391
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 392
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 393
    return-void
.end method

.method public removeSlideCount()V
    .locals 3

    .line 257
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 258
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 259
    return-void
.end method

.method public setByteCount(I)V
    .locals 2
    .param p1, "byteCount"    # I

    .line 149
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 150
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 151
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 84
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .param p1, "company"    # Ljava/lang/String;

    .line 516
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 517
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 518
    return-void
.end method

.method public setCustomProperties(Lorg/apache/poi/hpsf/CustomProperties;)V
    .locals 5
    .param p1, "customProperties"    # Lorg/apache/poi/hpsf/CustomProperties;

    .line 601
    invoke-direct {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->ensureSection2()V

    .line 602
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 603
    .local v0, "section":Lorg/apache/poi/hpsf/MutableSection;
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getDictionary()Ljava/util/Map;

    move-result-object v1

    .line 604
    .local v1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutableSection;->clear()V

    .line 609
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    move-result v2

    .line 610
    .local v2, "cpCodepage":I
    if-gez v2, :cond_0

    .line 611
    invoke-virtual {v0}, Lorg/apache/poi/hpsf/MutableSection;->getCodepage()I

    move-result v2

    .line 612
    :cond_0
    if-gez v2, :cond_1

    .line 613
    const/16 v2, 0x4b0

    .line 614
    :cond_1
    invoke-virtual {p1, v2}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    .line 615
    invoke-virtual {v0, v2}, Lorg/apache/poi/hpsf/MutableSection;->setCodepage(I)V

    .line 616
    invoke-virtual {v0, v1}, Lorg/apache/poi/hpsf/MutableSection;->setDictionary(Ljava/util/Map;)V

    .line 617
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperties;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/CustomProperty;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hpsf/Property;

    .line 620
    .local v4, "p":Lorg/apache/poi/hpsf/Property;
    invoke-virtual {v0, v4}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(Lorg/apache/poi/hpsf/Property;)V

    .line 621
    .end local v4    # "p":Lorg/apache/poi/hpsf/Property;
    goto :goto_0

    .line 622
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hpsf/CustomProperty;>;"
    :cond_2
    return-void
.end method

.method public setDocparts([B)V
    .locals 1
    .param p1, "docparts"    # [B

    .line 453
    const-string v0, "Writing byte arrays"

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setHeadingPair([B)V
    .locals 1
    .param p1, "headingPair"    # [B

    .line 417
    const-string v0, "Writing byte arrays "

    invoke-direct {p0, v0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->notYetImplemented(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public setHiddenCount(I)V
    .locals 2
    .param p1, "hiddenCount"    # I

    .line 315
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 316
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 317
    return-void
.end method

.method public setLineCount(I)V
    .locals 2
    .param p1, "lineCount"    # I

    .line 182
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 183
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 184
    return-void
.end method

.method public setLinksDirty(Z)V
    .locals 2
    .param p1, "linksDirty"    # Z

    .line 547
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 548
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IZ)V

    .line 549
    return-void
.end method

.method public setMMClipCount(I)V
    .locals 2
    .param p1, "mmClipCount"    # I

    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 350
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 351
    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Ljava/lang/String;

    .line 484
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 485
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 486
    return-void
.end method

.method public setNoteCount(I)V
    .locals 2
    .param p1, "noteCount"    # I

    .line 281
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 282
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 283
    return-void
.end method

.method public setParCount(I)V
    .locals 2
    .param p1, "parCount"    # I

    .line 215
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 216
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 217
    return-void
.end method

.method public setPresentationFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "presentationFormat"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 117
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 118
    return-void
.end method

.method public setScale(Z)V
    .locals 2
    .param p1, "scale"    # Z

    .line 382
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 383
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IZ)V

    .line 384
    return-void
.end method

.method public setSlideCount(I)V
    .locals 2
    .param p1, "slideCount"    # I

    .line 248
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/DocumentSummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 249
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 250
    return-void
.end method
