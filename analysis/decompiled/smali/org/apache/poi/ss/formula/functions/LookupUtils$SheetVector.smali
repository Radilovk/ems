.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;
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
    name = "SheetVector"
.end annotation


# instance fields
.field private final _re:Lorg/apache/poi/ss/formula/eval/RefEval;

.field private final _size:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V
    .locals 1
    .param p1, "re"    # Lorg/apache/poi/ss/formula/eval/RefEval;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    .line 113
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 114
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 117
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    if-lt p1, v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is outside the allowed range (0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    add-int v0, v1, p1

    .line 122
    .local v0, "sheetIndex":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    return v0
.end method
