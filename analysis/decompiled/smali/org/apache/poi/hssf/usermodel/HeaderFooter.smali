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

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static date()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DATE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endBold()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endDoubleUnderline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static endUnderline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static file()Ljava/lang/String;
    .locals 1

    .prologue
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

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fontSize(S)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # S

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numPages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->NUM_PAGES_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static page()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->PAGE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private splitParts()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 37
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->getRawText()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "text":Ljava/lang/String;
    const-string v1, ""

    .line 40
    .local v1, "_left":Ljava/lang/String;
    const-string v0, ""

    .line 41
    .local v0, "_center":Ljava/lang/String;
    const-string v2, ""

    .line 44
    .local v2, "_right":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 45
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x26

    if-eq v5, v6, :cond_1

    .line 47
    move-object v0, v4

    .line 88
    :cond_0
    :goto_1
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v9

    aput-object v0, v5, v8

    aput-object v2, v5, v7

    return-object v5

    .line 50
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 51
    .local v3, "pos":I
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 84
    move-object v0, v4

    .line 85
    goto :goto_1

    .line 53
    :sswitch_0
    const-string v5, "&C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 54
    const-string v5, "&C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 56
    :cond_2
    const-string v5, "&R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 57
    const-string v5, "&R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 59
    :cond_3
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    goto :goto_0

    .line 63
    :sswitch_1
    const-string v5, "&L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 64
    const-string v5, "&L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 66
    :cond_4
    const-string v5, "&R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 67
    const-string v5, "&R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 69
    :cond_5
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    goto :goto_0

    .line 73
    :sswitch_2
    const-string v5, "&C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 74
    const-string v5, "&C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 76
    :cond_6
    const-string v5, "&L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7

    .line 77
    const-string v5, "&L"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 79
    :cond_7
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    goto/16 :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x4c -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public static startBold()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->BOLD_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startDoubleUnderline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->DOUBLE_UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startUnderline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->UNDERLINE_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pText"    # Ljava/lang/String;

    .prologue
    .line 282
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v6, p0

    .line 302
    :goto_0
    return-object v6

    .line 286
    :cond_1
    move-object v6, p0

    .line 289
    .local v6, "text":Ljava/lang/String;
    invoke-static {}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->values()[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 290
    .local v3, "mt":Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "seq":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "pos":I
    const/4 v7, -0x1

    if-le v4, v7, :cond_2

    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 289
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    .end local v3    # "mt":Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;
    .end local v4    # "pos":I
    .end local v5    # "seq":Ljava/lang/String;
    :cond_3
    const-string v7, "\\&\\d+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    const-string v7, "\\&\".*?,.*?\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    goto :goto_0
.end method

.method public static tab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->SHEET_NAME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->TIME_FIELD:Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter$MarkupTag;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateHeaderFooterText([Ljava/lang/String;)V
    .locals 7
    .param p1, "parts"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 143
    const/4 v5, 0x0

    aget-object v1, p1, v5

    .line 144
    .local v1, "_left":Ljava/lang/String;
    aget-object v0, p1, v6

    .line 145
    .local v0, "_center":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v2, p1, v5

    .line 147
    .local v2, "_right":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_0

    .line 148
    const-string v5, ""

    invoke-virtual {p0, v5}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->setHeaderFooterText(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 152
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "&C"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v5, "&L"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v5, "&R"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->setHeaderFooterText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePart(ILjava/lang/String;)V
    .locals 1
    .param p1, "partIndex"    # I
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "parts":[Ljava/lang/String;
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2    # "newValue":Ljava/lang/String;
    :cond_0
    aput-object p2, v0, p1

    .line 136
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updateHeaderFooterText([Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final getCenter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->splitParts()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getLeft()Ljava/lang/String;
    .locals 2

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public final setRight(Ljava/lang/String;)V
    .locals 1
    .param p1, "newRight"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HeaderFooter;->updatePart(ILjava/lang/String;)V

    .line 131
    return-void
.end method
