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

    .line 33
    const-class v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "bookIndex"    # I
    .param p2, "sheetIndex"    # I

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

    .line 46
    nop

    .line 47
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    .line 48
    .local v0, "other":Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_bookIndex:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;->_sheetIndex:I

    add-int/2addr v0, v1

    return v0
.end method
