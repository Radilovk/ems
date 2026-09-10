.class public final Lorg/apache/poi/hpsf/SummaryInformation;
.super Lorg/apache/poi/hpsf/SpecialPropertySet;
.source "SummaryInformation.java"


# static fields
.field public static final DEFAULT_STREAM_NAME:Ljava/lang/String; = "\u0005SummaryInformation"


# direct methods
.method public constructor <init>(Lorg/apache/poi/hpsf/PropertySet;)V
    .locals 3
    .param p1, "ps"    # Lorg/apache/poi/hpsf/PropertySet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hpsf/UnexpectedPropertySetTypeException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/SpecialPropertySet;-><init>(Lorg/apache/poi/hpsf/PropertySet;)V

    .line 56
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->isSummaryInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 57
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


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 669
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharCount()I
    .locals 1

    .line 589
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 214
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDateTime()Ljava/util/Date;
    .locals 1

    .line 438
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getEditTime()J
    .locals 3

    .line 360
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 361
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 362
    const-wide/16 v1, 0x0

    return-wide v1

    .line 364
    :cond_0
    invoke-static {v0}, Lorg/apache/poi/hpsf/Util;->dateToFileTime(Ljava/util/Date;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 178
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAuthor()Ljava/lang/String;
    .locals 1

    .line 286
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPrinted()Ljava/util/Date;
    .locals 1

    .line 401
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getLastSaveDateTime()Ljava/util/Date;
    .locals 1

    .line 475
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .line 515
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getPropertySetIDMap()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 1

    .line 39
    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    return-object v0
.end method

.method public getRevNumber()Ljava/lang/String;
    .locals 1

    .line 322
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity()I
    .locals 1

    .line 722
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 250
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .line 632
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 1

    .line 552
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/poi/hpsf/SummaryInformation;->getPropertyIntValue(I)I

    move-result v0

    return v0
.end method

.method public removeApplicationName()V
    .locals 3

    .line 692
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 693
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 694
    return-void
.end method

.method public removeAuthor()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 166
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 167
    return-void
.end method

.method public removeCharCount()V
    .locals 3

    .line 612
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 613
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 614
    return-void
.end method

.method public removeComments()V
    .locals 3

    .line 237
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 238
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 239
    return-void
.end method

.method public removeCreateDateTime()V
    .locals 3

    .line 462
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 463
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 464
    return-void
.end method

.method public removeEditTime()V
    .locals 3

    .line 388
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 389
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 390
    return-void
.end method

.method public removeKeywords()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 202
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 203
    return-void
.end method

.method public removeLastAuthor()V
    .locals 3

    .line 309
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 310
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 311
    return-void
.end method

.method public removeLastPrinted()V
    .locals 3

    .line 425
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 426
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 427
    return-void
.end method

.method public removeLastSaveDateTime()V
    .locals 3

    .line 500
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 501
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 502
    return-void
.end method

.method public removePageCount()V
    .locals 3

    .line 538
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 539
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 540
    return-void
.end method

.method public removeRevNumber()V
    .locals 3

    .line 345
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 346
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 347
    return-void
.end method

.method public removeSecurity()V
    .locals 3

    .line 745
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 746
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x13

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 747
    return-void
.end method

.method public removeSubject()V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 130
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 131
    return-void
.end method

.method public removeTemplate()V
    .locals 3

    .line 273
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 274
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 275
    return-void
.end method

.method public removeThumbnail()V
    .locals 3

    .line 656
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 657
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x11

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 658
    return-void
.end method

.method public removeTitle()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 94
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 95
    return-void
.end method

.method public removeWordCount()V
    .locals 3

    .line 575
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 576
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hpsf/MutableSection;->removeProperty(J)V

    .line 577
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 681
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 682
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 683
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 2
    .param p1, "author"    # Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 155
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 156
    return-void
.end method

.method public setCharCount(I)V
    .locals 2
    .param p1, "charCount"    # I

    .line 601
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 602
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 603
    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 2
    .param p1, "comments"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 227
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 228
    return-void
.end method

.method public setCreateDateTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "createDateTime"    # Ljava/util/Date;

    .line 450
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 451
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xc

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 453
    return-void
.end method

.method public setEditTime(J)V
    .locals 5
    .param p1, "time"    # J

    .line 376
    invoke-static {p1, p2}, Lorg/apache/poi/hpsf/Util;->filetimeToDate(J)Ljava/util/Date;

    move-result-object v0

    .line 377
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/MutableSection;

    .line 378
    .local v1, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v2, 0xa

    const-wide/16 v3, 0x40

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 379
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2
    .param p1, "keywords"    # Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 191
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method public setLastAuthor(Ljava/lang/String;)V
    .locals 2
    .param p1, "lastAuthor"    # Ljava/lang/String;

    .line 298
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 299
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 300
    return-void
.end method

.method public setLastPrinted(Ljava/util/Date;)V
    .locals 4
    .param p1, "lastPrinted"    # Ljava/util/Date;

    .line 413
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 414
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xb

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 416
    return-void
.end method

.method public setLastSaveDateTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .line 487
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 488
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xd

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 491
    return-void
.end method

.method public setPageCount(I)V
    .locals 2
    .param p1, "pageCount"    # I

    .line 527
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 528
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 529
    return-void
.end method

.method public setRevNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "revNumber"    # Ljava/lang/String;

    .line 334
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 335
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 336
    return-void
.end method

.method public setSecurity(I)V
    .locals 2
    .param p1, "security"    # I

    .line 734
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 735
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 736
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 119
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 2
    .param p1, "template"    # Ljava/lang/String;

    .line 262
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 263
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 264
    return-void
.end method

.method public setThumbnail([B)V
    .locals 4
    .param p1, "thumbnail"    # [B

    .line 644
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 645
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0x11

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(IJLjava/lang/Object;)V

    .line 647
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 83
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(ILjava/lang/String;)V

    .line 84
    return-void
.end method

.method public setWordCount(I)V
    .locals 2
    .param p1, "wordCount"    # I

    .line 564
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/SummaryInformation;->getFirstSection()Lorg/apache/poi/hpsf/Section;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/MutableSection;

    .line 565
    .local v0, "s":Lorg/apache/poi/hpsf/MutableSection;
    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hpsf/MutableSection;->setProperty(II)V

    .line 566
    return-void
.end method
