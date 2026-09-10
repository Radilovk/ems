.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
.super Ljava/lang/Object;
.source "ForkedEvaluationSheet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowColKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final _columnIndex:I

.field private final _rowIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-class v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    .line 110
    iput p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    .line 111
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->compareTo(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;)I
    .locals 3
    .param p1, "o"    # Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    .line 123
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iget v1, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    sub-int/2addr v0, v1

    .line 124
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 125
    return v0

    .line 127
    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    iget v2, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    nop

    .line 115
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    .line 116
    .local v0, "other":Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
    iget v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    iget v2, v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getColumnIndex()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    return v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 120
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    xor-int/2addr v0, v1

    return v0
.end method
