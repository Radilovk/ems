.class public Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
.super Ljava/lang/Object;
.source "HSSFHyperlink.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Hyperlink;


# static fields
.field public static final LINK_DOCUMENT:I = 0x2

.field public static final LINK_EMAIL:I = 0x3

.field public static final LINK_FILE:I = 0x4

.field public static final LINK_URL:I = 0x1


# instance fields
.field protected link_type:I

.field protected record:Lorg/apache/poi/hssf/record/HyperlinkRecord;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 64
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:I

    .line 65
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 66
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newFileLink()V

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newDocumentLink()V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->newUrlLink()V

    .line 70
    nop

    .line 78
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V
    .locals 2
    .param p1, "record"    # Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 87
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    .line 90
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->isFileLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:I

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->isDocumentLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:I

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:I

    goto :goto_0

    .line 99
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:I

    .line 102
    :goto_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLastColumn()I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLastRow()I

    move-result v0

    return v0
.end method

.method public getShortFilename()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getShortFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextMark()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getTextMark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 241
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->link_type:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setFirstColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 155
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setFirstColumn(I)V

    .line 156
    return-void
.end method

.method public setFirstRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 119
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setFirstRow(I)V

    .line 120
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setLastColumn(I)V
    .locals 2
    .param p1, "col"    # I

    .line 173
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLastColumn(I)V

    .line 174
    return-void
.end method

.method public setLastRow(I)V
    .locals 1
    .param p1, "row"    # I

    .line 137
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLastRow(I)V

    .line 138
    return-void
.end method

.method public setShortFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "shortFilename"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setShortFilename(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setTextMark(Ljava/lang/String;)V
    .locals 1
    .param p1, "textMark"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setTextMark(Ljava/lang/String;)V

    .line 195
    return-void
.end method
