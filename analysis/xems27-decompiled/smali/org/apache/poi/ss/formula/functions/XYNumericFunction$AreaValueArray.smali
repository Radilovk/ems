.class final Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
.source "XYNumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AreaValueArray"
.end annotation


# instance fields
.field private final _ae:Lorg/apache/poi/ss/formula/TwoDEval;

.field private final _width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/TwoDEval;)V
    .locals 2
    .param p1, "ae"    # Lorg/apache/poi/ss/formula/TwoDEval;

    .line 82
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;-><init>(I)V

    .line 83
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;->_ae:Lorg/apache/poi/ss/formula/TwoDEval;

    .line 84
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;->_width:I

    .line 85
    return-void
.end method


# virtual methods
.method protected getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "index"    # I

    .line 87
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;->_width:I

    div-int v1, p1, v0

    .line 88
    .local v1, "rowIx":I
    rem-int v0, p1, v0

    .line 89
    .local v0, "colIx":I
    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;->_ae:Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-interface {v2, v1, v0}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    return-object v2
.end method
