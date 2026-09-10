.class public Lorg/apache/poi/ss/formula/FormulaRenderer;
.super Ljava/lang/Object;
.source "FormulaRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOperands(Ljava/util/Stack;I)[Ljava/lang/String;
    .locals 5
    .param p1, "nOperands"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    new-array v2, p1, [Ljava/lang/String;

    .line 120
    .local v2, "operands":[Ljava/lang/String;
    add-int/lit8 v0, p1, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too few arguments supplied to operation. Expected ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") operands but got ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 120
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    :cond_1
    return-object v2
.end method

.method public static toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;
    .locals 14
    .param p0, "book"    # Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;
    .param p1, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    array-length v11, p1

    if-nez v11, :cond_1

    .line 48
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "ptgs must not be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 50
    :cond_1
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 52
    .local v10, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_9

    aget-object v8, v0, v3

    .line 54
    .local v8, "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    if-nez v11, :cond_2

    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    if-nez v11, :cond_2

    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/MemErrPtg;

    if-eqz v11, :cond_3

    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_3
    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v11, :cond_4

    .line 61
    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, "contents":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 65
    .end local v2    # "contents":Ljava/lang/String;
    :cond_4
    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    if-eqz v11, :cond_6

    move-object v1, v8

    .line 66
    check-cast v1, Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    .line 67
    .local v1, "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedIf()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isOptimizedChoose()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSkip()Z

    move-result v11

    if-nez v11, :cond_2

    .line 70
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSpace()Z

    move-result v11

    if-nez v11, :cond_2

    .line 77
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSemiVolatile()Z

    move-result v11

    if-nez v11, :cond_2

    .line 81
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->isSum()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 82
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getNumberOfOperands()I

    move-result v11

    invoke-static {v10, v11}, Lorg/apache/poi/ss/formula/FormulaRenderer;->getOperands(Ljava/util/Stack;I)[Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "operands":[Ljava/lang/String;
    invoke-virtual {v1, v6}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toFormulaString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    .end local v6    # "operands":[Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected tAttr: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 89
    .end local v1    # "attrPtg":Lorg/apache/poi/ss/formula/ptg/AttrPtg;
    :cond_6
    instance-of v11, v8, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;

    if-eqz v11, :cond_7

    move-object v7, v8

    .line 90
    check-cast v7, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;

    .line 91
    .local v7, "optg":Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
    invoke-interface {v7, p0}, Lorg/apache/poi/ss/formula/WorkbookDependentFormula;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 94
    .end local v7    # "optg":Lorg/apache/poi/ss/formula/WorkbookDependentFormula;
    :cond_7
    instance-of v11, v8, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-nez v11, :cond_8

    .line 95
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    move-object v5, v8

    .line 99
    check-cast v5, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    .line 100
    .local v5, "o":Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->getNumberOfOperands()I

    move-result v11

    invoke-static {v10, v11}, Lorg/apache/poi/ss/formula/FormulaRenderer;->getOperands(Ljava/util/Stack;I)[Ljava/lang/String;

    move-result-object v6

    .line 101
    .restart local v6    # "operands":[Ljava/lang/String;
    invoke-virtual {v5, v6}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->toFormulaString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 103
    .end local v5    # "o":Lorg/apache/poi/ss/formula/ptg/OperationPtg;
    .end local v6    # "operands":[Ljava/lang/String;
    .end local v8    # "ptg":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_9
    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 106
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Stack underflow"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 108
    :cond_a
    invoke-virtual {v10}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 109
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 112
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "too much stuff left on the stack"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 114
    :cond_b
    return-object v9
.end method
