.class public interface abstract Lorg/apache/poi/ss/formula/eval/RefEval;
.super Ljava/lang/Object;
.source "RefEval.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;
.implements Lorg/apache/poi/ss/formula/SheetRange;


# virtual methods
.method public abstract getColumn()I
.end method

.method public abstract getFirstSheetIndex()I
.end method

.method public abstract getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public abstract getLastSheetIndex()I
.end method

.method public abstract getNumberOfSheets()I
.end method

.method public abstract getRow()I
.end method

.method public abstract offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
.end method
