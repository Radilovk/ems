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

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v0
.end method

.method private getSheetExtIx(Lorg/apache/poi/ss/formula/SheetIdentifier;)I
    .locals 6
    .param p1, "sheetIden"    # Lorg/apache/poi/ss/formula/SheetIdentifier;

    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, -0x1

    .local v0, "extIx":I
    goto :goto_0

    .line 239
    .end local v0    # "extIx":I
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getBookName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "workbookName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "firstSheetName":Ljava/lang/String;
    move-object v2, v1

    .line 243
    .local v2, "lastSheetName":Ljava/lang/String;
    instance-of v3, p1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    if-eqz v3, :cond_1

    .line 244
    move-object v3, p1

    check-cast v3, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;->getLastSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_1
    if-nez v0, :cond_2

    .line 248
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v3

    .line 249
    .local v3, "firstSheetIndex":I
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v4, v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 250
    .local v4, "lastSheetIndex":I
    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v5, v3, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(II)S

    move-result v3

    .line 251
    .end local v4    # "lastSheetIndex":I
    .local v3, "extIx":I
    move v0, v3

    goto :goto_0

    .line 252
    .end local v3    # "extIx":I
    :cond_2
    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v3, v0, v1, v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 255
    .end local v1    # "firstSheetName":Ljava/lang/String;
    .end local v2    # "lastSheetName":Ljava/lang/String;
    .local v0, "extIx":I
    :goto_0
    return v0
.end method


# virtual methods
.method public convertFromExternSheetIndex(I)I
    .locals 1
    .param p1, "externSheetIndex"    # I

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

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-style external names are not supported for HSSF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 7
    .param p1, "externSheetIndex"    # I

    .line 125
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    .line 126
    .local v0, "sheet":Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    if-nez v0, :cond_3

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->convertFromExternSheetIndex(I)I

    move-result v1

    .line 129
    .local v1, "localSheetIndex":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 131
    return-object v3

    .line 133
    :cond_0
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 135
    return-object v3

    .line 139
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "sheetName":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v4, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getLastSheetIndexFromExternSheetIndex(I)I

    move-result v4

    .line 143
    .local v4, "lastLocalSheetIndex":I
    if-ne v4, v1, :cond_2

    .line 144
    new-instance v5, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    invoke-direct {v5, v3, v2}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "lastSheetName":Ljava/lang/String;
    new-instance v6, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-direct {v6, v3, v2, v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 150
    .end local v1    # "localSheetIndex":I
    .end local v2    # "sheetName":Ljava/lang/String;
    .end local v4    # "lastLocalSheetIndex":I
    .end local v5    # "lastSheetName":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
    .locals 2
    .param p1, "firstSheetName"    # Ljava/lang/String;
    .param p2, "lastSheetName"    # Ljava/lang/String;
    .param p3, "externalWorkbookNumber"    # I

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-style external references are not supported for HSSF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

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

    .line 71
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExternalSheetIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p1, "evalCell"    # Lorg/apache/poi/ss/formula/EvaluationCell;

    .line 184
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->getHSSFCell()Lorg/apache/poi/hssf/usermodel/HSSFCell;

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
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sheetIndex"    # I

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNumNames()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

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

    return-object v2

    .line 95
    .end local v1    # "nr":Lorg/apache/poi/hssf/record/NameRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getName(Lorg/apache/poi/ss/formula/ptg/NamePtg;)Lorg/apache/poi/ss/formula/EvaluationName;
    .locals 3
    .param p1, "namePtg"    # Lorg/apache/poi/ss/formula/ptg/NamePtg;

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

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    move-result-object v0

    return-object v0
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2
    .param p1, "sheetIndex"    # I

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

    .line 169
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetFirstNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 2
    .param p1, "evalSheet"    # Lorg/apache/poi/ss/formula/EvaluationSheet;

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;->getHSSFSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

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

    .line 172
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_iBook:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findSheetLastNameFromExternSheet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sheetIndex"    # I

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;
    .locals 1

    .line 259
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-object v0
.end method

.method public getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getUDFFinder()Lorg/apache/poi/ss/formula/udf/UDFFinder;

    move-result-object v0

    return-object v0
.end method

.method public resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # Lorg/apache/poi/ss/formula/ptg/NameXPtg;

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
