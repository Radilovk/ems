.class public final Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
.super Ljava/lang/Object;
.source "FormulaUsedBlankCellSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BookSheetKey"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _bookIndex:I

.field private final _sheetIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    .line 40
    iput p2, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 46
    sget-boolean v1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "these private cache key instances are only compared to themselves"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 47
    check-cast v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    .line 48
    .local v0, "other":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    add-int/2addr v0, v1

    return v0
.end method
