.class public Lorg/apache/poi/ss/util/SheetBuilder;
.super Ljava/lang/Object;
.source "SheetBuilder.java"


# instance fields
.field private final cells:[[Ljava/lang/Object;

.field private sheetName:Ljava/lang/String;

.field private shouldCreateEmptyCells:Z

.field private final workbook:Lorg/apache/poi/ss/usermodel/Workbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;[[Ljava/lang/Object;)V
    .locals 1
    .param p1, "workbook"    # Lorg/apache/poi/ss/usermodel/Workbook;
    .param p2, "cells"    # [[Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/util/SheetBuilder;->shouldCreateEmptyCells:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/util/SheetBuilder;->sheetName:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/apache/poi/ss/util/SheetBuilder;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    .line 43
    iput-object p2, p0, Lorg/apache/poi/ss/util/SheetBuilder;->cells:[[Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private getFormula(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 156
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFormulaDefinition(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 143
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 144
    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 151
    .end local v0    # "str":Ljava/lang/String;
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 148
    .restart local v0    # "str":Ljava/lang/String;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 140
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, p2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 129
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 130
    .local v0, "doubleValue":D
    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    goto :goto_0

    .line 131
    .end local v0    # "doubleValue":D
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p2, Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 132
    check-cast p2, Ljava/util/Date;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/util/Date;)V

    goto :goto_0

    .line 133
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, p2, Ljava/util/Calendar;

    if-eqz v2, :cond_4

    .line 134
    check-cast p2, Ljava/util/Calendar;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/util/Calendar;)V

    goto :goto_0

    .line 135
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/util/SheetBuilder;->isFormulaDefinition(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/util/SheetBuilder;->getFormula(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellFormula(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public build()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 9

    .prologue
    .line 100
    iget-object v7, p0, Lorg/apache/poi/ss/util/SheetBuilder;->sheetName:Ljava/lang/String;

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/apache/poi/ss/util/SheetBuilder;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v7}, Lorg/apache/poi/ss/usermodel/Workbook;->createSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v6

    .line 101
    .local v6, "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :goto_0
    const/4 v3, 0x0

    .line 102
    .local v3, "currentRow":Lorg/apache/poi/ss/usermodel/Row;
    const/4 v2, 0x0

    .line 104
    .local v2, "currentCell":Lorg/apache/poi/ss/usermodel/Cell;
    const/4 v5, 0x0

    .local v5, "rowIndex":I
    :goto_1
    iget-object v7, p0, Lorg/apache/poi/ss/util/SheetBuilder;->cells:[[Ljava/lang/Object;

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 105
    iget-object v7, p0, Lorg/apache/poi/ss/util/SheetBuilder;->cells:[[Ljava/lang/Object;

    aget-object v4, v7, v5

    .line 106
    .local v4, "rowArray":[Ljava/lang/Object;
    invoke-interface {v6, v5}, Lorg/apache/poi/ss/usermodel/Sheet;->createRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v3

    .line 108
    const/4 v0, 0x0

    .local v0, "cellIndex":I
    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_3

    .line 109
    aget-object v1, v4, v0

    .line 110
    .local v1, "cellValue":Ljava/lang/Object;
    if-nez v1, :cond_0

    iget-boolean v7, p0, Lorg/apache/poi/ss/util/SheetBuilder;->shouldCreateEmptyCells:Z

    if-eqz v7, :cond_1

    .line 111
    :cond_0
    invoke-interface {v3, v0}, Lorg/apache/poi/ss/usermodel/Row;->createCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v2

    .line 112
    invoke-direct {p0, v2, v1}, Lorg/apache/poi/ss/util/SheetBuilder;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Ljava/lang/Object;)V

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    .end local v0    # "cellIndex":I
    .end local v1    # "cellValue":Ljava/lang/Object;
    .end local v2    # "currentCell":Lorg/apache/poi/ss/usermodel/Cell;
    .end local v3    # "currentRow":Lorg/apache/poi/ss/usermodel/Row;
    .end local v4    # "rowArray":[Ljava/lang/Object;
    .end local v5    # "rowIndex":I
    .end local v6    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :cond_2
    iget-object v7, p0, Lorg/apache/poi/ss/util/SheetBuilder;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    iget-object v8, p0, Lorg/apache/poi/ss/util/SheetBuilder;->sheetName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/Workbook;->createSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v6

    goto :goto_0

    .line 104
    .restart local v0    # "cellIndex":I
    .restart local v2    # "currentCell":Lorg/apache/poi/ss/usermodel/Cell;
    .restart local v3    # "currentRow":Lorg/apache/poi/ss/usermodel/Row;
    .restart local v4    # "rowArray":[Ljava/lang/Object;
    .restart local v5    # "rowIndex":I
    .restart local v6    # "sheet":Lorg/apache/poi/ss/usermodel/Sheet;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 116
    .end local v0    # "cellIndex":I
    .end local v4    # "rowArray":[Ljava/lang/Object;
    :cond_4
    return-object v6
.end method

.method public getCreateEmptyCells()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/apache/poi/ss/util/SheetBuilder;->shouldCreateEmptyCells:Z

    return v0
.end method

.method public setCreateEmptyCells(Z)Lorg/apache/poi/ss/util/SheetBuilder;
    .locals 0
    .param p1, "shouldCreateEmptyCells"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lorg/apache/poi/ss/util/SheetBuilder;->shouldCreateEmptyCells:Z

    .line 66
    return-object p0
.end method

.method public setSheetName(Ljava/lang/String;)Lorg/apache/poi/ss/util/SheetBuilder;
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/poi/ss/util/SheetBuilder;->sheetName:Ljava/lang/String;

    .line 77
    return-object p0
.end method
