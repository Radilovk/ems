.class public Lorg/apache/poi/ss/formula/SheetRangeIdentifier;
.super Lorg/apache/poi/ss/formula/SheetIdentifier;
.source "SheetRangeIdentifier.java"


# instance fields
.field public _lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Lorg/apache/poi/ss/formula/NameIdentifier;)V
    .locals 0
    .param p1, "bookName"    # Ljava/lang/String;
    .param p2, "firstSheetIdentifier"    # Lorg/apache/poi/ss/formula/NameIdentifier;
    .param p3, "lastSheetIdentifier"    # Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 24
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    .line 25
    iput-object p3, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 26
    return-void
.end method


# virtual methods
.method protected asFormulaString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 34
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString(Ljava/lang/StringBuffer;)V

    .line 35
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->isQuoted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :goto_0
    return-void
.end method

.method public getFirstSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;
    .locals 1

    .line 28
    invoke-super {p0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->_lastSheetIdentifier:Lorg/apache/poi/ss/formula/NameIdentifier;

    return-object v0
.end method
