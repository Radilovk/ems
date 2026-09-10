.class public final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;
.super Ljava/lang/Object;
.source "HSSFEvaluationWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
.implements Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.implements Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;
    }
.end annotation


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

.field private final _uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1
    .param p1, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .line 63
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    .line 64
    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;
    .locals 1
    .param p0, "book"    # Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    goto :goto_0
.end method

.method private getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I
    .locals 7
    .param p1, "sheetIden"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, -0x1

    .line 255
    .end local p1    # "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    .local v0, "extIx":I
    :goto_0
    return v0

    .line 239
    .end local v0    # "extIx":I
    .restart local p1    # "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "workbookName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "firstSheetName":Ljava/lang/String;
    move-object v4, v2

    .line 243
    .local v4, "lastSheetName":Ljava/lang/String;
    instance-of v6, p1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz v6, :cond_1

    .line 244
    check-cast p1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    .end local p1    # "sheetIden":Lorg/apache/poi/ss/formula/SheetIdentifier;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v4

    .line 247
    :cond_1
    if-nez v5, :cond_2

    .line 248
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v6, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, "firstSheetIndex":I
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v6, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v3

    .line 250
    .local v3, "lastSheetIndex":I
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v1, v3}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(II)S

    move-result v0

    .line 251
    .restart local v0    # "extIx":I
    goto :goto_0

    .line 252
    .end local v0    # "extIx":I
    .end local v1    # "firstSheetIndex":I
    .end local v3    # "lastSheetIndex":I
    :cond_2
    iget-object v6, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v5, v2, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "extIx":I
    goto :goto_0
.end method


# virtual methods
.method public convertFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetIndex"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getFirstSheetIndexFromExternSheetIndex(I)I

    move-result v0

    return v0
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "areaRef"    # Lorg/apache/poi/ss/util/AreaReference;
    .param p2, "sheet"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I

    move-result v0

    .line 80
    .local v0, "extIx":I
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;I)V

    return-object v1
.end method

.method public get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2
    .param p1, "cr"    # Lorg/apache/poi/ss/util/CellReference;
    .param p2, "sheet"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .prologue
    .line 75
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I

    move-result v0

    .line 76
    .local v0, "extIx":I
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v1, p1, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;I)V

    return-object v1
.end method

.method public getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 1
    .param p1, "externSheetIndex"    # I
    .param p2, "externNameIndex"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object v0

    return-object v0
.end method

.method public getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
    .locals 2
    .param p1, "nameName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .prologue
    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-style external names are not supported for HSSF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 8
    .param p1, "externSheetIndex"    # I

    .prologue
    const/4 v6, 0x0

    .line 125
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v3

    .line 126
    .local v3, "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-nez v3, :cond_2

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v2

    .line 129
    .local v2, "localSheetIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    move-object v4, v3

    .line 150
    .end local v2    # "localSheetIndex":I
    .end local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .local v4, "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    :goto_0
    return-object v6

    .line 133
    .end local v4    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v2    # "localSheetIndex":I
    .restart local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    :cond_0
    const/4 v7, -0x2

    if-ne v2, v7, :cond_1

    move-object v4, v3

    .line 135
    .end local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v4    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    goto :goto_0

    .line 139
    .end local v4    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "sheetName":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v7, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getLastSheetIndexFromExternSheetIndex(I)I

    move-result v0

    .line 143
    .local v0, "lastLocalSheetIndex":I
    if-ne v0, v2, :cond_3

    .line 144
    new-instance v3, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    .end local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-direct {v3, v6, v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "lastLocalSheetIndex":I
    .end local v2    # "localSheetIndex":I
    .end local v5    # "sheetName":Ljava/lang/String;
    .restart local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    :cond_2
    :goto_1
    move-object v4, v3

    .end local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v4    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    move-object v6, v3

    .line 150
    goto :goto_0

    .line 146
    .end local v4    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v0    # "lastLocalSheetIndex":I
    .restart local v2    # "localSheetIndex":I
    .restart local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .restart local v5    # "sheetName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "lastSheetName":Ljava/lang/String;
    new-instance v3, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    .end local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    invoke-direct {v3, v6, v5, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    goto :goto_1
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 2
    .param p1, "firstSheetName"    # Ljava/lang/String;
    .param p2, "lastSheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .prologue
    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-style external references are not supported for HSSF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v1

    return v1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p1, "evalCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .prologue
    .line 184
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    .end local p1    # "evalCell":Lorg/apache/poi/ss/formula/EvaluationCell;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->getHSSFCell()Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    .line 198
    .local v0, "cell":Lorg/apache/poi/hssf/usermodel/HSSFCell;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 199
    .local v1, "fra":Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->getFormulaTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    return-object v2
.end method

.method public getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 96
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v1

    .line 97
    .local v1, "nr":Lorg/apache/poi/hssf/record/NameRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getSheetNumber()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;

    invoke-direct {v2, v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    .line 101
    .end local v1    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :goto_1
    return-object v2

    .line 95
    .restart local v1    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_1
    if-ne p2, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v4}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v2

    goto :goto_1
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 3
    .param p1, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .prologue
    .line 178
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result v0

    .line 179
    .local v0, "ix":I
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;-><init>(Lorg/apache/poi/hssf/record/NameRecord;I)V

    return-object v1
.end method

.method public getNameText(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Ljava/lang/String;
    .locals 2
    .param p1, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheet"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .prologue
    .line 83
    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I

    move-result v0

    .line 84
    .local v0, "sheetRefIndex":I
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameXPtg(Ljava/lang/String;ILorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v0

    return-object v0
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2
    .param p1, "sheetIndex"    # I

    .prologue
    .line 117
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getSheetFirstNameByExternSheet(I)Ljava/lang/String;
    .locals 1
    .param p1, "externSheetIndex"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 2
    .param p1, "evalSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .prologue
    .line 105
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    .end local p1    # "evalSheet":Lorg/apache/poi/ss/formula/EvaluationSheet;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->getHSSFSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    .line 106
    .local v0, "sheet":Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    return v1
.end method

.method public getSheetLastNameByExternSheet(I)Ljava/lang/String;
    .locals 1
    .param p1, "externSheetIndex"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetLastNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    return-object v0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->resolveNameXText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
