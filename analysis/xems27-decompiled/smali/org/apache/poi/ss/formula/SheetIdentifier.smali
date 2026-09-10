.class public Lorg/apache/poi/ss/formula/SheetIdentifier;
.super Ljava/lang/Object;
.source "SheetIdentifier.java"


# instance fields
.field public _bookName:Ljava/lang/String;

.field public _sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V
    .locals 0
    .param p1, "bookName"    # Ljava/lang/String;
    .param p2, "sheetIdentifier"    # Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 27
    return-void
.end method


# virtual methods
.method public asFormulaString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString(Ljava/lang/StringBuffer;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected asFormulaString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 35
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->isQuoted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :goto_0
    return-void
.end method

.method public getBookName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_bookName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetIdentifier;->_sheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString(Ljava/lang/StringBuffer;)V

    .line 54
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
