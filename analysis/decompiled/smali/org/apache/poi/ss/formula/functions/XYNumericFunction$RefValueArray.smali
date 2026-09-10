.class final Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
.source "XYNumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefValueArray"
.end annotation


# instance fields
.field private final _ref:Lorg/apache/poi/ss/formula/eval/RefEval;

.field private final _width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V
    .locals 1
    .param p1, "ref"    # Lorg/apache/poi/ss/formula/eval/RefEval;

    .prologue
    .line 67
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;-><init>(I)V

    .line 68
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_ref:Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 69
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_width:I

    .line 70
    return-void
.end method


# virtual methods
.method protected getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 72
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_width:I

    rem-int v1, p1, v1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_ref:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    add-int v0, v1, v2

    .line 73
    .local v0, "sIx":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;->_ref:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1
.end method
