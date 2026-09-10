.class abstract Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
.super Ljava/lang/Object;
.source "XYNumericFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ValueArray"
.end annotation


# instance fields
.field private final _size:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;->_size:I

    .line 37
    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "index"    # I

    .line 39
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;->_size:I

    if-gt p1, v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;->getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is outside range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;->_size:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public final getSize()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;->_size:I

    return v0
.end method
