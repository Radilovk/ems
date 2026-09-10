.class final Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;
.super Ljava/lang/Object;
.source "FormulaUsedBlankCellSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellRectangleGroup;,
        Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;,
        Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    }
.end annotation


# instance fields
.field private final _sheetGroupsByBookSheet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;",
            "Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->_sheetGroupsByBookSheet:Ljava/util/Map;

    .line 165
    return-void
.end method

.method private getSheetGroup(II)Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;
    .locals 3
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I

    .line 173
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;-><init>(II)V

    .line 175
    .local v0, "key":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->_sheetGroupsByBookSheet:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;

    .line 176
    .local v1, "result":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;
    if-nez v1, :cond_0

    .line 177
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;

    invoke-direct {v2}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;-><init>()V

    move-object v1, v2

    .line 178
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->_sheetGroupsByBookSheet:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addCell(IIII)V
    .locals 1
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I
    .param p3, "rowIndex"    # I
    .param p4, "columnIndex"    # I

    .line 168
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->getSheetGroup(II)Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;

    move-result-object v0

    .line 169
    .local v0, "sbcg":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;
    invoke-virtual {v0, p3, p4}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;->addCell(II)V

    .line 170
    return-void
.end method

.method public containsCell(Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;II)Z
    .locals 2
    .param p1, "key"    # Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .line 184
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->_sheetGroupsByBookSheet:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;

    .line 185
    .local v0, "bcsg":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    return v1

    .line 188
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BlankCellSheetGroup;->containsCell(II)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;->_sheetGroupsByBookSheet:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
