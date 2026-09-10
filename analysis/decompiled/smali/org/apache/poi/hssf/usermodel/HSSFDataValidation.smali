.class public final Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;
.super Ljava/lang/Object;
.source "HSSFDataValidation.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/DataValidation;


# instance fields
.field private _constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

.field private _emptyCellAllowed:Z

.field private _errorStyle:I

.field private _error_text:Ljava/lang/String;

.field private _error_title:Ljava/lang/String;

.field private _prompt_text:Ljava/lang/String;

.field private _prompt_title:Ljava/lang/String;

.field private _regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

.field private _showErrorBox:Z

.field private _showPromptBox:Z

.field private _suppress_dropdown_arrow:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/util/CellRangeAddressList;Lorg/apache/poi/ss/usermodel/DataValidationConstraint;)V
    .locals 2
    .param p1, "regions"    # Lorg/apache/poi/ss/util/CellRangeAddressList;
    .param p2, "constraint"    # Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    .line 37
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    .line 38
    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_suppress_dropdown_arrow:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    .line 50
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 53
    check-cast p2, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .end local p2    # "constraint":Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 54
    return-void
.end method


# virtual methods
.method public createDVRecord(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/DVRecord;
    .locals 18
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createFormulas(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;

    move-result-object v17

    .line 197
    .local v17, "fp":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
    new-instance v1, Lorg/apache/poi/hssf/record/DVRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getValidationType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getOperator()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->getSuppressDropDownArrow()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getValidationType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_text:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v14

    invoke-virtual/range {v17 .. v17}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(IIIZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellRangeAddressList;)V

    return-object v1

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public createErrorBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_title:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_text:Ljava/lang/String;

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setShowErrorBox(Z)V

    .line 177
    return-void
.end method

.method public createPromptBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_title:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_text:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->setShowPromptBox(Z)V

    .line 154
    return-void
.end method

.method public getConstraint()Lorg/apache/poi/hssf/usermodel/DVConstraint;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    return-object v0
.end method

.method public getEmptyCellAllowed()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    return v0
.end method

.method public getErrorBoxText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_text:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorBoxTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_title:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStyle()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    return v0
.end method

.method public getPromptBoxText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_text:Ljava/lang/String;

    return-object v0
.end method

.method public getPromptBoxTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_title:Ljava/lang/String;

    return-object v0
.end method

.method public getRegions()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object v0
.end method

.method public getShowErrorBox()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    return v0
.end method

.method public getShowPromptBox()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    return v0
.end method

.method public getSuppressDropDownArrow()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getValidationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 113
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_suppress_dropdown_arrow:Z

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    return-object v0
.end method

.method public setEmptyCellAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    .line 92
    return-void
.end method

.method public setErrorStyle(I)V
    .locals 0
    .param p1, "error_style"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    .line 78
    return-void
.end method

.method public setShowErrorBox(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    .line 137
    return-void
.end method

.method public setShowPromptBox(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    .line 123
    return-void
.end method

.method public setSuppressDropDownArrow(Z)V
    .locals 0
    .param p1, "suppress"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_suppress_dropdown_arrow:Z

    .line 106
    return-void
.end method
