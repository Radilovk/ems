.class final Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
.source "XYNumericFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleCellValueArray"
.end annotation


# instance fields
.field private final _value:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 1
    .param p1, "value"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;-><init>(I)V

    .line 55
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 56
    return-void
.end method


# virtual methods
.method protected getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1
    .param p1, "index"    # I

    .line 58
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-object v0
.end method
