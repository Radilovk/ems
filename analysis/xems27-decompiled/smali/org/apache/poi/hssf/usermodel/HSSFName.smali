.class public final Lorg/apache/poi/hssf/usermodel/HSSFName;
.super Ljava/lang/Object;
.source "HSSFName.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# instance fields
.field private _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private _commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

.field private _definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "name"    # Lorg/apache/poi/hssf/record/NameRecord;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFName;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/record/NameRecord;Lorg/apache/poi/hssf/record/NameCommentRecord;)V
    .locals 0
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .param p2, "name"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p3, "comment"    # Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 59
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    .line 60
    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    .line 61
    return-void
.end method

.method private static validateName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "c":C
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 164
    return-void

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'; Names must begin with a letter or underscore and not contain spaces"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    .end local v0    # "c":C
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot be blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getCommentText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 194
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 196
    const/4 v1, 0x0

    return-object v1

    .line 198
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 191
    .end local v0    # "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only applicable to named ranges"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSheetIndex()I
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getExternSheetNumber()I

    move-result v0

    .line 69
    .local v0, "indexToExternSheet":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDeleted()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 215
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->doesFormulaReferToDeletedCell([Lorg/apache/poi/ss/formula/ptg/Ptg;)Z

    move-result v1

    return v1
.end method

.method public isFunctionName()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setDescriptionText(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->setCommentText(Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method public setFunction(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 298
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setFunction(Z)V

    .line 299
    return-void
.end method

.method setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 1
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 209
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 210
    return-void
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 8
    .param p1, "nameName"    # Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->validateName(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    .line 132
    .local v0, "wb":Lorg/apache/poi/hssf/model/InternalWorkbook;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/NameRecord;->setNameText(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v1

    .line 137
    .local v1, "sheetNumber":I
    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 139
    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v3

    .line 140
    .local v3, "rec":Lorg/apache/poi/hssf/record/NameRecord;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    if-eq v3, v4, :cond_1

    .line 141
    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v5, "workbook"

    goto :goto_1

    :cond_0
    const-string v5, "sheet"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already contains this name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "msg":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(2)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/hssf/record/NameRecord;->setNameText(Ljava/lang/String;)V

    .line 144
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    .end local v3    # "rec":Lorg/apache/poi/hssf/record/NameRecord;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/NameCommentRecord;->getNameText()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "oldName":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v3, p1}, Lorg/apache/poi/hssf/record/NameCommentRecord;->setNameText(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_commentRec:Lorg/apache/poi/hssf/record/NameCommentRecord;

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNameCommentRecordCache(Lorg/apache/poi/hssf/record/NameCommentRecord;)V

    .line 155
    .end local v2    # "oldName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setRefersToFormula(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 3
    .param p1, "formulaText"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFName;->getSheetIndex()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v0, v2, v1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    .line 186
    .local v0, "ptgs":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 187
    return-void
.end method

.method public setSheetIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 243
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 244
    .local v0, "lastSheetIx":I
    const/4 v1, -0x1

    if-lt p1, v1, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/NameRecord;->setSheetNumber(I)V

    .line 250
    return-void

    .line 245
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sheet index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (0.."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 229
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFName;->_definedNameRec:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
