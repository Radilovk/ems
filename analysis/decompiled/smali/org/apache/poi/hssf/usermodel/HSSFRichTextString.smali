.class public final Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;
.super Ljava/lang/Object;
.source "HSSFRichTextString.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/poi/ss/usermodel/RichTextString;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;",
        ">;",
        "Lorg/apache/poi/ss/usermodel/RichTextString;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NO_FONT:S


# instance fields
.field private _book:Lorg/apache/poi/hssf/model/InternalWorkbook;

.field private _record:Lorg/apache/poi/hssf/record/LabelSSTRecord;

.field private _string:Lorg/apache/poi/hssf/record/common/UnicodeString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;
    .param p2, "record"    # Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V

    .line 93
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->getSSTIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 94
    return-void
.end method

.method private addToSSTIfRequired()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->addSSTString(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    .line 118
    .local v0, "index":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_record:Lorg/apache/poi/hssf/record/LabelSSTRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/LabelSSTRecord;->setSSTIndex(I)V

    .line 121
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSSTString(I)Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 123
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private cloneStringIfRequired()Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    if-nez v1, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 112
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 112
    .local v0, "s":Lorg/apache/poi/hssf/record/common/UnicodeString;
    goto :goto_0
.end method


# virtual methods
.method public applyFont(IILorg/apache/poi/ss/usermodel/Font;)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .prologue
    .line 177
    check-cast p3, Lorg/apache/poi/hssf/usermodel/HSSFFont;

    .end local p3    # "font":Lorg/apache/poi/ss/usermodel/Font;
    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFFont;->getIndex()S

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(IIS)V

    .line 178
    return-void
.end method

.method public applyFont(IIS)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "fontIndex"    # S

    .prologue
    .line 135
    if-le p1, p2, :cond_0

    .line 136
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Start index must be less than end index."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v3

    if-le p2, v3, :cond_2

    .line 138
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Start and end index not in range."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_2
    if-ne p1, p2, :cond_3

    .line 166
    :goto_0
    return-void

    .line 144
    :cond_3
    const/4 v0, 0x0

    .line 145
    .local v0, "currentFont":S
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v3

    if-eq p2, v3, :cond_4

    .line 146
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getFontAtIndex(I)S

    move-result v0

    .line 150
    :cond_4
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->cloneStringIfRequired()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 151
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/common/UnicodeString;->formatIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "formatting":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;>;"
    if-eqz v1, :cond_6

    .line 153
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    .line 155
    .local v2, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->getCharacterPos()S

    move-result v3

    if-lt v3, p1, :cond_5

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->getCharacterPos()S

    move-result v3

    if-ge v3, p2, :cond_5

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 161
    .end local v2    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_6
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    new-instance v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    int-to-short v5, p1

    invoke-direct {v4, v5, p3}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(SS)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/common/UnicodeString;->addFormatRun(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)V

    .line 162
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->length()I

    move-result v3

    if-eq p2, v3, :cond_7

    .line 163
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    new-instance v4, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    int-to-short v5, p2

    invoke-direct {v4, v5, v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;-><init>(SS)V

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/common/UnicodeString;->addFormatRun(Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;)V

    .line 165
    :cond_7
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->addToSSTIfRequired()V

    goto :goto_0
.end method

.method public applyFont(Lorg/apache/poi/ss/usermodel/Font;)V
    .locals 2
    .param p1, "font"    # Lorg/apache/poi/ss/usermodel/Font;

    .prologue
    .line 186
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(IILorg/apache/poi/ss/usermodel/Font;)V

    .line 187
    return-void
.end method

.method public applyFont(S)V
    .locals 2
    .param p1, "fontIndex"    # S

    .prologue
    .line 336
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->applyFont(IIS)V

    .line 337
    return-void
.end method

.method public clearFormatting()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->cloneStringIfRequired()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 194
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->clearFormatting()V

    .line 195
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->addToSSTIfRequired()V

    .line 196
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->compareTo(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;)I
    .locals 2
    .param p1, "r"    # Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->compareTo(Lorg/apache/poi/hssf/record/common/UnicodeString;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 307
    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFontAtIndex(I)S
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 249
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getFormatRunCount()I

    move-result v3

    .line 250
    .local v3, "size":I
    const/4 v0, 0x0

    .line 251
    .local v0, "currentRun":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 252
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v4, v1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getFormatRun(I)Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    move-result-object v2

    .line 253
    .local v2, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->getCharacterPos()S

    move-result v4

    if-le v4, p1, :cond_1

    .line 258
    .end local v2    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_0
    if-nez v0, :cond_2

    .line 259
    const/4 v4, 0x0

    .line 261
    :goto_1
    return v4

    .line 256
    .restart local v2    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_1
    move-object v0, v2

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->getFontIndex()S

    move-result v4

    goto :goto_1
.end method

.method public getFontOfFormattingRun(I)S
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 294
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getFormatRun(I)Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    move-result-object v0

    .line 295
    .local v0, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->getFontIndex()S

    move-result v1

    return v1
.end method

.method public getIndexOfFormattingRun(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getFormatRun(I)Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;

    move-result-object v0

    .line 283
    .local v0, "r":Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString$FormatRun;->getCharacterPos()S

    move-result v1

    return v1
.end method

.method getRawUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUnicodeString()Lorg/apache/poi/hssf/record/common/UnicodeString;
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->cloneStringIfRequired()Lorg/apache/poi/hssf/record/common/UnicodeString;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 316
    sget-boolean v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 317
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getCharCount()I

    move-result v0

    return v0
.end method

.method public numFormattingRuns()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->getFormatRunCount()I

    move-result v0

    return v0
.end method

.method setUnicodeString(Lorg/apache/poi/hssf/record/common/UnicodeString;)V
    .locals 0
    .param p1, "str"    # Lorg/apache/poi/hssf/record/common/UnicodeString;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 229
    return-void
.end method

.method setWorkbookReferences(Lorg/apache/poi/hssf/model/InternalWorkbook;Lorg/apache/poi/hssf/record/LabelSSTRecord;)V
    .locals 0
    .param p1, "book"    # Lorg/apache/poi/hssf/model/InternalWorkbook;
    .param p2, "record"    # Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 101
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_record:Lorg/apache/poi/hssf/record/LabelSSTRecord;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->_string:Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/common/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
