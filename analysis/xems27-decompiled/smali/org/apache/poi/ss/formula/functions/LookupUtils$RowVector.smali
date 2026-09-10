.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;
.super Ljava/lang/Object;
.source "LookupUtils.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowVector"
.end annotation


# instance fields
.field private final _rowIndex:I

.field private final _size:I

.field private final _tableArray:Lorg/apache/poi/ss/formula/TwoDEval;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V
    .locals 4
    .param p1, "tableArray"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p2, "rowIndex"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_rowIndex:I

    .line 57
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 58
    .local v0, "lastRowIx":I
    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 62
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_tableArray:Lorg/apache/poi/ss/formula/TwoDEval;

    .line 63
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_size:I

    .line 64
    return-void

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified row index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is outside the allowed range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "index"    # I

    .line 67
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_size:I

    if-gt p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_tableArray:Lorg/apache/poi/ss/formula/TwoDEval;

    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_rowIndex:I

    invoke-interface {v0, v1, p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is outside the allowed range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_size:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$RowVector;->_size:I

    return v0
.end method
