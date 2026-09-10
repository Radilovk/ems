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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    .line 38
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_suppress_dropdown_arrow:Z

    .line 39
    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    .line 40
    iput-boolean v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    .line 50
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    .line 53
    move-object v0, p2

    check-cast v0, Lorg/apache/poi/hssf/usermodel/DVConstraint;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    .line 54
    return-void
.end method


# virtual methods
.method public createDVRecord(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/DVRecord;
    .locals 20
    .param p1, "sheet"    # Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->createFormulas(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;

    move-result-object v1

    .line 197
    .local v1, "fp":Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
    new-instance v19, Lorg/apache/poi/hssf/record/DVRecord;

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getValidationType()I

    move-result v4

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getOperator()I

    move-result v5

    iget v6, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    iget-boolean v7, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->getSuppressDropDownArrow()Z

    move-result v8

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getValidationType()I

    move-result v3

    const/4 v9, 0x3

    if-ne v3, v9, :cond_0

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-boolean v10, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    iget-object v11, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_title:Ljava/lang/String;

    iget-object v12, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_text:Ljava/lang/String;

    iget-boolean v13, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    iget-object v14, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_title:Ljava/lang/String;

    iget-object v15, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_text:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v16

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v17

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-object/from16 v18, v3

    move-object/from16 v3, v19

    invoke-direct/range {v3 .. v18}, Lorg/apache/poi/hssf/record/DVRecord;-><init>(IIIZZZZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/util/CellRangeAddressList;)V

    return-object v19
.end method

.method public createErrorBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

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

    .line 65
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    return-object v0
.end method

.method public getEmptyCellAllowed()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    return v0
.end method

.method public getErrorBoxText()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_text:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorBoxTitle()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_error_title:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStyle()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    return v0
.end method

.method public getPromptBoxText()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_text:Ljava/lang/String;

    return-object v0
.end method

.method public getPromptBoxTitle()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_prompt_title:Ljava/lang/String;

    return-object v0
.end method

.method public getRegions()Lorg/apache/poi/ss/util/CellRangeAddressList;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_regions:Lorg/apache/poi/ss/util/CellRangeAddressList;

    return-object v0
.end method

.method public getShowErrorBox()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    return v0
.end method

.method public getShowPromptBox()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    return v0
.end method

.method public getSuppressDropDownArrow()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/DVConstraint;->getValidationType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 113
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_suppress_dropdown_arrow:Z

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_constraint:Lorg/apache/poi/hssf/usermodel/DVConstraint;

    return-object v0
.end method

.method public setEmptyCellAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 91
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_emptyCellAllowed:Z

    .line 92
    return-void
.end method

.method public setErrorStyle(I)V
    .locals 0
    .param p1, "error_style"    # I

    .line 77
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_errorStyle:I

    .line 78
    return-void
.end method

.method public setShowErrorBox(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 136
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showErrorBox:Z

    .line 137
    return-void
.end method

.method public setShowPromptBox(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 122
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_showPromptBox:Z

    .line 123
    return-void
.end method

.method public setSuppressDropDownArrow(Z)V
    .locals 0
    .param p1, "suppress"    # Z

    .line 105
    iput-boolean p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->_suppress_dropdown_arrow:Z

    .line 106
    return-void
.end method
