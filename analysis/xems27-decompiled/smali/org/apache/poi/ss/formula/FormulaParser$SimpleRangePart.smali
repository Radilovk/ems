.class final Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
.super Ljava/lang/Object;
.source "FormulaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/FormulaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleRangePart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;
    }
.end annotation


# instance fields
.field private final _rep:Ljava/lang/String;

.field private final _type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "rep"    # Ljava/lang/String;
    .param p2, "hasLetters"    # Z
    .param p3, "hasNumbers"    # Z

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    .line 723
    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->get(ZZ)Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    .line 724
    return-void
.end method


# virtual methods
.method public getCellReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 2

    .line 735
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->CELL:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    .line 738
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not applicable to this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRep()Ljava/lang/String;
    .locals 1

    .line 750
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    return-object v0
.end method

.method public isCell()Z
    .locals 2

    .line 727
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->CELL:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isColumn()Z
    .locals 2

    .line 742
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->COLUMN:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z
    .locals 2
    .param p1, "part2"    # Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 759
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    iget-object v1, p1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRow()Z
    .locals 2

    .line 746
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->ROW:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRowOrColumn()Z
    .locals 2

    .line 731
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_type:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;->CELL:Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 765
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->_rep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
