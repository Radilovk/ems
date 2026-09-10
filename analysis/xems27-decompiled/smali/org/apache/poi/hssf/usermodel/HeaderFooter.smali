.class public abstract Lorg/apache/poi/hssf/usermodel/HeaderFooter;
.super Ljava/lang/Object;
.source "HeaderFooter.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/HeaderFooter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static date()Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endBold()Ljava/lang/String;
    .locals 1

    .line 242
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endDoubleUnderline()Ljava/lang/String;
    .locals 1

    .line 270
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endUnderline()Ljava/lang/String;
    .locals 1

    .line 256
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static file()Ljava/lang/String;
    .locals 1

    .line 221
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->FILE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static font(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "font"    # Ljava/lang/String;
    .param p1, "style"    # Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fontSize(S)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # S

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numPages()Ljava/lang/String;
    .locals 1

    .line 200
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static page()Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private splitParts()[Ljava/lang/String;
    .locals 13

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->getRawText()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    .line 40
    .local v1, "_left":Ljava/lang/String;
    const-string v2, ""

    .line 41
    .local v2, "_center":Ljava/lang/String;
    const-string v3, ""

    .line 44
    .local v3, "_right":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-le v4, v6, :cond_a

    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x26

    if-eq v4, v8, :cond_0

    .line 47
    move-object v2, v0

    .line 48
    goto/16 :goto_2

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 51
    .local v4, "pos":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x43

    const-string v10, "&R"

    const-string v11, "&L"

    if-eq v8, v9, :cond_7

    const/16 v9, 0x4c

    const-string v12, "&C"

    if-eq v8, v9, :cond_4

    const/16 v9, 0x52

    if-eq v8, v9, :cond_1

    .line 84
    move-object v2, v0

    .line 85
    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 74
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 76
    :cond_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 77
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 79
    :cond_3
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 54
    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 56
    :cond_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 57
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 59
    :cond_6
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    goto :goto_1

    .line 63
    :cond_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_8

    .line 64
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 66
    :cond_8
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_9

    .line 67
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 69
    :cond_9
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    nop

    .line 87
    .end local v4    # "pos":I
    :goto_1
    goto/16 :goto_0

    .line 88
    :cond_a
    :goto_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    return-object v4
.end method

.method public static startBold()Ljava/lang/String;
    .locals 1

    .line 235
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startDoubleUnderline()Ljava/lang/String;
    .locals 1

    .line 263
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startUnderline()Ljava/lang/String;
    .locals 1

    .line 249
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pText"    # Ljava/lang/String;

    .line 282
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 286
    :cond_0
    move-object v0, p0

    .line 289
    .local v0, "text":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->values()[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    move-result-object v1

    .local v1, "arr$":[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 290
    .local v4, "mt":Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    invoke-virtual {v4}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "seq":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v7, v6

    .local v7, "pos":I
    const/4 v8, -0x1

    if-le v6, v8, :cond_1

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 289
    .end local v4    # "mt":Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .end local v5    # "seq":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "arr$":[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v7    # "pos":I
    :cond_2
    const-string v1, "\\&\\d+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "\\&\".*?,.*?\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0

    .line 283
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p0
.end method

.method public static tab()Ljava/lang/String;
    .locals 1

    .line 228
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static time()Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateHeaderFooterText([Ljava/lang/String;)V
    .locals 5
    .param p1, "parts"    # [Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 144
    .local v0, "_left":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, p1, v1

    .line 145
    .local v2, "_center":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, p1, v3

    .line 147
    .local v3, "_right":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 148
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->setHeaderFooterText(Ljava/lang/String;)V

    .line 149
    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "&C"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v4, "&L"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v4, "&R"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->setHeaderFooterText(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private updatePart(ILjava/lang/String;)V
    .locals 2
    .param p1, "partIndex"    # I
    .param p2, "newValue"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "parts":[Ljava/lang/String;
    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    aput-object v1, v0, p1

    .line 136
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updateHeaderFooterText([Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final getCenter()Ljava/lang/String;
    .locals 2

    .line 109
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLeft()Ljava/lang/String;
    .locals 2

    .line 95
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract getRawText()Ljava/lang/String;
.end method

.method public final getRight()Ljava/lang/String;
    .locals 2

    .line 123
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setCenter(Ljava/lang/String;)V
    .locals 1
    .param p1, "newCenter"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method protected abstract setHeaderFooterText(Ljava/lang/String;)V
.end method

.method public final setLeft(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLeft"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public final setRight(Ljava/lang/String;)V
    .locals 1
    .param p1, "newRight"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    .line 131
    return-void
.end method
